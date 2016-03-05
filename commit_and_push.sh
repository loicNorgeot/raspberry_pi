#!/bin/bash
# $1 = root directory of git repository
# $2 = web link to the repository

# git config --global user.name "YOUR NAME"
# git config --global user.email "YOUR EMAIL ADDRESS"
# ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

if ! [ -z "$1" ]; then
    	if ! [ -d $1 ]; then
   		echo $1 "is not a directory"
        	exit 1
	fi
else
	exit 1
fi

cd $1

if ! [ -d .git/ ]; then
        echo "git is not initialized in" $1
	if [ -z "$2" ]; then
		echo "no repository adress specified"
		exit 1
	fi
	git init
	touch .gitignore
	if ! [ -e README.md ]; then
		echo "creating README.md"
		echo "#" ${PWD##*/} > README.md 
	fi
	git remote add origin $2
fi

var=`ip addr show eth0 | grep inet`
vars=($var)
ip=${vars[1]}
da=`date +%Y%m%d_%Hh%Mm%Ss`
ho=`hostname`

git add .
git add -u
git commit -m \"backup_"$da"_"$ho"@"$ip"\"
git push -u origin master

#echo git commit -m \"backup_"$da"_"$ho"@"$ip"\"
