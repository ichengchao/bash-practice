#!/bin/bash
count=0
serverarray=()
while read -r line
do
    ((count=count+1))
    echo $count": `echo -n $line | awk '{print $1}'` (`echo -n $line | awk '{print $2}'`)"
    serverarray[$count]=`echo -n $line | awk '{print $1}'`
done <serverlist

read -p "pls cloose server:" servernum
ssh ${serverarray[$servernum]}