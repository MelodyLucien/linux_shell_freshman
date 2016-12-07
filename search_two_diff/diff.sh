#!/bin/bash

#detect $1 has but $2 not

echo "the files you type in:$1,$2"
echo "detect $1 has but $2 don't has"
echo $1 $2

f1_lines=$(cat $1)
for i in $f1_lines ;
do
  res=$(grep -c "^${i}$" $2)
  if [ ! -z "$res" ];then
    echo $i
  fi
done

