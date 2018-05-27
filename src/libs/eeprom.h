#ifndef _EEPROM_H_
#define _EEPROM_H_

#include <avr.h>

#define EEPROM_SIZE           ((unsigned int)1024)

#define EEPROM_CONFIG_SIZE    ((unsigned int)32)
#define EEPROM_USER_SIZE      (EEPROM_SIZE-EEPROM_CONFIG_SIZE)

#define EEPROM_USER_START       0
#define EEPROM_CONFIG_START     (EEPROM_USER_SIZE)


class EEPROM_ITEM
{
  public:
    unsigned char value;
    unsigned int addr;

  public:
    EEPROM_ITEM()
    {
      value = 0;
      addr = 0;
    }

    ~EEPROM_ITEM()
    {

    }

    unsigned char& operator=(unsigned char value)
    {
      write(addr, value);
      this->value = read(addr);
      return this->value;
    }

    operator unsigned char()
    {
      this->value = read(addr);
      return this->value;
    }

    operator int()
    {
      this->value = read(addr);
      return this->value;
    }

    private:
      void write(unsigned int addr, unsigned char value)
      {
        EEAR = addr;
        EEDR = value;
        EECR |= (1<<EEMPE);
        EECR |= (1<<EEPE);

        // wait until write done
        while(EECR & (1<<EEPE))
          __asm("nop");
      }

      unsigned char read(unsigned int addr)
      {
        // wait until write done
        while(EECR & (1<<EEPE))
          __asm("nop");

        EEAR = addr;
        EECR |= (1<<EERE);
        return EEDR;
      }
};


class EEPROM
{
  private:
    class EEPROM_ITEM item;

  public:
    EEPROM()
    {

    }

    ~EEPROM()
    {

    }

    class EEPROM_ITEM& operator[] (unsigned int addr)
    {
      item.addr = addr;
      return item;
    }

    void write(unsigned int addr, unsigned char value)
    {
      EEAR = addr;
      EEDR = value;
      EECR |= (1<<EEMPE);
      EECR |= (1<<EEPE);

      // wait until write done
      while(EECR & (1<<EEPE))
        __asm("nop");
    }

    unsigned char read(unsigned int addr)
    {
      // wait until write done
      while(EECR & (1<<EEPE))
        __asm("nop");

      EEAR = addr;
      EECR |= (1<<EERE);
      return EEDR;
    }


    unsigned int size()
    {
      return EEPROM_SIZE;
    }
};

extern EEPROM eeprom;

#endif
