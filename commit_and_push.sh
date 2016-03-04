cd $1
git add .
git commit -m \"backup-`date +%Y-%m-%d-%H:%M:%S`\"
git push -u origin master
#echo git commit -m \"backup-`date +%Y-%m-%d-%H:%M:%S`\"
