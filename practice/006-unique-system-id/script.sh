#!/bin/bash
str="213t345ef45sa"
count=${#str}
for((i=0;i<$count;i++))
do
    # printf "%s,%s" $i $j
    # echo ${str:$i:1}
    myint=`printf ${str:$i:1}`
    tmp=`printf "%d" "'$myint"`
    if ((tmp > 47 && tmp < 58))
    then
        echo $myint"test"
    fi
done
