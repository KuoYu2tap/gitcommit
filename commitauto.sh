#!/bin/bash

r=$(($RANDOM % 4))
PD=`pwd`
nowpwd="/root/gitcommit/"

cd $nowpwd
MSG=`python2.6 /root/show_ss_msg.py`
echo "key: $r\n" >> /root/commit_keys
while [[ $r -gt 0 ]];do
	echo -e "`free -m`\n">> $nowpwd"commits/""`date +%F_%T_%N`"_"$MSG.txt"
	r=$(($r-1))
done

git add -A
git commit -m "`date`"

git push
cd $PD
