/*
 * Copyright (c) 2015, Freescale Semiconductor, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * o Redistributions of source code must retain the above copyright notice, this list
 *   of conditions and the following disclaimer.
 *
 * o Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 *
 * o Neither the name of Freescale Semiconductor, Inc. nor the names of its
 *   contributors may be used to endorse or promote products derived from this
 *   software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include "MK64F12.h"

//static int i = 0;

void MCU_Init();
void MCU_CSlow();
void MCU_CShigh();
void MCU_PDlow();
void MCU_PDhigh();
uint8_t MCU_SPIReadWrite8(uint8_t DataToWrite);
void MCU_Delay_20ms();
void MCU_Delay_500ms();


int main(void)
{
    /* Write your code here */
	uint8_t SPI_rxd = 0;

	MCU_Init();

	MCU_CShigh();


	MCU_PDlow();

	MCU_Delay_20ms();

	MCU_PDhigh();


	MCU_Delay_20ms();

	MCU_PDlow();

	MCU_Delay_500ms();

	MCU_PDhigh();




	while(1)
	{
		MCU_CSlow();

		SPI_rxd = MCU_SPIReadWrite8(0x55);

		MCU_CShigh();
	}

///* This for loop should be replaced. By default this loop allows a single stepping. */
//for (;;) {
//    i++;
//}
/* Never leave main */
return 0;
}





void MCU_Init(void)
{

	// Write 0xC520 to the unlock register
	WDOG_UNLOCK = 0xC520;

	// Followed by 0xD928 to complete the unlock
	WDOG_UNLOCK = 0xD928;

	// Clear the WDOGEN bit to disable the watchdog
	WDOG_STCTRLH &= ~WDOG_STCTRLH_WDOGEN_MASK;

	//configure ports
	// Set port D for SPI Master
	SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK; 				// Enable PORT clock gating ctrl
	SIM_SCGC6 |= SIM_SCGC6_SPI1_MASK;				// Enable SPI1

	GPIOD_PSOR = 0x00000010;	// Set bit 4 of port D

	PORTD_PCR(4) = PORT_PCR_MUX(1); 				// PCS0
	PORTD_PCR(5) = PORT_PCR_MUX(7); 				// SCK
	PORTD_PCR(6) = PORT_PCR_MUX(7); 				// SOUT
	PORTD_PCR(7) = PORT_PCR_MUX(7); 				// SIN
	GPIOD_PDDR |= 0x00000010;						// Port D direction register

	// set port B20 as PD line
	SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; 				// Enable PORT clock gating ctrl

	GPIOD_PSOR = 0x00000010;	// Set bit 4 of port D

	PORTB_PCR(20) = PORT_PCR_MUX(1); 				// SIN
	GPIOB_PDDR |= 0x00100000;						// PD pin

	// Shut down the SPI Master to initialise it
	SPI1_MCR |= SPI_MCR_HALT_MASK;



	// Set up the SPI1 CTAR0
	SPI1_CTAR0 = 0;
	SPI1_CTAR0 |= 0x38000001; 			// 0011 1000 0000 0000 0000 0000 0000 0000
	// 31 		DBR			= 0			Double Baud rate off
	// 30:27	FMSZ 3:0	= 0111		Frame Size = 0111 = 7 means frame is 8 bits
	// 26   	CPOL		= 0			Set Mode 0 SPI, Clock idle low
	// 25		CPHA		= 0			Set Mode 0 SPI, Data is captured on the leading edge of SCK and changed on the following edge
	// 24		LSBFE		= 0			LSB First bit, not set
	// 23:22	PCSSCK		= 00		PCS to SCK divider (00 means 1) (sets chip select to first data edge delay, not used as we use GPIO for CS)
	// 21:20	PASC		= 00		PCS after SCK divider (00 means 1) (sets delay between last SCK edge and CS de-assert, not used as we use GPIO for CS)
	// 19:18	PDT			= 00		Delay after Transfer Prescaler (00 means 1) (sets delay between de-assert of CS and next re-assert of CS)
	// 17:16	PBR			= 00		Baud rate Prescaler (00 = 2)
	// 15:12	CSSCK		= 0000		PCS to SCK Delay Scaler (0000 = 2)
	// 11:08	ASC			= 0000		After SCK Delay Scaler
	// 07:04	DT			= 0000		Delay after Transfer Scaler
	// 03:00	BR			= 0001		Baud rate scaler (set to divide by 4)

	SPI1_RSER = 0;
	SPI1_TCR = 0;

	// Set up the SPI1 SR
	SPI1_SR = 0;
	SPI1_SR |= 0xda0a0000;				// 1 1 0 1 1 0 1 0 0 0 0 0 1 0 1 0 0000 0000 0000 0000
	// 31 		TCF			= 1			Transfer Complete flag
	// 30		TXRXS		= 1			Tx and Rx Status
	// 29		RESERVED	= 0
	// 28		EOQF		= 1			End of Queue Flag
	// 27		TFUF		= 1			Tx FIFO Underflow flag
	// 26		RESERVED	= 0
	// 25		TFFF		= 1			Tx FIFO Full flag
	// 24		RESERVED	= 0
	// 23		RESERVED	= 0
	// 22		RESERVED	= 0
	// 21		RESERVED	= 0
	// 20		RESERVED	= 0
	// 19		RFOF		= 1			Rx FIFO Overflow flag
	// 18		RESERVED	= 0
	// 17		RFDF		= 1			Rx FIFO Drain flag
	// 16		RESERVED	= 0
	// 15:12	TXCTR		= 0000		Tx FIFO Counter
	// 11:8		TXNXTPTR	= 0000		Tx Next Pointer
	// 7:4		RXCTR		= 0000		Rx FIFO Counter
	// 3:0		POPNXTPTR 	= 0000		Pop Next Pointer

	// Set up the SPI1 MCR
	SPI1_MCR =0;
	SPI1_MCR |= 0x80013c01; 			// 1 0 00 0 0 0 0 00 000001 0 0 1 1 1 1 00 00000 0 0 1

	// 31 		MSTR		= 1			Master/Slave mode select, set Master
	// 30		CONT_SCKE	= 0			Continuous SCK enable/disable
	// 29:28	DCONF		= 00		SPI Configuration
	// 27		FRZ			= 0			Freeze
	// 26		MTFE		= 0			Modified Timing Format
	// 25		PCSSE		= 0			Peripheral Chip Select Strobe Enable
	// 24		ROOE		= 0			Rx FIFO Overflow Overwrite enable
	// 23:22	RESERVED	= 00		Reserved
	// 21:16	PCSIS		= 000001	Peripheral Chip Select x Inactive State
	// 15		DOZE		= 0			Doze power saving enable/disable
	// 14		MDIS		= 0			Module Disable
	// 13		DIS_TXF		= 1			Disable Tx FIFO
	// 12		DIS_RXF		= 1			Disable Rx FIFO
	// 11		CLR_TXF		= 1			Clear Tx FIFO
	// 10		CLR_RXF		= 1			Clear Rx FIFO
	// 9:8		SMPL_PT		= 00		Sample Point
	// 7:3		RESERVED	= 00000		Reserved
	// 2		RESERVED	= 0			Reserved
	// 1		RESERVED	= 0			Reserved
	// 0		HALT		= 1			Halt

}




// --------------------- Chip Select line low ----------------------------------
void MCU_CSlow(void)
{
	uint8_t dly = 0;

	for(dly =0; dly < 5; dly++)
    {
    	__asm__ __volatile__ ("nop");
    }

	GPIOD_PCOR = 0x00000010;	// clear bit 4 of port D

	for(dly =0; dly < 5; dly++)
    {
    	__asm__ __volatile__ ("nop");
    }
}


// --------------------- Chip Select line high ---------------------------------
void MCU_CShigh(void)
{
	uint8_t dly = 0;

	for(dly =0; dly < 5; dly++)
    {
    	__asm__ __volatile__ ("nop");
    }

	GPIOD_PSOR = 0x00000010;	// Set bit 4 of port D

	for(dly =0; dly < 5; dly++)
    {
    	__asm__ __volatile__ ("nop");
    }
}


// -------------------------- PD line low --------------------------------------
 void MCU_PDlow(void)
{
    GPIOB_PCOR = 0x00100000;	// Clear bit 20 of port B
}

// ------------------------- PD line high --------------------------------------
 void MCU_PDhigh(void)
{
    GPIOB_PSOR = 0x00100000;	// Set bit 20 of port B
}


// --------------------- SPI Send and Receive ----------------------------------
 uint8_t MCU_SPIReadWrite8(uint8_t DataToWrite)
 {
 		uint8_t DataRead[4];

 		// ------- Clear flags and configure --------
 		SPI1_MCR &= ~(SPI_MCR_HALT_MASK | SPI_MCR_FRZ_MASK);														// Un-Halt and Un-Freeze the SPI Master
 		SPI1_MCR |= SPI_MCR_CLR_RXF_MASK;																			// Clear the RxF flag
 		SPI1_SR = (SPI_SR_EOQF_MASK | SPI_SR_TFUF_MASK | SPI_SR_TFFF_MASK | SPI_SR_RFOF_MASK | SPI_SR_RFDF_MASK);	// Clear flags

 		// -------- Clock out one byte and await for one byte to come back --------
 		SPI1_PUSHR = (SPI_PUSHR_EOQ_MASK | DataToWrite | SPI_PUSHR_CTAS(0) | SPI_PUSHR_PCS(1));						// Write the data byte to the PUSHR register
 		while ((SPI1_SR & SPI_SR_RFDF_MASK) == 0) 																	// Wait until the byte is received back
 		{
 		}
 		DataRead[0] = SPI1_POPR;																					// Read the received byte
 		SPI1_SR = (SPI_SR_EOQF_MASK | SPI_SR_TFUF_MASK | SPI_SR_TFFF_MASK | SPI_SR_RFOF_MASK | SPI_SR_RFDF_MASK); 	// Clear flags
 	    SPI1_MCR |= (SPI_MCR_HALT_MASK | SPI_MCR_FRZ_MASK);															// Halt and Freeze the SPI Master

 		return DataRead[0];
 }


 void MCU_Delay_20ms(void)
{
 	    uint32_t dly = 0;

 	    for(dly =0; dly < 40000; dly++)
 	    {
 	    	__asm__ __volatile__ ("nop");
 	    }
}

 void MCU_Delay_500ms(void)
 {
     uint8_t dly = 0;

     for(dly =0; dly < 25; dly++)
     {
         MCU_Delay_20ms();
     }
 }

////////////////////////////////////////////////////////////////////////////////
// EOF
////////////////////////////////////////////////////////////////////////////////
