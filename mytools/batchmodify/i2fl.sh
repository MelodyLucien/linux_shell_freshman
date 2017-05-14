#!/bin/bash

#labels for new added keys

labels=( $(cat labels.txt) )
keycodes=( $(cat keycodes.txt) )
number=${#labels[@]}


date=$(date +%F)

function write2KeyEventFile(){

    echo write2KeyEventFile $1 $2

	startline=$1
	filename=$2

	#add comment
	sed -i "${startline}a\\   //mylogo ${date}  zhouhao2 add for low battery start" $filename

	for i in `seq $number`
	do

	sed -i "$((startline+i))a\\    public static final int KEYCODE_${labels[$((i-1))]} =  ${keycodes[$((i-1))]}" $filename

	done

	sed -i "$((startline+number+1))a\\    //mylogo ${date} zhouhao2 add for low battery end" $filename

	sed -i "$((startline+number+2))a\\ " $filename

}

function addStartComments(){
    startline=$1
    filename=$2
    sed -i "${startline}a\\   //mylogo ${date}  zhouhao2 add for low battery start" $filename

}


function write2InputEventLabels(){
    echo write2InputEventLabels $1 $2

}


function write2Keycodes(){
   echo write2Keycodes $1 $2 

}

function write2VendoridProductid(){
   echo write2VendoridProductid $1 $2

}

function write2IAttrs(){
  echo write2IAttrs $1 $2
}

function write2SystemCurrent(){
  echo write2SystemCurrent $1 $2
}

function write2Current(){

  echo write2Current $1 $2
}



fileLabels=( $(awk '{print $1}' configure) )
fileNames=( $(awk '{print $2}' configure) )
lines=( $(awk '{print $3}' configure) )

for i in `seq ${#fileNames[@]}`
do
  case ${fileLabels[$((i-1))]} in
  	"keyevent")
        write2KeyEventFile ${lines[$((i-1))]}  ${fileNames[$((i-1))]} 
    ;;
    "inputeventlabels")
        write2InputEventLabels ${lines[$((i-1))]}  ${fileNames[$((i-1))]} 
    ;;
    "keycodes")
        write2Keycodes ${lines[$((i-1))]}  ${fileNames[$((i-1))]}  
    ;;
    "vendorproduct")
        write2VendoridProductid ${lines[$((i-1))]}  ${fileNames[$((i-1))]} 
    ;;
    "attrs")
        write2IAttrs ${lines[$((i-1))]}  ${fileNames[$((i-1))]} 
    ;;
    "systemapi")
        write2SystemCurrent ${lines[$((i-1))]}  ${fileNames[$((i-1))]} 
    ;;
    "currentapi")
        write2Current ${lines[$((i-1))]}  ${fileNames[$((i-1))]} 
    ;;
   esac
done











