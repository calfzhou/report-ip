#!/usr/bin/env bash

HOSTNAME=$(hostname)

git pull --prune
/sbin/ifconfig -a | grep -o 'inet \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' >$HOSTNAME.ip.txt
# scp $HOSTNAME.ip.txt gocalfco@gocalf.com:www/gocalfco/
git add $HOSTNAME.ip.txt
git commit -m "update $HOSTNAME $(date '+%Y%m%d-%H%M%S')"
git push -f
