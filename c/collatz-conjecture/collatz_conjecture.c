#include "collatz_conjecture.h"

int steps(int start) {
  if (start <= 0)
    return ERROR_VALUE;

  unsigned int steps = 0u;

  for (; start > 1; steps++)
    start = (start % 2)
          ? (start * 3 + 1)
          : (start / 2);

  return steps;
}
