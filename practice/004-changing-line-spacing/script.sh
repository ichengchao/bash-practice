#!/bin/bash
# is file exist
targetfile=$1
if [ -e "$targetfile" ]
then 
  echo  "file exist,filename:"$targetfile
else
  echo  "file not exist"
  exit 1
fi

#read line
while read line
do
  if [ -n "$line" ]
  then
    echo $line >>output.txt
    echo "\n\n" >>output.txt
  fi
done <$targetfile


