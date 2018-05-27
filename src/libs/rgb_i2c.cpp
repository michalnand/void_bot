#include "rgb_i2c.h"


#define RGB_ADDRESS		(0x39<<1)

#define RGB_COMMAND		(1<<7)

/*APDS-9950 registers */
#define RGB_ENABLE		0x00
#define RGB_ATIME			0x01
#define RGB_WTIME			0x03
#define RGB_AILTL			0x04
#define RGB_AILTH			0x05

#define RGB_AIHTL			0x06
#define RGB_AIHTH			0x07

#define RGB_PILTL			0x08
#define RGB_PILTH			0x09

#define RGB_PIHTL			0x0A
#define RGB_PIHTH			0x0B

#define RGB_PERS			      0x0C
#define RGB_CONFIG			    0x0D
#define RGB_PPULSE			    0x0E

#define RGB_CONTROL			    0x0F
#define RGB_ID				      0x12
#define RGB_ID_VALUE				0x69

#define RGB_STATUS 			0x13

#define RGB_CDATAL			0x14
#define RGB_CDATAH			0x15
#define RGB_RDATAL			0x16
#define RGB_RDATAH			0x17
#define RGB_GDATAL			0x18
#define RGB_GDATAH			0x19
#define RGB_BDATAL			0x1A
#define RGB_BDATAH			0x1B
#define RGB_PDATAL 			0x1C
#define RGB_PDATAH 			0x1D

#define rgb_i2c_delay() __asm("nop");

CRGB_I2C::CRGB_I2C()
{
  init();
}

CRGB_I2C::~CRGB_I2C()
{

}

uint16_t CRGB_I2C::init()
{
  scl = 0;

  sda0 = 0;
  sda1 = 0;
  sda2 = 0;
  sda3 = 0;
  sda4 = 0;
  sda5 = 0;
  sda6 = 0;
  sda7 = 0;
  sda8 = 0;

  write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_ATIME, 0xFF); 			//2.4ms time
  write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_WTIME, 0xFF); 			//2.4ms time

  write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_CONFIG, 0); 				//dont wait long
  // write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_ENABLE, (1<<1)|(1<<0));	//power on, RGBC enable
  write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_ENABLE, (1<<1)|(1<<0)|(1<<2));	//power on, RGBC + proximity enable


  /*
    100mA proximity LED current
    use IR diode
    60x GAIN
  */
  write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_CONTROL, (1<<5)|(1<<0)|(1<<1));
  write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_PPULSE, 4);

  //read ID register
  start();
  write(RGB_ADDRESS);         // slave address, write command
  write(RGB_COMMAND|RGB_ID);  // send reg address

  start();
  write(RGB_ADDRESS|0x01); // slave address, read command

  read_i2c(0);

  //set one in result, on bit corresponding with sensor with wrong ID readed
  uint16_t result = 0;
  unsigned char j;
  for (j = 0; j < RGB_SENSOR_COUNT; j++)
  {
    if (read_result[j] == RGB_ID_VALUE)
      result|=  (1<<j);
  }

  stop();


  return result;
}

void CRGB_I2C::read()
{
  unsigned char j;

  start();
  write(RGB_ADDRESS);
  write(RGB_COMMAND|RGB_CDATAL|(1<<5));
  stop();

  start();
  write(RGB_ADDRESS|0x01);

  //read ambient
  read_i2c(1);
  for (j = 0; j < RGB_SENSOR_COUNT; j++)
    result[j].a = ((uint16_t)read_result[j])<<0;

  read_i2c(1);
  for (j = 0; j < RGB_SENSOR_COUNT; j++)
    result[j].a|= ((uint16_t)read_result[j])<<8;

  //read red
  read_i2c(1);
  for (j = 0; j < RGB_SENSOR_COUNT; j++)
    result[j].r = ((uint16_t)read_result[j])<<0;

  read_i2c(1);
  for (j = 0; j < RGB_SENSOR_COUNT; j++)
    result[j].r|= ((uint16_t)read_result[j])<<8;

  //read green
  read_i2c(1);
  for (j = 0; j < RGB_SENSOR_COUNT; j++)
    result[j].g = ((uint16_t)read_result[j])<<0;

  read_i2c(1);
  for (j = 0; j < RGB_SENSOR_COUNT; j++)
    result[j].g|= ((uint16_t)read_result[j])<<8;

  //read blue
  read_i2c(1);
  for (j = 0; j < RGB_SENSOR_COUNT; j++)
    result[j].b = ((uint16_t)read_result[j])<<0;

  read_i2c(1);
  for (j = 0; j < RGB_SENSOR_COUNT; j++)
    result[j].b|= ((uint16_t)read_result[j])<<8;

  //read proximity
  read_i2c(1);
  for (j = 0; j < RGB_SENSOR_COUNT; j++)
    result[j].proximity = ((uint16_t)read_result[j])<<0;

  read_i2c(0);
  for (j = 0; j < RGB_SENSOR_COUNT; j++)
    result[j].proximity|= ((uint16_t)read_result[j])<<8;

  stop();
}

void CRGB_I2C::write_reg(unsigned char dev_adr, unsigned char reg_adr, unsigned char value)
{
    start();
    write(dev_adr);  //slave address, write command
    write(reg_adr);  //send reg address
    write(value);
    stop();
}

void CRGB_I2C::write(unsigned char b)
{
  unsigned char  i;

  for (i = 0; i < 8; i++)
  {
      set_low_scl();
      rgb_i2c_delay();

      if (b & (1<<7))
      {
          set_high_sda();
      }
      else
      {
          set_low_sda();
      }

      rgb_i2c_delay();
      set_high_scl();

      rgb_i2c_delay();
      b <<= 1;
  }


  set_low_scl();
  rgb_i2c_delay();

  set_high_sda();
  rgb_i2c_delay();

  set_high_scl();
  rgb_i2c_delay();

  read_sda();

  set_low_scl();
  rgb_i2c_delay();

}

void CRGB_I2C::read_i2c(unsigned char ack)
{
  unsigned char  i;

  for (i = 0; i < RGB_SENSOR_COUNT; i++)
    read_result[i] = 0;

  set_high_sda();
  set_low_scl();
  rgb_i2c_delay();

  //read 8bits
  for (i = 0; i < 8; i++)
  {
      set_high_scl();
      rgb_i2c_delay();

      uint16_t readed = read_sda();  //read all SDAs pins

      set_low_scl();
      rgb_i2c_delay();

      //for all SDAs pins
      for (unsigned char j = 0; j < RGB_SENSOR_COUNT; j++)
      {
        read_result[j]<<= 1;        //shift bites
        if (readed&(1<<j))
          read_result[j]|= (1<<0);  //add corresponding readed bit if one
      }
  }


  if(ack)
  {
    set_low_sda();
  }
  else
  {
    set_high_sda();
  }

  rgb_i2c_delay();
  set_high_scl();
  rgb_i2c_delay();
  set_low_scl();
  rgb_i2c_delay();
  set_high_sda();
  rgb_i2c_delay();
}


void CRGB_I2C::start()
{
  set_high_scl();
  set_high_sda();

  set_high_scl();
  set_low_sda();

  set_low_scl();
  set_high_sda();
}

void CRGB_I2C::stop()
{
  set_low_scl();
  set_low_sda();

  set_high_scl();
  set_low_sda();

  set_high_scl();
  set_high_sda();
}

void CRGB_I2C::set_high_scl()
{
  scl.set_mode(GPIO_MODE_IN_FLOATING);
}

void CRGB_I2C::set_low_scl()
{
  scl.set_mode(GPIO_MODE_OUT);
}

void CRGB_I2C::set_high_sda()
{
  sda0.set_mode(GPIO_MODE_IN_FLOATING);
  sda1.set_mode(GPIO_MODE_IN_FLOATING);
  sda2.set_mode(GPIO_MODE_IN_FLOATING);
  sda3.set_mode(GPIO_MODE_IN_FLOATING);
  sda4.set_mode(GPIO_MODE_IN_FLOATING);
  sda5.set_mode(GPIO_MODE_IN_FLOATING);
  sda6.set_mode(GPIO_MODE_IN_FLOATING);
  sda7.set_mode(GPIO_MODE_IN_FLOATING);
  sda8.set_mode(GPIO_MODE_IN_FLOATING);
}

void CRGB_I2C::set_low_sda()
{
  sda0.set_mode(GPIO_MODE_OUT);
  sda1.set_mode(GPIO_MODE_OUT);
  sda2.set_mode(GPIO_MODE_OUT);
  sda3.set_mode(GPIO_MODE_OUT);
  sda4.set_mode(GPIO_MODE_OUT);
  sda5.set_mode(GPIO_MODE_OUT);
  sda6.set_mode(GPIO_MODE_OUT);
  sda7.set_mode(GPIO_MODE_OUT);
  sda8.set_mode(GPIO_MODE_OUT);
}

uint16_t CRGB_I2C::read_sda()
{
  uint16_t res = 0;

  if (sda0) res|=(1<<0);
  if (sda1) res|=(1<<1);
  if (sda2) res|=(1<<2);
  if (sda3) res|=(1<<3);
  if (sda4) res|=(1<<4);
  if (sda5) res|=(1<<5);
  if (sda6) res|=(1<<6);
  if (sda7) res|=(1<<7);
  if (sda8) res|=(1<<8);

  return res;
}
