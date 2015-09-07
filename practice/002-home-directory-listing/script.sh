#!/bin/bash
ls -lR ../>filelist.txt
tar -czvf filelist.tgz filelist.txt
rm -rf filelist.txt

