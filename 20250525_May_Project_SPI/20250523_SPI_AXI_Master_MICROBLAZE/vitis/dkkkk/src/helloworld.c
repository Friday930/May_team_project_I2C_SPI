#include <stdio.h>
#include <stdint.h>
#include "platform.h"
#include "xil_printf.h"
#include "sleep.h"

#define __IO volatile

typedef struct {
	__IO uint32_t CR;   // Control Register: {cpol, cpha, start, ss}
	__IO uint32_t SOD;  // Send Out Data (tx_data 보내기)
	__IO uint32_t SID;  // Serial In Data (rx_data)
	__IO uint32_t SR;   // Status Register (done flag)
} AXI4_TypeDef;

#define AXI4_BASEADDR 0x44A00000U
#define AXI4 ((AXI4_TypeDef *)AXI4_BASEADDR)

#define CR_SS    (1 << 3)
#define CR_START (1 << 1)

void spi_send_byte(uint8_t tx_data) {
	AXI4->SOD = tx_data;

	// SS = 0 확실히 세팅, start=0
	AXI4->CR = 0x0;

	// start = 1 (SS=0 유지)
	AXI4->CR ^= CR_START;
	usleep(500);
	AXI4->CR ^= CR_START;

	// 완료 대기
	while ((AXI4->SR & 0x01) == 0);

	uint8_t rx = (uint8_t)(AXI4->SID & 0xFF);
	xil_printf("TX: 0x%02X \nRX: 0x%02X\n", tx_data, tx_data);

}

void spi_send_packet(uint8_t data) {     // <-- 수정됨: 배열 -> 단일 바이트 인자로 변경
	// 통신 시작 SS=0
	AXI4->CR = 0x0;

	spi_send_byte(data);                  // <-- 수정됨: 단일 바이트 전송

	// 통신 종료 SS=1
	AXI4->CR = CR_SS;

}

int main() {
	init_platform();
	xil_printf("SPI Master Start\r\n");

	uint8_t data = 0xaa;                  // <-- 수정됨: 배열 대신 단일 8비트 값 사용

	spi_send_packet(data);                // <-- 수정됨: 1회 전송, 반복 제거

	cleanup_platform();
	return 0;

}
