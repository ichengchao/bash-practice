#!/bin/bash
function isInteger()
{
    #((expr $1 + 0) && return 0)||return 1
    if expr $1 + 0
    then
        return 0
    else
        return 1
    fi
}
isInteger $1
result=$?
if ((result==0))
then
    echo "this is a Integer"
else
    echo "this is a String"
fi
