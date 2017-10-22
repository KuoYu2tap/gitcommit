#!/bin/bash
r=$RANDOM
nowpwd=`pwd`

cd /root/gitcommit/randomfile

if [[ $(($r%13))!=0 ]];
then
	i=$(($r%3))
	while [[ -z i ]];do
		echo -e $r"`date`\n">>"$r.txt"
		i=$(($i-1))
	done

	cd ..
	git add -A
	git commit -m "`date`"
fi

cd `echo $pwd`
