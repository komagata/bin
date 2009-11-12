#!/bin/sh

if [ ! $1 ] || [ ! $2 ]
then
  echo "Usage: backup.sh REMOTE_DIR BACKUP_DIR"
  exit 1
fi

REMOTE_DIR=$1
BACKUP_DIR=$2
TODAY=`/bin/date '+%Y%m%d'`
YESTERDAY=`/bin/date --date='1 day ago' '+%Y%m%d'`

[ -f $BACKUP_DIR/$YESTERDAY ] || mkdir -p $BACKUP_DIR/$YESTERDAY
[ -f $BACKUP_DIR/$TODAY ] || mkdir -p $BACKUP_DIR/$TODAY
cd $BACKUP_DIR/$TODAY && rsync -atrzv --delete --link-dest=../$YESTERDAY $REMOTE_DIR .
