# Docker-Utils
to add to your job and exec script each hour

crontab -e



then write


0 * * * * /dockerBackup.sh >> BACKUP.log 2>&1
