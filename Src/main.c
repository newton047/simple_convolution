/**
  ******************************************************************************
  * @file    Templates/Src/main.c
  * @author  MCD Application Team
  * @brief   Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2017 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include <string.h>
#include <stdint.h>
#include <string.h>
#include "arm_math.h"
#include "signals.h"

/** @addtogroup STM32F4xx_HAL_Examples
  * @{
  */

/** @addtogroup Templates
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
static void SystemClock_Config(void);
static void Error_Handler(void);

/* Private functions ---------------------------------------------------------*/
UART_HandleTypeDef huart2;

/**
  * @brief  Main program
  * @param  None
  * @retval None
  */

void DebugPortInit(){
	  /* Add your application code here
	     */

	  huart2.Instance = USART2;
	  huart2.Init.BaudRate =115200;
	  huart2.Init.WordLength = UART_WORDLENGTH_8B;
	  huart2.Init.StopBits = UART_STOPBITS_1;
	  huart2.Init.Parity = UART_PARITY_NONE;
	  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
	  huart2.Init.Mode = UART_MODE_TX;
	  huart2.Init.OverSampling = UART_OVERSAMPLING_16;

	  HAL_UART_Init(&huart2);


}

void plotSignal(float32_t* sig,uint32_t len);
void compute_convolution(float32_t* ip_sgn,uint32_t iplen,\
						 float32_t* impulse_sgn,uint32_t imp_len,
						 float32_t* result );

int main(void)
{

  /* STM32F4xx HAL library initialization:
       - Configure the Flash prefetch, Flash preread and Buffer caches
       - Systick timer is configured by default as source of time base, but user
             can eventually implement his proper time base source (a general purpose
             timer for example or other time source), keeping in mind that Time base
             duration should be kept 1ms since PPP_TIMEOUT_VALUEs are defined and
             handled in milliseconds basis.
       - Low Level Initialization
     */

	char temp[]= "Hello World";
	float32_t conv_result[f32_1khz_15khz_len+impulse_response_len-1];

	float32_t temp1;
	float32_t time;
	uint32_t temp123;
	uint8_t buffer2[100];

  HAL_Init();

  /* Configure the System clock to 84 MHz */
  SystemClock_Config();

  DebugPortInit();


  SCB->CPACR |= (1<<20);
  SCB->CPACR |= (1<<21);
  SCB->CPACR |= (1<<22);
  SCB->CPACR |= (1<<23);

  /* Infinite loop */



  /*Enable clock to timer peripheral*/




  for(int i=0;i<(f32_1khz_15khz_len+impulse_response_len-1);i++){

	  conv_result[i]=0;
  }

  temp123=HAL_GetTick();

  compute_convolution(inputSignal_f32_1kHz_15kHz,f32_1khz_15khz_len,\
		  	  	  	  impulse_response,impulse_response_len,conv_result);

  time = HAL_GetTick()- temp123;
  while (1)
  {

	//  plotSignal(conv_result,(f32_1khz_15khz_len+impulse_response_len-1));
	  for(int i=0;i<f32_1khz_15khz_len;i++){

		  sprintf(buffer2,"%f %f\n",inputSignal_f32_1kHz_15kHz[i],conv_result[i]);
		  HAL_UART_Transmit(&huart2, buffer2, strlen(buffer2), HAL_MAX_DELAY);
		  HAL_Delay(50);
	  }

  }
}


void compute_convolution(float32_t* ip_sgn,uint32_t iplen,
						 float32_t* impulse_sgn,uint32_t imp_len,
						 float32_t* result ){

	  for (int i=0;i<(iplen);i++){

		  for(int j=0;j<imp_len;j++){
			  result[i+j] = result[i+j] + ip_sgn[i]*impulse_sgn[j];

		  }
	  }

}

void plotSignal(float32_t* sig,uint32_t len){

	uint8_t buffer[100];

	 for(int i=0;i<len;i++){

		 sprintf(buffer,"%f\r\n",sig[i]);
		 HAL_UART_Transmit(&huart2, buffer, strlen(buffer), HAL_MAX_DELAY);
		 HAL_Delay(50);
	 }

}

/**
  * @brief  System Clock Configuration
  *         The system Clock is configured as follow :
  *            System Clock source            = PLL (HSI)
  *            SYSCLK(Hz)                     = 84000000
  *            HCLK(Hz)                       = 84000000
  *            AHB Prescaler                  = 1
  *            APB1 Prescaler                 = 2
  *            APB2 Prescaler                 = 1
  *            HSI Frequency(Hz)              = 16000000
  *            PLL_M                          = 16
  *            PLL_N                          = 336
  *            PLL_P                          = 4
  *            PLL_Q                          = 7
  *            VDD(V)                         = 3.3
  *            Main regulator output voltage  = Scale2 mode
  *            Flash Latency(WS)              = 2
  * @param  None
  * @retval None
  */
static void SystemClock_Config(void)
{
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_OscInitTypeDef RCC_OscInitStruct;

  /* Enable Power Control clock */
  __HAL_RCC_PWR_CLK_ENABLE();

  /* The voltage scaling allows optimizing the power consumption when the device is
     clocked below the maximum system frequency, to update the voltage scaling value
     regarding system frequency refer to product datasheet.  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE2);

  /* Enable HSI Oscillator and activate PLL with HSI as source */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = 0x10;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = 16;
  RCC_OscInitStruct.PLL.PLLN = 336;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV4;
  RCC_OscInitStruct.PLL.PLLQ = 7;
  if(HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /* Select PLL as system clock source and configure the HCLK, PCLK1 and PCLK2
     clocks dividers */
  RCC_ClkInitStruct.ClockType = (RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2);
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;
  if(HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @param  None
  * @retval None
  */
static void Error_Handler(void)
{
  /* User may add here some code to deal with this error */
  while(1)
  {
  }
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

/**
  * @}
  */

/**
  * @}
  */
