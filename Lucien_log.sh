#!/system/bin/bash

#filter key related
function fkey(){
    logcat -v threadtime | grep -risnE 'WindowManager|Global|Inputreader|inputDisp' 
}

#filter current focus activity
function facf(){
    dumpsys activity activities|grep -risn focus
}

#filter broadcast History into usbdisk
function fbcs(){
    if [ -z "$2" ];then
       dumpsys activity broadcasts > /mnt/usbdisk/bcs.txt
	else
	   dumpsys activity broadcasts > /mnt/usbdisk/$2.txt
}

# filter all the keyword from paramters
function grep(){
    #replace the words delimted by whitespace to '|'
    result=
    logcat -v threadtime | grep -risnE '$result' 
}

function fanr(){
    echo "fanr"
}

function flkm(){
    echo "flkm"
}

function commom_log(){
    echo "commom_log"
}

case $1 in
   "fkey")
      fkey;
      ;;
    "fanr")
      fanr;
     ;;
    "flkm")
      flkm;
     ;;
	 "fac")
	  fac
	 ;;
    *)
     echo "i don't know your words"
     ;;
esac
