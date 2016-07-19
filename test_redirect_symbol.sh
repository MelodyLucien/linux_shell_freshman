#!/bin/bash
function echo2stdout(){
   #sleep 3
   echo yesd >& 1
   #echo -e "\n\r" >& 1
}

echo2stdout &
read -p "please input yes end with d" -d d result
echo "the result is $result \n" >& 1

