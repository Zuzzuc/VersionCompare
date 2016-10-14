#!/bin/bash
# License: The MIT License (MIT)
# Author Zuzzuc https://github.com/Zuzzuc/
if [[ $1 == $2 ]];then
	exit 0
fi
IFS=.
i ver1=($1) ver2=($2)
for ((i=${#ver1[@]}; i<${#ver2[@]}; i++));do
    ver1[i]=0
done
for ((i=0; i<${#ver1[@]}; i++));do
    if [[ -z ${ver2[i]} ]];then
        ver2[i]=0
    fi
    if ((10#${ver1[i]} > 10#${ver2[i]}));then
		exit 1
    fi
    if ((10#${ver1[i]} < 10#${ver2[i]}));then
        exit 2
    fi
done
exit