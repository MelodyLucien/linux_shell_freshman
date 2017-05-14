#!/bin/bash

#labels for new added keys

labels=( $(cat labels.txt) )
keycodes=( $(cat keycodes.txt) )
number=${#labels[@]}

function write2KeyEventFile(){

startline=$1
filename=$2

#add comment
sed -i "${startline}a\\    //Hisense 2016-12-22  zhouhao2 add for low battery start" $filename

for i in `seq $number`
do

sed -i "$((startline+i))a\\    public static final int KEYCODE_${labels[$((i-1))]} =  ${keycodes[$((i-1))]}" $filename

done

sed -i "$((startline+number+1))a\\    //Hisense 2016-12-22 zhouhao2 add for low battery end" $filename

sed -i "$((startline+number+2))a\\ " $filename

}


fileNames=( $(awk '{print $1}' configure) )
lines=( $(awk '{print $2}' configure) )

for i in `seq ${#fileNames[@]}`
do
   echo ${fileNames[$i]}
done









