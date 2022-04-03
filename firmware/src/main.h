#pragma once

#include <Arduino.h>
#include "eeprom.h"

void handleI2CReceive(volatile int numBytes);
void handleI2CRequest();
void sleep(uint16_t sleepTime);
void shutdownSignaled();
void setINAState(bool state);
void debug_print_state_change();
void debug_print_state_name(uint8_t _state);
void debug_print_registers();

enum states { 
    STATE_ACTIVE,
    STATE_SLEEP,
    STATE_UNDERVOLTAGE
};
