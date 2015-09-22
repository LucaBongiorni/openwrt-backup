#!/bin/sh

#This script should be run as root, since it's accessing /etc.

#Set variables
CONFIG_FOLDER=/etc
BACKUP_FOLDER=/backup/backup
HOSTNAME=`uci get system.@system[0].hostname`

echo ${MAXAGE}
#Make backup directory if it doesn't exist
mkdir -p ${BACKUP_FOLDER}

#Backup /etc
tar -czf ${BACKUP_FOLDER}/${HOSTNAME}_$(date +%Y%m%d_%H%M)_etc.tar.gz /etc >/dev/null 2>&1

#Remove backups older than 7 days
#find ${BACKUP_FOLDER} -name "*.gz" -type f -mtime +7 -exec rm {} \;

exit

