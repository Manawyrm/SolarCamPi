#include <Arduino.h>
#include "config.h"
#include <SoftWire.h>
#include <Wire.h>
#include "Adafruit_INA219.h"
 
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

struct
{
    uint8_t miau;
    uint8_t wuff;
    uint8_t awoo;
} registers = {0};


void setup()
{
    Serial.begin(9600);
    // pinMode(RPI_SHDN, INPUT_PULLUP);
    pinMode(AVR_PWR_EN, OUTPUT); 

    setINAState(HIGH);
    inaWire.enablePullups(true);
    inaWire.setTimeout_ms(200);
    inaWire.setClock(10000);
    inaWire.setRxBuffer(rxBuf, sizeof(rxBuf));
    inaWire.setTxBuffer(txBuf, sizeof(txBuf));
    ina219.begin(&inaWire);

    Wire.begin(8);
    Wire.onReceive(handleI2CReceive);
    Wire.onRequest(handleI2CRequest);
}

void loop()
{
    /*
  float shuntvoltage = 0;
  float busvoltage = 0;
  float current_mA = 0;
  float loadvoltage = 0;
  float power_mW = 0;

  shuntvoltage = ina219.getShuntVoltage_mV();
  busvoltage = ina219.getBusVoltage_V();
  current_mA = ina219.getCurrent_mA();
  power_mW = ina219.getPower_mW();
  loadvoltage = busvoltage + (shuntvoltage / 1000);
  
  Serial.print("Bus Voltage:   "); Serial.print(busvoltage); Serial.println(" V");
  Serial.print("Shunt Voltage: "); Serial.print(shuntvoltage); Serial.println(" mV");
  Serial.print("Load Voltage:  "); Serial.print(loadvoltage); Serial.println(" V");
  Serial.print("Current:       "); Serial.print(current_mA); Serial.println(" mA");
  Serial.print("Power:         "); Serial.print(power_mW); Serial.println(" mW");
  Serial.println("");

  delay(2000);
  */

}

void handleI2CRequest()
{
    Wire.write(((uint8_t*)&registers)[i2cRegister]);

}
void handleI2CReceive(volatile int numBytes)
{
    Serial.println("i2c receive");
    Wire.write(0x80);
    if (numBytes == 1)
    {
        // i2cget -y 1 0x08 42 c
        i2cRegister = Wire.read();
        /*Serial.print("Lesezugriff: ");
        Se rial.println(i2cRegister);
        */
    }
    if (numBytes == 2)
    {
        // i2cset -y 1 0x08 22 42 b
        i2cRegister = Wire.read();
        i2cData = Wire.read();
        /*Serial.print("Schreibzugriff: ");
        Serial.print(i2cRegister);
        Serial.print(" Daten: ");
        Serial.println(i2cData);
        */
        if (sizeof(registers) < i2cRegister)
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