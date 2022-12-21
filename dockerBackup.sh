#!/bin/bash
END=docker -ps --format "{{.Names}}" | awk '(NR>=1)' |wc -l
for ((i=1; i<= $END;i++))
do
   CONTAINER=`docker ps --format "{{.Names}}" | awk '(NR>=1)' | head -n $i 
|tail -1`

   IMAGE="dockerHubAccount/repoName:$CONTAINER_ `date+%Y%m%d%H`"
   docker commit $CONTAINER $IMAGE
   docker save $IMAGE >~/BACKUP_$CONTAINER_`date+%Y%m%H`
   docker push $IMAGE
done
find ~ -name "BACKUP_*.tar" -mtime +7 -exec rm -rf {}\;
find ~ -name "BACKUP.log -size +10M -exec rm -rf {}\;
 
