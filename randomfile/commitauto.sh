#!/bin/bash
r=$RANDOM
url="~/gitcommit/randomfile"
echo $r>"$url/$r.txt"
nowpwd=`pwd`
cd $url
git add -A

git commit -m "`date`"

cd $pwd
