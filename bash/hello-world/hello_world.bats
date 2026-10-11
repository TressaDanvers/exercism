#!/usr/bin/env bats
load bats-extra
@test "Say Hi!" {
  run sh hello_world.sh
  assert_success
  assert_output "Hello, World!"
}

