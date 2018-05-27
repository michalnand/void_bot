#include "ir_sensor.h"

IRSensors ir_sensors;


IRSensors::IRSensors()
{
  ir_led = 0;

  unsigned char i;
  for (i = 0; i < IR_SENSORS_COUNT; i++)
    result[i] = 7;

  // AREF = AVcc
  ADMUX = (1<<REFS0);

  // ADC enable, prescaler of 128x
  ADCSRA = (1<<ADEN)|(1<<ADPS2)|(1<<ADPS1)|(1<<ADPS0);

  // ADC enable, prescaler of 16x
  //ADCSRA = (1<<ADEN)|(1<<ADPS2);
}

IRSensors::~IRSensors()
{

}

void IRSensors::read()
{
  //ir led is off

  //read front light - when led is off
  result[IR_FRONT_LIGHT] = adc_read(0);

  //read front light amplified from OP and high pass filtered
  result[IR_FRONT_LIGHT_AMP] = adc_read(7);

  //read line sensors when IR lend is off
  result[IR_LEFT] = adc_read(5);
  result[IR_MIDDLE_LEFT] = adc_read(6);
  result[IR_MIDDLE_RIGHT] = adc_read(3);
  result[IR_RIGHT] = adc_read(2);


  //turn IR led on
  ir_led = 1;

  //short delay
  unsigned char loops = 10;
  while (loops--)
    __asm("nop");

  //read reflected light from surface and substract ambient light
  result[IR_LEFT] = adc_read(5) - result[IR_LEFT];
  result[IR_MIDDLE_LEFT] = adc_read(6) - result[IR_MIDDLE_LEFT];
  result[IR_MIDDLE_RIGHT] = adc_read(3) - result[IR_MIDDLE_RIGHT];
  result[IR_RIGHT] = adc_read(2) - result[IR_RIGHT];


  //read reflected light from front and substract ambient light
  result[IR_FRONT_DIST] = adc_read(0) - result[IR_FRONT_LIGHT];

  //turn IR led off
  ir_led = 0;


  //read on chip temperature sensor
  //result[IR_TEMPERATURE] = adc_read(8);
}


int adc_read(unsigned char ch)
{
  //select channel

  //temperature sensor
  if (ch == 8)
  {
    ADMUX = ch | (1<<REFS0) | (1<<MUX3);
  }
  else
  {
    //common channel
    ADMUX = (1<<REFS0)|ch;
  }
  // start single conversion
  ADCSRA |= (1<<ADSC);

  //wait for conversion done
  while(ADCSRA & (1<<ADSC))
    __asm("nop");


  // start single conversion
  ADCSRA |= (1<<ADSC);

  //wait for conversion done
  while(ADCSRA & (1<<ADSC))
    __asm("nop");

  return ADCW;
}
