#ifndef _CONFIG_H_
#define _CONFIG_H_

#include "avr.h"


//used CPU frequency
#define F_CPU                   ((uint32_t)12000000)

//USART terminal baudrate
#define TERMINAL_BAUDRATE       ((uint32_t)9600)
// #define TERMINAL_USE_FLOAT

//timer interrupt frequency, 1000Hz
#define TIMER_FREQUENCY         ((uint32_t)1000)
//count of software timers
#define TIMERS_COUNT            ((unsigned char)8)

//main i2c bus
#define I2C_PORT                    TGPIOB
#define I2C_SCL_PIN                 3
#define I2C_SDA_PIN                 4
#define I2C_SPEED                   10

//output for LED
#define LED_GPIO                    TGPIOB
#define LED_PIN                     5



#endif
