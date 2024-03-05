#!/bin/bash

backuppath=/var/calculate/backup/mongodb

find $backuppath -maxdepth 1 -type d -mtime +10 |
while read line;
do
	if [[ $line =~ ^$backuppath/.* ]]
	then
		rm -r $line
	fi
done

curbackup="$backuppath/$(date "+%Y%m%d_%H%M")"
mkdir -p $curbackup
cd $curbackup
/usr/bin/mongodump
