#!/bin/bash
r=$(($RANDOM % 3))
PD=`pwd`
nowpwd="/root/gitcommit/"

cd $nowpwd

while [[ $r -gt 0 ]];do
	echo -e "`free -m`\n">> $nowpwd"`date +%F_%T_%N`.txt"
	r=$(($r-1))
done

git add -A
git commit -m "`date`"

git push
cd $PD
