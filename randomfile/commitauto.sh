#!/bin/bash
r=$RANDOM
nowpwd=`pwd`

url="~/gitcommit/randomfile/"

cd `echo $url`
echo $r>"$r.txt"
cd ..
git add -A
git commit -m "`date`"

cd `echo $pwd`
