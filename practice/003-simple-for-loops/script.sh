#!/bin/bash
#simple for
for word in "v1" "v2" "v3"
do
  echo $word
  echo "aa"
done


#simple while
i=0
while ((i<5))
do
  echo $i
  ((i++))
done


#simple array
myarray=("v1" "v2" "v3")
for item in ${myarray[@]}
do 
  echo $item
done

for((i=0;i<=5;i++))
do
  echo $i
done
