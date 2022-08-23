#!/bin/sh
set -e

if [ "$1" == "now" ]; then
  exec ./curl.sh
else
	echo "$CRON_SCHEDULE /app/curl.sh" >> /var/spool/cron/crontabs/root
  crond -l 2 -f # log's level = 3 and in force ground
fi