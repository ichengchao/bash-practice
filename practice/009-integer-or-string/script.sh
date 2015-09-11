#!/bin/bash
(a=`expr $1 + 0` && echo "this is a Integer") || echo "this is a String" 
