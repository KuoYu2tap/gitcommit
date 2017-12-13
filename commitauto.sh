#!/bin/bash
r=$(($RANDOM % 3 + 1))
nowpwd="/root/gitcommit/randomfile/"


while [[ $r -gt 0 ]];do
	echo -e "`free -m`\n">> $nowpwd"`date`.txt"
	r=$(($r-1))
done

git add -A
git commit -m "`date`"

