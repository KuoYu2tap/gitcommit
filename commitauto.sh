#!/bin/bash
r=$(($RANDOM % 3))
nowpwd="/root/gitcommit/randomfile/"


while [[ $r -gt 0 ]];do
	echo -e "`free -m`\n">> $nowpwd"`date +%F_%T_%N`.txt"
	r=$(($r-1))
done

git add -A
git commit -m "`date`"
