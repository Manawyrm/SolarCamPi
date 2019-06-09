/*
@brief               embedded controller for solar-powered webcam
@date                2019-05-26
@version             1.00
@author              Tobias Mädel
@license             MIT

@par 2019-05-26 Tobias Mädel Initial version
*/
#include <Arduino.h>
#include "config.h"
#include <SoftWire.h>
#include <EEPROM.h>

#include "Wire/src/Wire.h"
#include "Adafruit_INA219.h"
#include "LowPower.h"

// todo: eeprom
// todo: timeout

// INA220 Init
Adafruit_INA219 ina219;
void setINAState(bool state = LOW);
SoftWire inaWire(AVR_SDA, AVR_SCL);
uint8_t txBuf[20];
uint8_t rxBuf[20];

// RPi I2C Slave
volatile uint8_t i2cRegister;
volatile uint8_t i2cData;
void handleI2CReceive(volatile int numBytes);
void handleI2CRequest();
void sleep(uint16_t sleepTime);
void shutdownSignaled();

struct
{
    uint16_t voltage;
    uint16_t sleepInterval;
    uint16_t undervoltageLockout;
    uint16_t undervoltageHysteresis;
    uint8_t disableTimeout; 
    uint16_t timeout;
} registers = {
    .voltage = 0,
    .sleepInterval = 3,
    .undervoltageLockout = 7000,
    .undervoltageHysteresis = 7500,
    .disableTimeout = 0,
    .timeout = 60
};


void setup()
{
    Serial.begin(9600);

    //Serial.println("ohai");
    pinMode(RPI_SHDN, INPUT_PULLUP);
    pinMode(AVR_PWR_EN, OUTPUT); 

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

enum states { 
    STATE_ACTIVE,
    STATE_SLEEP,
    STATE_UNDERVOLTAGE
};
volatile uint8_t state = STATE_ACTIVE; 

uint16_t activeTime = 0; 

void loop()
{
    registers.voltage = (ina219.getBusVoltage_V() * 1000.0f);

    if (registers.voltage < registers.undervoltageLockout)
    {
        state = STATE_UNDERVOLTAGE;
    }

    switch (state)
    {
        case STATE_ACTIVE:
            digitalWrite(AVR_PWR_EN, HIGH); 
            delay(500);
            if (!registers.disableTimeout)
                activeTime++;

            if (registers.timeout < activeTime)
                state = STATE_SLEEP; 

            break;
        case STATE_SLEEP: 
            registers.disableTimeout = 0; 
            activeTime = 0;
            sleep(registers.sleepInterval);
            state = STATE_ACTIVE;
            break;
        case STATE_UNDERVOLTAGE: 
            if (registers.voltage > registers.undervoltageHysteresis)
            {
                state = STATE_ACTIVE; 
            }
            else
            {
                sleep(registers.sleepInterval);
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
        }
    }
    while (Wire.available()>0){Serial.print(Wire.read(), HEX);}
}

void setINAState(bool state = LOW)
{
    pinMode(AVR_I2C_PULLUP, OUTPUT); 
    pinMode(INA_3V3, OUTPUT);
    digitalWrite(AVR_I2C_PULLUP, state);
    digitalWrite(INA_3V3, state);
}

uint16_t currentSleepTime = 0; 
void sleep(uint16_t sleepTime)
{
    setINAState(false); 

    digitalWrite(RPI_SHDN, LOW); 
    pinMode(RPI_SHDN, OUTPUT);

    digitalWrite(AVR_PWR_EN, LOW);

    while (currentSleepTime != sleepTime)
    {
        currentSleepTime++;
        LowPower.powerDown(SLEEP_1S, ADC_OFF, BOD_OFF); 
    }
    currentSleepTime = 0;

    pinMode(RPI_SHDN, INPUT_PULLUP);

    setINAState(true); 
}