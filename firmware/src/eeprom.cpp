#include "eeprom.h"
#include <avr/eeprom.h>
#include <avr/interrupt.h>
#include "crc.h"
#include "util.h"

static uint16_t next_log_entry;

static unsigned char* write_data;
uint8_t write_len;
uint16_t write_addr;

#define LOG_ENTRY_LEN (sizeof(struct eeprom_log_block))
#define LOG_DATA_LEN (sizeof(struct eeprom_log_data_priv))
#define DEV_DATA_LEN (sizeof(struct eeprom_device_block))

#define LOG_ENTRIES CLAMPH(((EEPROM_SIZE) / LOG_ENTRY_LEN), 255)

EEMEM struct eeprom_log_block logdata[LOG_ENTRIES];
struct eeprom_log_data log_data;
static struct eeprom_log_block log_block;

void eeprom_init() {
	next_log_entry = 0;
}

static void inc_log() {
	next_log_entry++;
	if(next_log_entry >= ARRAY_LEN(logdata)) {
		next_log_entry = 0;
	}
	log_block.data.serial++;
}

// For some bizarre reason eeprom_read_block reads data backwards...
static void eeprom_read_block_8(void* dst, void* src, uint8_t len) {
	while(len--) {
		*((unsigned char*)dst++) = eeprom_read_byte(src++);
	}
}

static uint8_t eeprom_read_log_block(struct eeprom_log_block* log, uint8_t entry) {
	eeprom_read_block_8(log, &logdata[entry], LOG_ENTRY_LEN);
	return log->crc == crc16_8((unsigned char*)&log->data, LOG_DATA_LEN);
}

uint8_t eeprom_find_log_block() {
	struct eeprom_log_block log;
	struct eeprom_log_block last_log;
	uint8_t entry = 0;
	uint8_t found = 0;
	if(eeprom_read_log_block(&last_log, ARRAY_LEN(logdata) - 1)) {
		found = 1;
		log_block = last_log;
		log_data = log_block.data.data;
		next_log_entry = entry;
		inc_log();
	}
	while(entry < ARRAY_LEN(logdata)) {
		if(eeprom_read_log_block(&log, entry)) {
			if(found) {
				uint8_t expected_serial = last_log.data.serial;
				expected_serial++;
				// Sequence break, last log entry is most recent one
				if(log.data.serial != expected_serial) {
					uint8_t prev_entry = entry;
					prev_entry--;
					log_block = last_log;
					log_data = log_block.data.data;
					next_log_entry = prev_entry;
					inc_log();
					break;
				}
			}
			log_block = log;
			log_data = log_block.data.data;
			next_log_entry = entry;
			inc_log();
			found = 1;
			last_log = log;
		}
		entry++;
	}
	return found;
}


uint8_t eeprom_busy() {
	return write_len != 0;
}

void eeprom_write_next_byte() {
	EEARL = write_addr & 0xFF;
	EEARH = (write_addr >> 8);
	EEDR = *write_data;
	EECR |= BIT(EEMPE) | BIT(EERIE);
	EECR |= BIT(EEPE);
}

void eeprom_write_log_block() {
	log_block.data.data = log_data;
	write_addr = (uint16_t)&logdata[next_log_entry];
	write_len = LOG_ENTRY_LEN;
	write_data = (unsigned char*)&log_block;
	log_block.crc = crc16_8((unsigned char*)&log_block.data, LOG_DATA_LEN);
	eeprom_write_next_byte();
}

ISR(EE_READY_vect) {
	write_addr++;
	write_data++;
	write_len--;
	if(write_len) {
		// Enqueue next byte
		eeprom_write_next_byte();
	} else {
		// Transfer finished, disable interrupts and increment serial
		EECR &= ~BIT(EERIE);
		inc_log();
	}
}