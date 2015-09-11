#!/bin/bash
while getopts "p:t:" opt
do
    case $opt in
        p)
            processid=$OPTARG
            ;;
        t)
            sleeptime=$OPTARG
            ;;
        ?)
            echo "error"
            exit 1
            ;;
    esac
done
rowcount=`ps -p $processid |grep $processid |wc -l`
while true
do
    sleep $sleeptime
    if ((rowcount ==1))
    then
        echo "process running,id:"$processid
    else
        echo "process not exist!"
    fi 
done
if ((rowcount ==1))
then
    echo "process running,id:"$processid
else
    echo "process not exist!"
fi
