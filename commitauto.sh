#!/bin/bash

r=$(($RANDOM % 4))
PD=`pwd`
nowpwd="/root/gitcommit/"

cd $nowpwd
echo "key: $r\n" >> /root/commit_keys
while [[ $r -gt 0 ]];do
	echo -e "`free -m`\n">> $nowpwd"commits/""`date +%F_%T_%N`.txt"
	r=$(($r-1))
done

git add -A
git commit -m "`date`"

git push
cd $PD
