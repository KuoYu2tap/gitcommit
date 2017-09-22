#!/bin/bash
r=$RANDOM
url="~/gitcommit/commitfile"
echo $r>"$url/$r.txt"
nowpwd=`pwd`
cd $url
git add -A

git commit -m "`date`"

cd $pwd
