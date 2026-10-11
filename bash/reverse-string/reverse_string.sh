#!/usr/bin/env sh
printf '%s\n' "$*" | awk '{
  for (i = length($0); i > 0; i--)
    printf "%s", substr($0, i, 1);
  printf "\n";
}'
