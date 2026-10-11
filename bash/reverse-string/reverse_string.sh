#!/usr/bin/env sh
rev () { awk '{ for (i = length($0); i > 0; i--) printf "%s", substr($0, i, 1); printf "\n" }'; }
printf '%s\n' "$*" | rev
