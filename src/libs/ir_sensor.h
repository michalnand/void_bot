#ifndef _IR_SENSORS_H_
#define _IR_SENSORS_H_

#define IR_SENSORS_COUNT      8

#define IR_LEFT               0 //on ADC5
#define IR_MIDDLE_LEFT        1 //on ADC6
#define IR_MIDDLE_RIGHT       2 //on ADC3
#define IR_RIGHT              3 //on ADC2
#define IR_FRONT_LIGHT        4 //on ADC0
#define IR_FRONT_LIGHT_AMP    5 //on ADC7
#define IR_FRONT_DIST         6 //on ADC0
#define IR_TEMPERATURE        7 //on ADC8

#include <kodama_config.h>
#include <gpio.h>



class IRSensors
{
  public:
    int result[IR_SENSORS_COUNT];

    TGpio<TGPIOC, 1> ir_led;

  public:
    IRSensors();
    ~IRSensors();

    void read();
};

int adc_read(unsigned char ch);


extern IRSensors ir_sensors;


#endif
