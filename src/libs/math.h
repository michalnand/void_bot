#ifndef _MATH_H_
#define _MATH_H_

#include <kodama_config.h>
#include <stdint.h>

//mathematical functions library
//defined as global static class Math math
//usage :
//extern class Math math;
//math.method(param)


#define PI      ((float)3.141592654)

class Math
{
  private:
    uint32_t __rnda__, __rndb__;

  public:
    Math();
    ~Math();

    //return absolute value of x
    float abs(float x);
    int abs_int(int x);

    //return signum function (-1, 0 or 1)
    float sgn(float x);
    int sgn_int(int x);

    //return lower from a, b numbers
    float min(float a, float b);
    int min_int(int a, int b);

    //return higher from a, b numbers
    float max(float a, float b);
    int max_int(int a, int b);

    //map value x from interval <source_min, source_max> to <dest_min, dest_max> using linear transformation
    float map(float x, float source_min, float source_max, float dest_min = -1.0, float dest_max = 1.0);
    int map_int(int x, int source_min, int source_max, int dest_min = -127, int dest_max = 127);

    //limit value range into <min_value, max_value>
    float constrain(float x, float min_value, float max_value);
    int constrain_int(int x, int min_value, int max_value);

    //TODO
    float atan(float x);
    float atan2(float y, float x);

    void srand(uint32_t seed);
    uint32_t rand();
    float rnd();
};

extern Math math;

#endif
