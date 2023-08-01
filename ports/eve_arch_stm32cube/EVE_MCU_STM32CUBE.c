/**
 @file EVE_MCU_STM32.c
*/
/*
* ============================================================================
* History
* =======
* Nov 2019		Initial version
*
*
*
*
*
*
*
* (C) Copyright Bridgetek Pte Ltd
* ============================================================================
*
* This source code ("the Software") is provided by Bridgetek Pte Ltd
* ("Bridgetek") subject to the licence terms set out
* http://www.ftdichip.com/FTSourceCodeLicenceTerms.htm ("the Licence Terms").
* You must read the Licence Terms before downloading or using the Software.
* By installing or using the Software you agree to the Licence Terms. If you
* do not agree to the Licence Terms then do not download or use the Software.
*
* Without prejudice to the Licence Terms, here is a summary of some of the key
* terms of the Licence Terms (and in the event of any conflict between this
* summary and the Licence Terms then the text of the Licence Terms will
* prevail).
*
* The Software is provided "as is".
* There are no warranties (or similar) in relation to the quality of the
* Software. You use it at your own risk.
* The Software should not be used in, or for, any medical device, system or
* appliance. There are exclusions of Bridgetek liability for certain types of loss
* such as: special loss or damage; incidental loss or damage; indirect or
* consequential loss or damage; loss of income; loss of business; loss of
* profits; loss of revenue; loss of contracts; business interruption; loss of
* the use of money or anticipated savings; loss of information; loss of
* opportunity; loss of goodwill or reputation; and/or loss of, damage to or
* corruption of data.
* There is a monetary cap on Bridgetek's liability.
* The Software may have subsequently been amended by another user and then
* distributed by that other user ("Adapted Software").  If so that user may
* have additional licence terms that apply to those amendments. However, Bridgetek
* has no liability in relation to those amendments.
* ============================================================================
*/

#if defined(PLATFORM_STM32_CUBE)

#pragma message "Compiling " __FILE__ " for ST STM32_CUBE"

#define bswap16(x) (((x) >> 8) | ((x) << 8))
#define bswap32(x) (((x) >> 24) | (((x) & 0x00FF0000) >> 8) \
                  | (((x) & 0x0000FF00) << 8) | ((x) << 24))

#include <stm32f0xx_hal.h>
#include <stm32f0xx_hal_def.h>
#include <stm32f0xx_hal_gpio.h>
#include <stm32f0xx_hal_rcc.h>
#include <stm32f0xx_hal_spi.h>

/* Replace with header file for target MCU */
//#include "stm32f0308_discovery.h"

#include <main.h>
#include <EVE.h>
#include <EVE_config.h>
#include <FT8xx.h>
#include <HAL.h>
#include <MCU.h>
#include <string.h>
#include <stdint.h> // for Uint8/16/32 and Int8/16/32 data types

/* SPI handler declaration */
SPI_HandleTypeDef SpiHandle;



//SPI_HandleTypeDef hspi1;















void MCU_Init(void)
{










	/**
	  * @brief System Clock Configuration
	  * @retval None
	  */
//	void SystemClock_Config(void)
//	{
	  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
	  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

	  /** Initializes the RCC Oscillators according to the specified parameters
	  * in the RCC_OscInitTypeDef structure.
	  */
	  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
	  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
	  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
	  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
	  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
	  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL12;
	  RCC_OscInitStruct.PLL.PREDIV = RCC_PREDIV_DIV1;
	  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
	  {
//	    Error_Handler();
	  }

	  /** Initializes the CPU, AHB and APB buses clocks
	  */
	  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
	                              |RCC_CLOCKTYPE_PCLK1;
	  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
	  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
	  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;

	  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
	  {
//	    Error_Handler();
	  }
//	}








	  /**
	    * @brief GPIO Initialization Function
	    * @param None
	    * @retval None
	    */
//	  static void MX_GPIO_Init(void)
//	  {
	    GPIO_InitTypeDef GPIO_InitStruct = {0};
	  /* USER CODE BEGIN MX_GPIO_Init_1 */
	  /* USER CODE END MX_GPIO_Init_1 */

	    /* GPIO Ports Clock Enable */
	    __HAL_RCC_GPIOA_CLK_ENABLE();
	    __HAL_RCC_GPIOC_CLK_ENABLE();
	    __HAL_RCC_GPIOB_CLK_ENABLE();

	    /*Configure GPIO pin Output Level */
	    HAL_GPIO_WritePin(GPIOC, LD4_Pin|LD3_Pin, GPIO_PIN_RESET);

	    /*Configure GPIO pin Output Level */
	    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_6|GPIO_PIN_7, GPIO_PIN_RESET);

	    /*Configure GPIO pin : B1_Pin */
	    GPIO_InitStruct.Pin = B1_Pin;
	    GPIO_InitStruct.Mode = GPIO_MODE_EVT_RISING;
	    GPIO_InitStruct.Pull = GPIO_NOPULL;
	    HAL_GPIO_Init(B1_GPIO_Port, &GPIO_InitStruct);

	    /*Configure GPIO pins : LD4_Pin LD3_Pin */
	    GPIO_InitStruct.Pin = LD4_Pin|LD3_Pin;
	    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	    GPIO_InitStruct.Pull = GPIO_NOPULL;
	    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	    HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

	    /*Configure GPIO pins : PB6 PB7 */
	    GPIO_InitStruct.Pin = GPIO_PIN_6|GPIO_PIN_7;
	    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	    GPIO_InitStruct.Pull = GPIO_NOPULL;
	    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	    HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

	  /* USER CODE BEGIN MX_GPIO_Init_2 */
	  /* USER CODE END MX_GPIO_Init_2 */
//	  }

	  /* USER CODE BEGIN 4 */

	  /* USER CODE END 4 */

	  /**
	    * @brief  This function is executed in case of error occurrence.
	    * @retval None
	    */


	
	  /**
	    * @brief SPI1 Initialization Function
	    * @param None
	    * @retval None
	    */
//	  static void MX_SPI1_Init(void)
//	  {

	    /* USER CODE BEGIN SPI1_Init 0 */

	    /* USER CODE END SPI1_Init 0 */

	    /* USER CODE BEGIN SPI1_Init 1 */








	    /* USER CODE END SPI1_Init 1 */
	    /* SPI1 parameter configuration*/
	    SpiHandle.Instance = SPI1;
	    SpiHandle.Init.Mode = SPI_MODE_MASTER;
	    SpiHandle.Init.Direction = SPI_DIRECTION_2LINES;
	    SpiHandle.Init.DataSize = SPI_DATASIZE_8BIT;
	    SpiHandle.Init.CLKPolarity = SPI_POLARITY_LOW;
	    SpiHandle.Init.CLKPhase = SPI_PHASE_1EDGE;
	    SpiHandle.Init.NSS = SPI_NSS_SOFT;
	    SpiHandle.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_32;//8;
	    SpiHandle.Init.FirstBit = SPI_FIRSTBIT_MSB;
	    SpiHandle.Init.TIMode = SPI_TIMODE_DISABLE;
	    SpiHandle.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
	    SpiHandle.Init.CRCPolynomial = 7;
	    SpiHandle.Init.CRCLength = SPI_CRC_LENGTH_DATASIZE;
	    SpiHandle.Init.NSSPMode = SPI_NSS_PULSE_DISABLE;
	    if (HAL_SPI_Init(&SpiHandle) != HAL_OK)
	    {
//	      Error_Handler();
	    }
	    /* USER CODE BEGIN SPI1_Init 2 */

	    /* USER CODE END SPI1_Init 2 */

//	  }



















}

void MCU_Setup(void)
{
#ifdef FT81X_ENABLE
#endif // FT81X_ENABLE
}

// ########################### GPIO CONTROL ####################################

// --------------------- Chip Select line low ----------------------------------
inline void MCU_CSlow(void)
{
  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_6, GPIO_PIN_RESET); //lo
  //Nop();
}


// --------------------- Chip Select line high ---------------------------------
inline void MCU_CShigh(void)
{
  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_6, GPIO_PIN_SET); //hi
  //Nop();
}

// -------------------------- PD line low --------------------------------------
inline void MCU_PDlow(void)
{
  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_7, GPIO_PIN_RESET); //lo                                                     // PD# line low
}

// ------------------------- PD line high --------------------------------------
inline void MCU_PDhigh(void)
{
  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_7, GPIO_PIN_SET); //hi                                                      // PD# line high
}

// --------------------- SPI Send and Receive ----------------------------------
uint8_t MCU_SPIReadWrite8(uint8_t DataToWrite)
{
    
	uint8_t DataRead[4];
	uint8_t TxBuffer[4];
	
	 TxBuffer[0] = DataToWrite;
		
	HAL_SPI_TransmitReceive(&SpiHandle, (uint8_t*)TxBuffer, (uint8_t *)DataRead, 1, 5000);

	// Note that this call to the STM32 HAL returns a status value which can be checked as shown below in order
	// to make the application more robust
#if 0
	switch(HAL_SPI_TransmitReceive(&SpiHandle, (uint8_t*)TxBuffer, (uint8_t *)DataRead, 1, 5000))
	{
    case HAL_OK:
      /* Communication is completed ___________________________________________ */
    case HAL_TIMEOUT:
      /* A Timeout Occur ______________________________________________________*/
      /* Call Timeout Handler */
      Timeout_Error_Handler();
      break;
      /* An Error Occur ______________________________________________________ */
    case HAL_ERROR:
      /* Call Timeout Handler */
      Error_Handler();
      break;
    default:
      break;
  }
#endif
	   

    return DataRead[0];
}

uint16_t MCU_SPIReadWrite16(uint16_t DataToWrite)
{
    uint16_t DataRead = 0;
    DataRead = MCU_SPIReadWrite8((DataToWrite) >> 8) << 8;
    DataRead |= MCU_SPIReadWrite8((DataToWrite) & 0xff);
    return MCU_be16toh(DataRead);
}



uint32_t MCU_SPIReadWrite24(uint32_t DataToWrite)
{
    uint32_t DataRead = 0;
    uint32_t temp;
    

     temp = (MCU_SPIReadWrite8((DataToWrite) >> 24)); //****
    DataRead |= (temp<<24);

     temp = (MCU_SPIReadWrite8((DataToWrite) >> 16));
    DataRead |= (temp<<16);
     temp = (MCU_SPIReadWrite8((DataToWrite) >> 8));
    DataRead |= (temp<<8);

    return MCU_be32toh(DataRead);
}


uint32_t MCU_SPIReadWrite32(uint32_t DataToWrite)
{
    uint32_t DataRead = 0;
    uint32_t temp;

	temp = (MCU_SPIReadWrite8((DataToWrite) >> 24)); 
    DataRead |= (temp << 24);
     temp = (MCU_SPIReadWrite8((DataToWrite) >> 16)); 
    DataRead |= (temp << 16);      
    DataRead |= (MCU_SPIReadWrite8((DataToWrite) >> 8) << 8);      
    DataRead |= (MCU_SPIReadWrite8(DataToWrite) & 0xff); 
 
    return MCU_be32toh(DataRead);
}

void MCU_Delay_20ms(void)
{
    HAL_Delay(20);
	}

void MCU_Delay_500ms(void)
{
    uint8_t dly = 0;

    for(dly =0; dly < 100; dly++)
    {
        HAL_Delay(20);
    }
}



// --------------------- SPI Send and Receive ----------------------------------

uint8_t MCU_SPIRead8(void)
{
	uint8_t DataRead = 0;

	DataRead = MCU_SPIReadWrite8(0);
    
	return DataRead;
}

void MCU_SPIWrite8(uint8_t DataToWrite)
{
	MCU_SPIReadWrite8(DataToWrite);
}

uint16_t MCU_SPIRead16(void)
{
	uint16_t DataRead = 0;

	DataRead = MCU_SPIReadWrite16(0);

	return DataRead;
}

void MCU_SPIWrite16(uint16_t DataToWrite)
{
	MCU_SPIReadWrite16(DataToWrite);
}

uint32_t MCU_SPIRead24(void)
{
	uint32_t DataRead = 0;

	DataRead = MCU_SPIReadWrite24(0);

	return DataRead;
}

void MCU_SPIWrite24(uint32_t DataToWrite)
{
	MCU_SPIReadWrite24(DataToWrite);
}

uint32_t MCU_SPIRead32(void)
{
	uint32_t DataRead = 0;

	DataRead = MCU_SPIReadWrite32(0);

	return DataRead;
}

void MCU_SPIWrite32(uint32_t DataToWrite)
{
	MCU_SPIReadWrite32(DataToWrite);
}

void MCU_SPIWrite(const uint8_t *DataToWrite, uint32_t length)
{
	//spi_writen(SPIM, DataToWrite, length);

    uint16_t DataPointer = 0;   
    DataPointer = 0;

    while(DataPointer < length)
    {
        MCU_SPIWrite8(DataToWrite[DataPointer]);                                       // Send data byte-by-byte from array
        DataPointer ++;
    }
}

uint16_t MCU_htobe16 (uint16_t h)
{
    return h;
}

uint32_t MCU_htobe32 (uint32_t h)
{
    return h;
}

uint16_t MCU_htole16 (uint16_t h)
{

        return bswap16(h); 
}

uint32_t MCU_htole32 (uint32_t h)
{

        return bswap32(h);
}

uint16_t MCU_be16toh (uint16_t h)
{
    return h;
}
uint32_t MCU_be32toh (uint32_t h)
{
     return h;
}

uint16_t MCU_le16toh (uint16_t h)
{

        return bswap16(h); 
}

uint32_t MCU_le32toh (uint32_t h)
{
        return bswap32(h);

}

#if 0
/**
  * @brief  This function is executed in case of error occurrence.
  * @param  None
  * @retval None
  */
static void Timeout_Error_Handler(void)
{
  /* Toggle LED4 on */
  while(1)
  {
    BSP_LED_On(LED4);
    HAL_Delay(500);
    BSP_LED_Off(LED4);
    HAL_Delay(500);
  }
}
#endif

#if 0
/**
  * @brief  This function is executed in case of error occurrence.
  * @param  None
  * @retval None
  */
static void Error_Handler(void)
{
  /* Turn LED4 on */
  BSP_LED_On(LED4);
  while(1)
  {
  }
}
#endif

#endif /* defined (PLATFORM_STM32) */
