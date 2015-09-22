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
The generate_backups.ksh script backs up the list of installed packages and /etc directory using tar. The script runs out of root's crontab once a month.

`0 2 5 * * /scripts/openwrt-backup/generate_backups.sh`

You can use another script to pull the tar.gz file to your destination location.
