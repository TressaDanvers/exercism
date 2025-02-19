#!/usr/bin/env bats
load bats-assert/assert_success
load bats-assert/assert_output

@test "Say Hi!" {
  run gawk -f hello-world.awk
  assert_success
  assert_output "Hello, World!"
}
