#!/bin/bash
str=`cat /etc/passwd|md5sum`
#str="da7415ee73649d098e9721f298d2ef85"
count=${#str}
unique_id=""
for((i=0; i<10; i++))
do
    # printf "%s,%s" $i $j
    # echo ${str:$i:1}
    myint=`printf ${str:$i:1}`
    tmp=`printf "%d" "'$myint"`
    if (( tmp > 47 && tmp < 58 ))
    then
        unique_id=$unique_id$myint
    fi
done
echo $unique_id
