#!/usr/bin/env bats
load bats-extra

@test "an empty string" {
  run sh reverse_string.sh ""
  assert_success
  assert_output ""
}

@test "a word" {
  run sh reverse_string.sh "robot"
  assert_success
  assert_output "tobor"
}

@test "a capitalized word" {
  run sh reverse_string.sh "Ramen"
  assert_success
  assert_output "nemaR"
}

@test "a sentence with punctuation" {
  run sh reverse_string.sh "I'm hungry!"
  assert_success
  assert_output "!yrgnuh m'I"
}

@test "a palindrome" {
  run sh reverse_string.sh "racecar"
  assert_success
  assert_output "racecar"
}

@test "an even-sized word" {
  run sh reverse_string.sh "drawer"
  assert_success
  assert_output "reward"
}

@test "avoid globbing" {
  run bash reverse_string.sh " a *  b"
  assert_success
  assert_output "b  * a "
}
