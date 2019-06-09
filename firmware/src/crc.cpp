#include "crc.h"

// Shamelessly stolen fron Stackoverflow (https://stackoverflow.com/questions/10564491/function-to-calculate-a-crc16-checksum)

uint16_t crc16_8(const unsigned char* data, uint8_t len) {
	uint8_t x;
	uint16_t crc = 0xFFFF;

	while (len--) {
		x = crc >> 8 ^ *data++;
		x ^= x>>4;
		crc = (crc << 8) ^ ((uint16_t)(x << 12)) ^ ((uint16_t)(x <<5)) ^ ((uint16_t)x);
	}
	return crc;
}
