#pragma once

#ifdef __AVR_ATmega328PB__
    #define AVR_SCL 21 // INA220 Software I2C
    #define AVR_SDA 14 // INA220 Software I2C
    #define AVR_I2C_PULLUP 20 // INA220 Software I2C
    #define INA_3V3 15 // INA220 Power

    #define AVR_PWR_EN 7 // MOSFET to enable RPi supply rail
    #define RPI_SHDN 2   // Shutdown signalling from RPi

#else
    #define AVR_SCL 16 // INA220 Software I2C
    #define AVR_SDA 17 // INA220 Software I2C
    #define AVR_I2C_PULLUP 20 // INA220 Software I2C
    #define INA_3V3 15 // INA220 Power

    #define AVR_PWR_EN 7 // MOSFET to enable RPi supply rail
    #define RPI_SHDN 2   // Shutdown signalling from RPi
#endif

