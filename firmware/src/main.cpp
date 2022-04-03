/*
@brief               Embedded controller for solar-powered webcam
@date                2022-04-03
@version             1.10
@author              Tobias Mädel
@license             MIT

@par 2019-05-26 Tobias Mädel Initial version
@par 2022-04-03 Tobias Mädel Added additional debug logs
*/
#include "main.h"
#include "config.h"
#include <SoftWire.h>
#include <Wire.h>
#include "Adafruit_INA219.h"
#include "LowPower.h"

volatile uint8_t state = STATE_ACTIVE; 
volatile uint8_t oldState = state;
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

#define debug_print(x) Serial.print(x); Serial.flush();
#define debug_println(x) Serial.println(x); Serial.flush();

void setup()
{
    pinMode(LED, OUTPUT); 
    digitalWrite(LED, 1); 

    Serial.begin(115200);
    debug_println("SolarCamPi Init");

    eeprom_init();
    if (!eeprom_find_log_block())
    {
        debug_println("Initializing EEPROM");
        log_data  = {
            .voltage = 0,
            .sleepIntervalFast = 50, // 280s
            .sleepIntervalSlow = 225, // 1800s
            .sleepIntervalSlowVoltage = 7000,
            .undervoltageLockout = 4000,
            .undervoltageHysteresis = 4500,
            .disableTimeout = 0,
            .timeout = 120,
            .current = 0
        };
        eeprom_write_log_block();
    }
    else
    {
        debug_println("Block found");
    }

    debug_print_registers();

    pinMode(RPI_SHDN, INPUT_PULLUP);
    pinMode(AVR_PWR_EN, OUTPUT); 
    pinMode(LED, OUTPUT); 

    debug_println("Trying to initialize INA");
    setINAState(HIGH);

    inaWire.enablePullups(false);
    inaWire.setTimeout_ms(200);
    inaWire.setClock(10000);
    inaWire.setRxBuffer(rxBuf, sizeof(rxBuf));
    inaWire.setTxBuffer(txBuf, sizeof(txBuf));

    ina219.begin(&inaWire);

    debug_println("Setting up RPI I2C");

    Wire.begin(8);
    Wire.onReceive(handleI2CReceive);
    Wire.onRequest(handleI2CRequest);
    
    attachInterrupt(digitalPinToInterrupt(RPI_SHDN), shutdownSignaled, FALLING);  
}

void loop()
{
    //debug_println("Reading from INA");
    registers.voltage = (ina219.getBusVoltage_V() * 1000.0f);
    registers.current = ina219.getCurrent_mA();
    //debug_println("Read from INA finish");
    //debug_print_registers();

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
        debug_print_registers();
    }

    debug_print_state_change();
    switch (state)
    {
        case STATE_ACTIVE:
            digitalWrite(AVR_PWR_EN, HIGH); 
            digitalWrite(LED, HIGH);
            delay(500);
            if (!registers.disableTimeout)
                activeTime++;

            if (registers.timeout < activeTime)
            {
                debug_println("Timeout reached! Shutting down!");
                state = STATE_SLEEP; 
            }
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
    pinMode(INA_3V3, OUTPUT);
    digitalWrite(INA_3V3, state);
}

void sleep(uint16_t sleepTime)
{
    debug_println("sleep()");

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

    debug_println("wakeup!");
}

void debug_print_state_change()
{
    if (oldState != state)
    {
        debug_print("[state] ");
        debug_print_state_name(oldState);
        debug_print(" -> ");
        debug_print_state_name(state);
        debug_println();

        oldState = state;
    }
}

void debug_print_state_name(uint8_t _state)
{
    switch (_state)
    {
        case STATE_ACTIVE: debug_print("STATE_ACTIVE"); break;
        case STATE_SLEEP: debug_print("STATE_SLEEP"); break;
        case STATE_UNDERVOLTAGE: debug_print("STATE_UNDERVOLTAGE"); break;
        default: debug_print("INVALID ("); debug_print(_state); debug_print(")") break;
    }
}

void debug_print_registers()
{
    debug_println("");
    debug_println("------------------------------");
    debug_print("Voltage: ");
    debug_println(registers.voltage);
    debug_print("sleepIntervalFast: ");
    debug_println(registers.sleepIntervalFast);
    debug_print("sleepIntervalSlow: ");
    debug_println(registers.sleepIntervalSlow);
    debug_print("sleepIntervalSlowVoltage: ");
    debug_println(registers.sleepIntervalSlowVoltage);
    debug_print("undervoltageLockout: ");
    debug_println(registers.undervoltageLockout);
    debug_print("undervoltageHysteresis: ");
    debug_println(registers.undervoltageHysteresis);
    debug_print("disableTimeout: ");
    debug_println(registers.disableTimeout);
    debug_print("timeout: ");
    debug_println(registers.timeout);
    debug_println("------------------------------");
    debug_println("");
}