#!/bin/bash
r=$RANDOM
nowpwd=`pwd`

cd /root/gitcommit/randomfile

echo $r>"$r.txt"
cd ..
git add -A
git commit -m "`date`"

cd `echo $pwd`
