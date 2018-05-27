#include "math.h"

Math math;

Math::Math()
{
  __rnda__ = 1;
  __rndb__  = 2;
}

Math::~Math()
{

}

float Math::abs(float x)
{
  if (x < 0.0)
    x = -x;
  return x;
}

int Math::abs_int(int x)
{
  if (x < 0)
    x = -x;
  return x;
}

float Math::sgn(float x)
{
  if (x > 0.0)
    return 1.0;
  if (x < 0.0)
    return -1.0;
  return 0.0;
}

int Math::sgn_int(int x)
{
  if (x > 0)
    return 1;
  if (x < 0)
    return -1;
  return 0;
}

float Math::min(float a, float b)
{
  if (a < b)
    return a;
  return b;
}

int Math::min_int(int a, int b)
{
  if (a < b)
    return a;
  return b;
}

float Math::max(float a, float b)
{
  if (a > b)
    return a;
  return b;
}

int Math::max_int(int a, int b)
{
  if (a > b)
    return a;
  return b;
}


float Math::map(float x, float source_min, float source_max, float dest_min, float dest_max)
{
  return ((x - source_min)*(dest_max - dest_min))/(source_max - source_min) + dest_min;
}


int Math::map_int(int x, int source_min, int source_max, int dest_min, int dest_max)
{
  return ((x - source_min)*(dest_max - dest_min))/(source_max - source_min) + dest_min;
}


float Math::constrain(float x, float min_value, float max_value)
{
  if (x > max_value)
    x = max_value;

  if (x < min_value)
    x = min_value;

  return x;
}

int Math::constrain_int(int x, int min_value, int max_value)
{
  if (x > max_value)
    x = max_value;

  if (x < min_value)
    x = min_value;

  return x;
}



float Math::atan(float x )
{
  return PI*0.25*x - x*(abs(x) - 1.0)*(0.2447 + 0.0663*abs(x));
}

float Math::atan2(float y, float x )
{
  float res = 0.0;

  if (x > 0.0)
    res = atan(y/x);
  else
  if ((x < 0.0) && (y >= 0.0))
    res = atan(y/x) + PI;
  else
  if ((x < 0.0) && (y < 0.0))
    res = atan(y/x) - PI;
  else
  if ((x == 0.0) && (y > 0.0))
    res = PI/2.0;
  else
  if ((x == 0.0) && (y > 0.0))
    res = -PI/2.0;

  return res;
}

void Math::srand(uint32_t seed)
{
  __rnda__ = seed;
}

uint32_t Math::rand()
{
  __rnda__ = __rnda__ *(uint32_t)1103515245 + (uint32_t)12345;
	__rndb__ = (__rndb__ >> 1) ^ (-(__rndb__ & 1u) & 0xD0000001u);

	return (__rnda__ ^ __rndb__);
}

float Math::rnd()
{
  return (rand()%2000000)/1000000.0 - 1.0;
}
