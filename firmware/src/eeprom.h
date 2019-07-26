#pragma once 

#include <stdint.h>
#include "main.h"

struct eeprom_log_data
{
    uint16_t voltage;
    uint16_t sleepIntervalFast;
    uint16_t sleepIntervalSlow;
    uint16_t sleepIntervalSlowVoltage;
    uint16_t undervoltageLockout;
    uint16_t undervoltageHysteresis;
    uint8_t disableTimeout; 
    uint16_t timeout;
    int16_t current;
};


struct eeprom_log_data_priv {
	uint8_t serial;
	struct eeprom_log_data data;
};

struct eeprom_log_block {
	struct eeprom_log_data_priv data;
	// Writing the data block can not be an atomic
	// operation, crc ensures integrity
	uint16_t crc;
};

#define EEPROM_SIZE 1024

void eeprom_init();
uint8_t eeprom_find_log_block();
uint8_t eeprom_busy();
void eeprom_write_log_block();

extern struct eeprom_log_data log_data;
