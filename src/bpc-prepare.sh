#!/bin/bash

rm -rf ../think
rsync -a -f"+ */" -f"- *" . ../think

for i in `cat src.list`
do
    echo "phptobpc $i"
    phptobpc $i > ../think/$i
done
cp src.list Makefile ../think/
