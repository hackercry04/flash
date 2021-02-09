#!/bin/bash
echo "enter file name"
read file
input="$file"
while IFS= read -r line
do
  last=${line#*.}
  first=${line%%.*}
  url2=$last"/"$first
  echo $url2
  
done < "$input"
