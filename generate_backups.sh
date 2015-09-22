#!/bin/sh

#This script should be run as root, since it's accessing /etc.

#Set variables
CONFIG_FOLDER=/etc
BACKUP_FOLDER=/backup/backup
HOSTNAME=`uci get system.@system[0].hostname`

#Make backup directory if it doesn't exist
mkdir -p ${BACKUP_FOLDER}

#Remove all old backups
rm /backup/backup/*.gz

#Backup installed package list to /etc
opkg list-installed | cut -f 1 -d ' ' > /etc/packages.txt

#Backup /etc
tar -czf ${BACKUP_FOLDER}/${HOSTNAME}_$(date +%Y%m%d_%H%M)_etc.tar.gz ${CONFIG_FOLDER} >/dev/null 2>&1

exit
