#!/bin/bash
#modify file list in last 30 mins,then tar them
find ~ -mmin -30 -type f |xargs tar -czvf target.tar.gz
