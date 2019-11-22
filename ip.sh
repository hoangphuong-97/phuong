#!/bin/bash

if ! [ $# -eq 1 ]; then
      echo "provice one ag"
      exit 1
fi
echo " phuong"
VAR=$1
REGEX=[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}
 if ! [[ $VAR =~ $REGEX ]]; then
      echo " REGEX no exit"
      exit 2
fi 
echo " hoangphuong"
IP=${BASH_REMATCH[0]}
ping -c1 $IP 1>/dev/null
if [ $? -eq 0 ]; then
    echo " TRUE "
else
   echo "FAIL"
fi
