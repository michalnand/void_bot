#ifndef _GPIO_H_
#define _GPIO_H_

#include "kodama_config.h"

#define GPIO_MODE_OUT             0
#define GPIO_MODE_IN_FLOATING     1
#define GPIO_MODE_IN_PULLUP       2


// #define TPORTA    ((unsigned char)0)
#define TGPIOA    ((unsigned char)1)      //NOT used on atmega328
#define TGPIOB    ((unsigned char)1)
#define TGPIOC    ((unsigned char)2)
#define TGPIOD    ((unsigned char)3)



template <unsigned char port_name, unsigned char pin, unsigned char mode = GPIO_MODE_OUT> class TGpio
{
  public:
    TGpio()
    {
      if (port_name == TGPIOB)
      {
        if (mode)
          DDRB&=~(1<<pin);
        else
          DDRB|= (1<<pin);

        if (mode == GPIO_MODE_IN_PULLUP)
          PORTB|= (1<<pin);
      }

      if (port_name == TGPIOC)
      {
        if (mode)
          DDRC&=~(1<<pin);
        else
          DDRC|= (1<<pin);

        if (mode == GPIO_MODE_IN_PULLUP)
          PORTC|= (1<<pin);
      }

      if (port_name == TGPIOD)
      {
        if (mode)
          DDRD&=~(1<<pin);
        else
          DDRD|= (1<<pin);

        if (mode == GPIO_MODE_IN_PULLUP)
          PORTD|= (1<<pin);
      }
    }

    inline void set_mode(const unsigned char pin_mode)
    {
      if (port_name == TGPIOB)
      {
        if (pin_mode)
          DDRB&=~(1<<pin);
        else
          DDRB|= (1<<pin);

        if (pin_mode == GPIO_MODE_IN_PULLUP)
          PORTB|= (1<<pin);
      }

      if (port_name == TGPIOC)
      {
        if (pin_mode)
          DDRC&=~(1<<pin);
        else
          DDRC|= (1<<pin);

        if (pin_mode == GPIO_MODE_IN_PULLUP)
          PORTC|= (1<<pin);
      }

      if (port_name == TGPIOD)
      {
        if (pin_mode)
          DDRD&=~(1<<pin);
        else
          DDRD|= (1<<pin);

        if (pin_mode == GPIO_MODE_IN_PULLUP)
          PORTD|= (1<<pin);
      }
    }

    void write(int value)
    {
        if (port_name == TGPIOB)
        {
          if (value)
              PORTB|= (1<<pin);
          else
              PORTB&= ~(1<<pin);
        }

        if (port_name == TGPIOC)
        {
          if (value)
              PORTC|= (1<<pin);
          else
              PORTC&= ~(1<<pin);
        }

        if (port_name == TGPIOD)
        {
          if (value)
              PORTD|= (1<<pin);
          else
              PORTD&= ~(1<<pin);
        }
    }

    int read()
    {
        if (port_name == TGPIOB)
          return (PINB&(1<<pin)) != 0;

        if (port_name == TGPIOC)
          return (PINC&(1<<pin)) != 0;

        if (port_name == TGPIOD)
          return (PIND&(1<<pin)) != 0;

        return 0;
    }

    TGpio& operator= (int value)
    {
      write(value); return *this;
    }

    TGpio& operator= (TGpio& rhs)
    {
      return write(rhs.read());
    };

    operator int()
    {
      return read();
    };
};


#endif
