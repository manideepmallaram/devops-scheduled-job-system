#!/bin/sh
echo "Backup started at $(date)" >> /var/log/cron.log
cp /app/scripts/data.txt /app/scripts/backup.txt
echo "Backup completed at $(date)" >> /var/log/cron.log
echo "------------------------" >> /var/log/cron.log