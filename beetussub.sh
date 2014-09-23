#!/bin/bash

LOG_FILE="/home/beetus/beetussublog/log-`date +%Y-%m-%d`.txt"
DATE=DATE=`date +"%T"`

cd /home/beetus/BeetusBot

echo $DATE >> $LOG_FILE
/usr/bin/python /home/beetus/BeetusBot/subscription.py >> $LOG_FILE 2>&1
echo "--------------" >> $LOG_FILE
exit

