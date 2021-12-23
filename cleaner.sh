#!/bin/sh

TODAY=`/bin/date '+%Y%m%d'`

mkdir -p ~/backup/$TODAY
mv ~/Downloads/* ~/backup/$TODAY/
