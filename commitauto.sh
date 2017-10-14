#!/bin/bash
r=$RANDOM
nowpwd=`pwd`

cd /root/gitcommit/randomfile

if [[ $r%13!=0 ]];
then
	echo -e $r"`date`\n">>"$r.txt"
	cd ..
	git add -A
	git commit -m "`date`"
fi

cd `echo $pwd`
