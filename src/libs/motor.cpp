#include "motor.h"

Motor motor;

Motor::Motor()
{
  on();
}

Motor::~Motor()
{

}

void Motor::on()
{
  //duty cycle 0
  OCR1A = 0;

  //duty cycle 0
  OCR1B = 0;

  //set non inverting mode
  TCCR1A  = (1 << COM1A1)|(1 << COM1B1);

  //fast 8 bit pwm mode
  TCCR1A |= (1 << WGM10);
  TCCR1B = (1 << WGM12);

  //start timer, 8x prescaler
  TCCR1B |= (1 << CS11);

  //start timer, 1x prescaler
  //TCCR1B |= (1 << CS10);

  //turn on bridge
  n_sleep = 1;
  a_way = 0;
  b_way = 0;
}

void Motor::off()
{
  OCR1A = 0;
  OCR1B = 0;

  //turn off bridge
  n_sleep = 0;
  a_way = 0;
  b_way = 0;
}


void Motor::run(int left_pwm, int right_pwm)
{
  //check way of motor
  if (left_pwm < 0)
  {
    b_way = 0;
    left_pwm = -left_pwm;
  }
  else
    b_way = 1;

  //saturation
  if (left_pwm > MOTOR_SPEED_MAX)
    left_pwm = MOTOR_SPEED_MAX;


  //check way of motor
  if (right_pwm < 0)
  {
    a_way = 0;
    right_pwm = -right_pwm;
  }
  else
    a_way = 1;

  //saturation
  if (right_pwm > MOTOR_SPEED_MAX)
    right_pwm = MOTOR_SPEED_MAX;

  //set pwm
  OCR1B = left_pwm;

  //set pwm
  OCR1A = right_pwm;
}
