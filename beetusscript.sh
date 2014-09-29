#!/bin/bash
#find the directory of the script
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
    DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
    SOURCE="$(readlink "$SOURCE")"
    [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done

#dir contains now the directory of the script
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

LOG_FILE="$DIR/beetuslog/log-`date +%Y-%m-%d`.log"
DATE=DATE=`date +"%T"`

# if in the current directory the beetus log folder does not exists, make it
[ ! -d $DIR/beetuslog ] && mkdir $DIR/beetuslog && echo "creating log directory"

# create the log file (could have used touch)
echo $DATE >> $LOG_FILE

# disown the actual script and output the results to a log file
# ie the current shell is released and another process is forked to execute beetusbot
python $DIR/main.py >> $LOG_FILE 2>&1
echo "--------------" >> $LOG_FILE
exit

