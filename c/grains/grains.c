#include "grains.h"

uint64_t square(uint8_t index) {
  return (index > 0 && index <= 64) ? 1ul << (index - 1) : 0;
}

uint64_t total(void) {
  return 18446744073709551615u;
}
