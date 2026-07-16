#include "test-framework/unity.h"
#include "queen_attack.h"

void setUp(void) {}

void tearDown(void) {}

static void test_invalid_if_on_same_position(void) {
  position_t white_queen = { 2, 5 };
  position_t black_queen = { white_queen.column, white_queen.row };

  TEST_ASSERT_EQUAL(INVALID_POSITION, can_attack(white_queen, black_queen));
}

static void test_white_queen_must_have_row_on_board(void) {
  position_t white_queen = { 2, 8 };
  position_t black_queen = { 0, 0 };

  TEST_ASSERT_EQUAL(INVALID_POSITION, can_attack(white_queen, black_queen));
}

static void test_white_queen_must_have_column_on_board(void) {
  position_t white_queen = { 8, 2 };
  position_t black_queen = { 0, 0 };

  TEST_ASSERT_EQUAL(INVALID_POSITION, can_attack(white_queen, black_queen));
}

static void test_black_queen_must_have_row_on_board(void) {
  position_t white_queen = { 0, 0 };
  position_t black_queen = { 2, 10 };

  TEST_ASSERT_EQUAL(INVALID_POSITION, can_attack(white_queen, black_queen));
}

static void test_black_queen_must_have_column_on_board(void) {
  position_t white_queen = { 0, 0 };
  position_t black_queen = { 9, 4 };

  TEST_ASSERT_EQUAL(INVALID_POSITION, can_attack(white_queen, black_queen));
}

static void test_can_not_attack(void) {
  position_t white_queen = { 4, 2 };
  position_t black_queen = { 6, 6 };

  TEST_ASSERT_EQUAL(CAN_NOT_ATTACK, can_attack(white_queen, black_queen));
}

static void test_can_attack_on_same_row(void) {
  position_t white_queen = { 4, 2 };
  position_t black_queen = { 6, 2 };

  TEST_ASSERT_EQUAL(CAN_ATTACK, can_attack(white_queen, black_queen));
}

static void test_can_attack_on_same_column(void) {
  position_t white_queen = { 5, 4 };
  position_t black_queen = { 5, 2 };

  TEST_ASSERT_EQUAL(CAN_ATTACK, can_attack(white_queen, black_queen));
}

static void test_can_attack_on_first_diagonal(void) {
  position_t white_queen = { 2, 2 };
  position_t black_queen = { 4, 0 };

  TEST_ASSERT_EQUAL(CAN_ATTACK, can_attack(white_queen, black_queen));
}

static void test_can_attack_on_second_diagonal(void) {
  position_t white_queen = { 2, 2 };
  position_t black_queen = { 1, 3 };

  TEST_ASSERT_EQUAL(CAN_ATTACK, can_attack(white_queen, black_queen));
}

static void test_can_attack_on_third_diagonal(void) {
  position_t white_queen = { 2, 2 };
  position_t black_queen = { 1, 1 };

  TEST_ASSERT_EQUAL(CAN_ATTACK, can_attack(white_queen, black_queen));
}

static void test_can_attack_on_fourth_diagonal(void) {
  position_t white_queen = { 7, 1 };
  position_t black_queen = { 6, 0 };

  TEST_ASSERT_EQUAL(CAN_ATTACK, can_attack(white_queen, black_queen));
}

static void test_cannot_attack_if_falling_diagonals_only_same_when_reflected_across_longest_falling_diagonal(void) {
  position_t white_queen = { 1, 4 };
  position_t black_queen = { 5, 2 };

  TEST_ASSERT_EQUAL(CAN_NOT_ATTACK, can_attack(white_queen, black_queen));
}

int main(void) {
  UNITY_BEGIN();

  RUN_TEST(test_invalid_if_on_same_position);
  RUN_TEST(test_white_queen_must_have_row_on_board);
  RUN_TEST(test_white_queen_must_have_column_on_board);
  RUN_TEST(test_black_queen_must_have_row_on_board);
  RUN_TEST(test_black_queen_must_have_column_on_board);
  RUN_TEST(test_can_not_attack);
  RUN_TEST(test_can_attack_on_same_row);
  RUN_TEST(test_can_attack_on_same_column);
  RUN_TEST(test_can_attack_on_first_diagonal);
  RUN_TEST(test_can_attack_on_second_diagonal);
  RUN_TEST(test_can_attack_on_third_diagonal);
  RUN_TEST(test_can_attack_on_fourth_diagonal);
  RUN_TEST(test_cannot_attack_if_falling_diagonals_only_same_when_reflected_across_longest_falling_diagonal);

  return UNITY_END();
}
