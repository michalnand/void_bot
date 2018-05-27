#include "button.h"


#include <eeprom.h>
#include <motor.h>
#include <ir_sensor.h>
#include <math.h>

void button()
{
  //toogle eeprom byte after each reset
  unsigned char b = eeprom.read(EEPROM_CONFIG_START);
  b++;
  eeprom.write(EEPROM_CONFIG_START, b);

  if (b&1)
  {
    while (1)
    {
      cli();

      motor.off();

      set_sleep_mode(SLEEP_MODE_PWR_DOWN);
      sleep_mode();
      sleep_cpu();
    }
  }

  //use stored eeprom value and adc0 noise from bit0 as random seed
  uint32_t seed = 0;
  for (unsigned char i = 0; i < 32; i++)
  {
    seed<<= 1;
    seed|= adc_read(0)&1;
  }
  seed+= b;

  math.srand(seed);



}
