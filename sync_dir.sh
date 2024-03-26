#!/bin/bash
# inotifywait +  rsync
MON_DIR=/tmp
inotifywait -mq --format %f -e create $MON_DIR |\
while read files; do
  echo  rsync -avz $files admin@ip:/tmp
done
