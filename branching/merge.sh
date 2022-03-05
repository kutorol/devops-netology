#!/bin/bash
# display command line options

count=1
count2=1
# shellcheck disable=SC2066
for param in "$*"; do
    echo "$count - $count2"
    echo "\$* Parameter #$count = $param"
    count=$(( $count + 1 ))
    # shellcheck disable=SC2004
    count2=$(( $count2 + 1 ))
done