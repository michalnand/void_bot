#ifndef _RGB_I2C_H_
#define _RGB_I2C_H_

#include "gpio.h"

#define RGB_SENSOR_COUNT     9

/*
#define RGB_SCL              0
#define RGB_SCL_GPIO         TGPIOB

#define RGB_SDA0             0
#define RGB_SDA0_GPIO        TGPIOD

#define RGB_SDA1             1
#define RGB_SDA1_GPIO        TGPIOD

#define RGB_SDA2             2
#define RGB_SDA2_GPIO        TGPIOD

#define RGB_SDA3             3
#define RGB_SDA3_GPIO        TGPIOD

#define RGB_SDA4             4
#define RGB_SDA4_GPIO        TGPIOD

#define RGB_SDA5             5
#define RGB_SDA5_GPIO        TGPIOD

#define RGB_SDA6             6
#define RGB_SDA6_GPIO        TGPIOD

#define RGB_SDA7             7
#define RGB_SDA7_GPIO        TGPIOD

#define RGB_SDA8             8
#define RGB_SDA8_GPIO        TGPIOD
*/



#define RGB_SCL              0
#define RGB_SCL_GPIO         TGPIOB

#define RGB_SDA0             7
#define RGB_SDA0_GPIO        TGPIOD

#define RGB_SDA1             6
#define RGB_SDA1_GPIO        TGPIOD

#define RGB_SDA2             5
#define RGB_SDA2_GPIO        TGPIOD

#define RGB_SDA3             4
#define RGB_SDA3_GPIO        TGPIOD

#define RGB_SDA4             3
#define RGB_SDA4_GPIO        TGPIOD

#define RGB_SDA5             2
#define RGB_SDA5_GPIO        TGPIOD

#define RGB_SDA6             7
#define RGB_SDA6_GPIO        TGPIOD

#define RGB_SDA7             6
#define RGB_SDA7_GPIO        TGPIOD

#define RGB_SDA8             5
#define RGB_SDA8_GPIO        TGPIOD

struct sRGBResult
{
  int16_t r, g, b, a;
  int16_t proximity;
};

class CRGB_I2C
{
  public:
    unsigned char read_result[RGB_SENSOR_COUNT];
    struct sRGBResult result[RGB_SENSOR_COUNT];

    TGpio<RGB_SCL_GPIO, RGB_SCL, GPIO_MODE_IN_FLOATING>   scl;

    TGpio<RGB_SDA0_GPIO, RGB_SDA0, GPIO_MODE_IN_FLOATING> sda0;
    TGpio<RGB_SDA1_GPIO, RGB_SDA1, GPIO_MODE_IN_FLOATING> sda1;
    TGpio<RGB_SDA2_GPIO, RGB_SDA2, GPIO_MODE_IN_FLOATING> sda2;
    TGpio<RGB_SDA3_GPIO, RGB_SDA3, GPIO_MODE_IN_FLOATING> sda3;
    TGpio<RGB_SDA4_GPIO, RGB_SDA4, GPIO_MODE_IN_FLOATING> sda4;
    TGpio<RGB_SDA5_GPIO, RGB_SDA5, GPIO_MODE_IN_FLOATING> sda5;
    TGpio<RGB_SDA6_GPIO, RGB_SDA6, GPIO_MODE_IN_FLOATING> sda6;
    TGpio<RGB_SDA7_GPIO, RGB_SDA7, GPIO_MODE_IN_FLOATING> sda7;
    TGpio<RGB_SDA8_GPIO, RGB_SDA8, GPIO_MODE_IN_FLOATING> sda8;

  public:
    CRGB_I2C();
    ~CRGB_I2C();

    uint16_t init();
    void read();

  protected:
    void write_reg(unsigned char dev_adr, unsigned char reg_adr, unsigned char value);

    void write(unsigned char b);

    //fill read_result array with readed byte
    void read_i2c(unsigned char ack);

    void start();
    void stop();

    void set_high_scl();
    void set_low_scl();
    void set_high_sda();
    void set_low_sda();

    uint16_t read_sda();
};


#endif
