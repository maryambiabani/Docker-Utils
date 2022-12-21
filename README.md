# Docker-Utils
to add to yur job and exec job every hour
>> crontab -e
then write
0 * * * * /dockerBackup.sh >> BACKUP.log 2>&1
