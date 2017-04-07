#!/bin/sh

# default to 3 lines of output
lines="${1:-3}"

# First, put a random number at the begginning of each line.
while read line; do
  echo "`jot -r 1 1 1000000` $line"
done < input.txt > stage1.txt

# Next, sort by the random number.
sort -n stage1.txt > stage2.txt

# Last, remove the number from the start of each line.
sed -r 's/^[0-9]+ //' stage2.txt > stage3.txt

# Show our output
head -n "$lines" stage3.txt

# Clean up
rm stage1.txt stage2.txt stage3.txt
