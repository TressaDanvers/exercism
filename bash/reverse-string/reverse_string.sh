#!/usr/bin/env sh
printf '%s\n' "$*" | awk '{
  s = "";
  for (i = length($0); i > 0; i--)
    s=s substr($0, i, 1);
  print s;
}'
