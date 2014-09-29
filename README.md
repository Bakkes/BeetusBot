BeetusBot
=========
Source code for BeetusBot

## install
note. $ means you can execute as a user, # means you need to execute as root (sudo)
clone the repository:

	$ git clone https://github.com/Bakkes/BeetusBot.git

make sure you have the required python dependecies with pip

	# pip install praw
	# pip install mysql-python

### compatibility
the bot was written in python 2.7 make sure you have this installed and set as the system default.

## start the bot

### manualy
to start the bot manualy go to the directory you cloned beetusbot in and type

	$ ./start.sh

if it doesn't work, make sure you have execute permissions on this file

### cron
To start the bot as a cron job use

	$ start.sh bot

to start the subscription service use

	$ start.sh subscription

to start them both use

	$ start.sh both


## TODO
Rewrite everything
