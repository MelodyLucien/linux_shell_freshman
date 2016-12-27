#!/bin/bash
startline=$1
filename=$2
labels=( $(cat i2fl/labels.txt) )
keycodes=( $(cat i2fl/keycodes.txt ) )
number=${#labels[@]}

#add comment
sed -i "${startline}a\\    //Hisense 2016-12-22  zhouhao2 add for low battery start" $filename

for i in `seq $number`
do

sed -i "$((startline+i))a\\    public static final int KEYCODE_${labels[$((i-1))]} =  ${keycodes[$((i-1))]}" $filename

done

sed -i "$((startline+number+1))a\\    //Hisense 2016-12-22 zhouhao2 add for low battery end" $filename

sed -i "$((startline+number+2))a\\ " $filename
