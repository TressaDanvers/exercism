#!/usr/bin/env bash
pushd "$(dirname "$(readlink "$BASH_SOURCE")")" >/dev/null
. support/src/error.bash
. support/src/lang.bash
. support/src/output.bash
. assert/src/assert.bash
. assert/src/assert_equal.bash
. assert/src/assert_failure.bash
. assert/src/assert_line.bash
. assert/src/assert_not_equal.bash
. assert/src/assert_output.bash
. assert/src/assert_regex.bash
. assert/src/assert_success.bash
. assert/src/refute.bash
. assert/src/refute_line.bash
. assert/src/refute_output.bash
. assert/src/refute_regex.bash
popd >/dev/null
