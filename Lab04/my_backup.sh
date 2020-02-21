## !/bin/bash

## Back up a single project directory

## Mingda Lu


# user input directory

if [ $# !=1 ]

then
	echo 'input directory'
	exit
fi

# check if the directory exists

if [ ! -d ~/folder/$1 ]
then
	echo 'the given directory does not seem to exist (possible typo?)'
	exit
fi
date=`date +%F`

# do we already have a backup folder for today's date?

if [ -d ~/backup/$1_$date ]
then
	echo 'This project has already been backed up today, OVERWRITE?'
	read answer
	if [$answer != 'y']
	then
		exit
	fi
else
	mkdir ~/backup/$1_$date   # create the backup folder
fi

cp -R ~/folder/$1 ~/backup/$1_$date

echo backup of $1 completed
