#include "timer.h"


Timer timer;

volatile unsigned long int g_time;
volatile struct sTimer g_timers[TIMERS_COUNT];


Timer::Timer()
{
  unsigned char i;

  for (i = 0; i < TIMERS_COUNT; i++)
  {
    g_timers[i].callback = nullptr;
    g_timers[i].period = 0;
    g_timers[i].cnt = 0;
    g_timers[i].flag = 0;
    g_timers[i].main_loop_callback_enabled = false;
  }

  g_time = 0;

  // Set the Timer Mode to CTC
  TCCR0A |= (1 << WGM01);

  // Set the value that you want to count to
  OCR0A = ((uint32_t)F_CPU)/(64*TIMER_FREQUENCY) - 1;
  //249;

  // set prescaler to 64 and start the timer
  TCCR0B = (1 << CS01)|(1 << CS00);

  TIMSK0 |= (1 << OCIE0A);    //Set the ISR COMPA vect

  sei();
}

Timer::~Timer()
{


}

//@brief add periodic task
//@param callback task function callback, void my_func(void)
//@param period_ms executing period in miliseconds
//@param main_loop_callback_enabled if set to true (default) task function is executed in main loop
//if set to false, task function is executing inside interrupt rutine - and other interrupts are blocked
void Timer::add_task(void (*callback)(), unsigned int period_ms, bool main_loop_callback_enabled)
{
  char timer_idx = -1;

  for (unsigned char i = 0; i < TIMERS_COUNT; i++)
    if (g_timers[i].callback == nullptr)
      timer_idx = i;

  if (timer_idx != -1)
  {
    g_timers[(unsigned char)timer_idx].callback = callback;
    g_timers[(unsigned char)timer_idx].period = period_ms;
    g_timers[(unsigned char)timer_idx].cnt = period_ms;
    g_timers[(unsigned char)timer_idx].flag = 0;
    g_timers[(unsigned char)timer_idx].main_loop_callback_enabled = main_loop_callback_enabled;
  }
}


//@brief start real timer tasks executing
//run in main loop, all tasks set with main_loop_callback_enabled to true are
//executed in their period, and celared they flags;
//@warning - dont call test_and_clear for those tasks
void Timer::main()
{
  unsigned char i = 0;
  while (1)
  {
    if (g_timers[i].main_loop_callback_enabled == true) //task executing in main
      if (test_and_clear(i))
        if (g_timers[i].callback != nullptr)
          g_timers[i].callback();
    i++;
    if (i >= TIMERS_COUNT)
      i = 0;
  }
}


//@brief set period of timer_id
//flag will be set to nonzero value 1000/period_ms times per second
void Timer::set_period(unsigned char timer_id, unsigned int period_ms)
{
  cli();
  g_timers[timer_id].period = period_ms;
  g_timers[timer_id].cnt = period_ms;
  g_timers[timer_id].flag = 0;
  sei();
}

//@brief return nonzero value if timer_id elapsed it's period
//if flag is nonzero, is cleared automaticly
//when longer than one period isn't called this function, flag is incremented each
//period, until reach 255 value
unsigned int Timer::test_and_clear(unsigned char timer_id)
{
  unsigned char res = 0;

  cli();

  if (g_timers[timer_id].flag)
  {
    res = g_timers[timer_id].flag;
    g_timers[timer_id].flag = 0;
  }

  sei();

  return res;
}

unsigned long int Timer::get_time()
{
  volatile unsigned long int tmp;

  cli();
  tmp = g_time;
  sei();

  return tmp;
}

void Timer::delay_ms(unsigned long int ms_time)
{
  volatile unsigned long int time_stop = ms_time + get_time();
  while (get_time() < time_stop)
    __asm("nop");
}

void Timer::delay_loops(unsigned long int loops)
{
  while (loops--)
    __asm("nop");
}

ISR(TIMER0_COMPA_vect)
{
  for (unsigned char i = 0; i < TIMERS_COUNT; i++)
  {

    if (g_timers[i].cnt)
      g_timers[i].cnt--;
    else
    {
      g_timers[i].cnt = g_timers[i].period;

      if (g_timers[i].flag != 255)
        g_timers[i].flag++;


      if (g_timers[i].main_loop_callback_enabled == false)    //task executing in interrupt
        if (g_timers[i].callback != nullptr)
          g_timers[i].callback();
    }
  }

  g_time++;
}
