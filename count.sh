#!/bin/sh

NUM_DIRS=`find . -type d -print|wc -l`
NUM_FILES=`find . -type f -print|wc -l`


find . -type d -print0 | while read -d '' -r dir
do
  files=("$dir"/*)
  printf "%5d files in diretory %s\n" "${#files[@]}" "$dir"
done

echo
echo
echo "Searched $NUM_DIRS direftories for $NUM_FILES files..."
echo
