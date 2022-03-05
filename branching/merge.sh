#!/bin/bash
# display command line options

count=1
count2=1

while [[ -n "$1" ]]; do
    echo "$count - $count2"
    echo "Parameter #$count = $1"
    count=$(( $count + 1 ))
    # shellcheck disable=SC2004
    count2=$(( $count2 + 1 ))
done