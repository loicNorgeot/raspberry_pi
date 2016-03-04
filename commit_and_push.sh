#!/bin/bash
cd $1

var=`ip addr show eth0 | grep inet`
vars=($var)
ip=${vars[1]}
da=`date +%Y%m%d_%Hh%M`
ho=`hostname`

git add .
git add -u
git commit -m \"backup_"$da"_"$ho"@"$ip"\"
git push -u origin master
#echo git commit -m \"backup_"$da"_"$ho"@"$ip"\"
