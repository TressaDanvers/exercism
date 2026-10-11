#include "test-framework/unity.h"
#include "hello_world.h"

void setUp(void) {}
void tearDown(void) {}

static void test_say_hi(void) {
  TEST_ASSERT_EQUAL_STRING("Hello, World!", hello());
}

int main(void) {
  UNITY_BEGIN();
  RUN_TEST(test_say_hi);
  return UNITY_END();
}
