#!/bin/bash
echo $$ >& 1
for (( i=0;i<=1000;i=i+1 ))
do
  line=$(ps | grep $0)
  echo 
  sleep 2
done
