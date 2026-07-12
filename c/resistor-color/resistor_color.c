#include "resistor_color.h"
#include <stdlib.h>

static resistor_band_t all_colors[10] = COLORS;

int color_code(resistor_band_t color) {
  return (int) color;
}

resistor_band_t* colors(void) {
  return all_colors;
}
