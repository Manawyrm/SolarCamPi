/*
@brief               embedded controller for solar-powered webcam
@date                2019-05-26
@version             1.00
@author              Tobias Mädel
@license             MIT

@par 2019-05-26 Tobias Mädel Initial version
*/
#include "main.h"
#include "config.h"
#include <SoftWire.h>
#include <Wire.h>
#include "Adafruit_INA219.h"
#include "LowPower.h"

volatile uint8_t state = STATE_ACTIVE; 
uint16_t activeTime = 0; 
uint16_t currentSleepTime = 0; 

// INA220 Init
Adafruit_INA219 ina219;
SoftWire inaWire(AVR_SDA, AVR_SCL);
uint8_t txBuf[20];
uint8_t rxBuf[20];

// RPi I2C Slave
volatile uint8_t i2cRegister;
volatile uint8_t i2cData;

volatile uint8_t writeEEPROM = 0;

#define registers log_data 

void setup()
{
    Serial.begin(9600);

    eeprom_init();
    if (!eeprom_find_log_block())
    {
        Serial.println("Initializing EEPROM");
        log_data  = {
            .voltage = 0,
            .sleepIntervalFast = 50, // 280s
            .sleepIntervalSlow = 225, // 1800s
            .sleepIntervalSlowVoltage = 10000,
            .undervoltageLockout = 7000,
            .undervoltageHysteresis = 7500,
            .disableTimeout = 0,
            .timeout = 120
        };
        eeprom_write_log_block();
    }
    else
    {
        Serial.println("block found!");
    }

    //Serial.print("Timeout: ");
    //Serial.println(registers.timeout);

    //Serial.println("ohai");
    pinMode(RPI_SHDN, INPUT_PULLUP);
    pinMode(AVR_PWR_EN, OUTPUT); 
    pinMode(LED, OUTPUT); 

    setINAState(HIGH);

    inaWire.enablePullups(false);
    inaWire.setTimeout_ms(200);
    inaWire.setClock(10000);
    inaWire.setRxBuffer(rxBuf, sizeof(rxBuf));
    inaWire.setTxBuffer(txBuf, sizeof(txBuf));

    ina219.begin(&inaWire);

    Wire.begin(8);
    Wire.onReceive(handleI2CReceive);
    Wire.onRequest(handleI2CRequest);
    
    attachInterrupt(digitalPinToInterrupt(RPI_SHDN), shutdownSignaled, FALLING);  
}

void loop()
{
    registers.voltage = (ina219.getBusVoltage_V() * 1000.0f);

    if (registers.voltage < registers.undervoltageLockout)
    {
        state = STATE_UNDERVOLTAGE;
    }

    if (writeEEPROM)
    {
        writeEEPROM = 0; 
        if (registers.disableTimeout)
        {
            registers.disableTimeout = 0;
            eeprom_write_log_block();
            while (eeprom_busy());
            registers.disableTimeout = 1;
        }
        else
        {
            Serial.println("eeprom write start");
            eeprom_write_log_block();
            Serial.println("eeprom write end");
        }
    }

    switch (state)
    {
        case STATE_ACTIVE:
            digitalWrite(AVR_PWR_EN, HIGH); 
            digitalWrite(LED, HIGH);
            delay(500);
            if (!registers.disableTimeout)
                activeTime++;

            if (registers.timeout < activeTime)
                state = STATE_SLEEP; 

            break;
        case STATE_SLEEP: 
            registers.disableTimeout = 0; 
            activeTime = 0;

            while (eeprom_busy());

            if (registers.voltage > registers.sleepIntervalSlowVoltage)
            {
                sleep(registers.sleepIntervalFast);
            }
            else
            {
                sleep(registers.sleepIntervalSlow);
            }
        
            state = STATE_ACTIVE;
            break;
        case STATE_UNDERVOLTAGE: 
            if (registers.voltage > registers.undervoltageHysteresis)
            {
                state = STATE_ACTIVE; 
            }
            else
            {
                sleep(registers.sleepIntervalFast);
            }
            break;
    }

}

void shutdownSignaled()
{
    if (state == STATE_ACTIVE)
        state = STATE_SLEEP; 
}

void handleI2CRequest()
{
    Wire.write(((uint8_t*)&registers)[i2cRegister]);
}
void handleI2CReceive(volatile int numBytes)
{
    Wire.write(0x80);
    if (numBytes == 1)
    {
        // i2cget -y 1 0x08 42 c
        i2cRegister = Wire.read();
    }
    if (numBytes == 2)
    {
        // i2cset -y 1 0x08 22 42 b
        i2cRegister = Wire.read();
        i2cData = Wire.read();

       /* Serial.print("Register: "); 
        Serial.println(i2cRegister);
        Serial.print("Data: "); 
        Serial.println(i2cData);*/

        if (sizeof(registers) > i2cRegister)
        {
            ((uint8_t*)&registers)[i2cRegister] = i2cData;
            
            if (i2cRegister != 12) // Disable timeout flag
                writeEEPROM = 1;
        }
    }
    while (Wire.available()>0){Serial.print(Wire.read(), HEX);}
}

void setINAState(bool state = LOW)
{
    //pinMode(AVR_I2C_PULLUP, OUTPUT); 
    pinMode(INA_3V3, OUTPUT);
    //digitalWrite(AVR_I2C_PULLUP, state);
    digitalWrite(INA_3V3, state);
}

void sleep(uint16_t sleepTime)
{
    setINAState(false); 

    digitalWrite(RPI_SHDN, LOW); 
    pinMode(RPI_SHDN, OUTPUT);

    digitalWrite(AVR_PWR_EN, LOW);
    digitalWrite(LED, LOW);

    Wire.end();

    while (currentSleepTime != sleepTime)
    {
        currentSleepTime++;
        LowPower.powerDown(SLEEP_8S, ADC_OFF, BOD_OFF); 
    }
    currentSleepTime = 0;

    pinMode(RPI_SHDN, INPUT_PULLUP);

    setINAState(true); 

    Wire.begin(8);
    Wire.onReceive(handleI2CReceive);
    Wire.onRequest(handleI2CRequest);
}