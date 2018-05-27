#include <button.h>
#include <ir_sensor.h>
#include <motor.h>
#include <eeprom.h>
#include <timer.h>
#include <terminal.h>


TGpio<LED_GPIO, LED_PIN> led;

void motor_test()
{
  motor.on();
  motor.run(MOTOR_SPEED_MAX, 0);
  timer.delay_ms(1000);
  motor.run(-MOTOR_SPEED_MAX, 0);
  timer.delay_ms(1000);

  motor.run(0, MOTOR_SPEED_MAX);
  timer.delay_ms(1000);
  motor.run(0, -MOTOR_SPEED_MAX);
  timer.delay_ms(1000);

  motor.run(MOTOR_SPEED_MAX, MOTOR_SPEED_MAX);
  timer.delay_ms(1000);

  motor.run(-MOTOR_SPEED_MAX, -MOTOR_SPEED_MAX);
  timer.delay_ms(1000);

  motor.run(MOTOR_SPEED_MAX, -MOTOR_SPEED_MAX);
  timer.delay_ms(1000);

  motor.run(-MOTOR_SPEED_MAX, MOTOR_SPEED_MAX);
  timer.delay_ms(1000);


  motor.run(0, 0);
  motor.off();

}



int main()
{
  led = 0;
  button();

  for (unsigned char i = 0; i < 8; i++)
  {
    led = 1;
    timer.delay_ms(20);
    led = 0;
    timer.delay_ms(80);
  }


  motor_test();

  eeprom[123] = 132;

  while (1)
  {
    led = 1;
    timer.delay_ms(10);
    led = 0;
    timer.delay_ms(90);


    ir_sensors.read();
    for (unsigned char i = 0; i < IR_SENSORS_COUNT; i++)
      terminal << i << " ";
    terminal << "\n";
  }
}
