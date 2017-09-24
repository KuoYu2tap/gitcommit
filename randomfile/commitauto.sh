#!/bin/bash
r=$RANDOM
nowpwd=`pwd`

cd /root/gitcommit/randomfile

echo -e $r "`date`\n">>"$r.txt"
cd ..
git add -A
git commit -m "`date`"
git push
cd `echo $pwd`
