#openwrt-backup
Ash script to backup OpenWrt config files.

##Requirements
Should work with any release of OpenWrt.
Tested on 15.05 Chaos Calmer.
```
opkg update
opkg install git-http
```
##Usage
The *generate_backups.ksh* script backs up the /etc directory using tar. The script runs out of root's crontab once a month.

`0 5 * * * /backup/generate_backups.ksh >/dev/null 2>&1`


The *download_backups.ksh* script is run on your local machine and uses rsync over SSH to download the files from the server (assuming you have SSH keys setup).
