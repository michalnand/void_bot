#ifndef _MOTOR_H_
#define _MOTOR_H_

#include <kodama_config.h>
#include <gpio.h>

#define MOTOR_SPEED_MAX         ((int)255)



class Motor
{
  private:
    TGpio<TGPIOD, 5> n_sleep; //bridge sleep

    TGpio<TGPIOD, 6> a_way;   //way controll LEFT motor
    TGpio<TGPIOB, 0> b_way;   //way controll RIGHT motor
    TGpio<TGPIOB, 1> a_pwm;   //OC1A pwm  LEFT motor
    TGpio<TGPIOB, 2> b_pwm;   //OC1B pwm  RIGHT motor

  public:
    Motor();
    ~Motor();

    void on();
    void off();

    void run(int left_pwm, int right_pwm);
};

extern class Motor motor;


#endif
