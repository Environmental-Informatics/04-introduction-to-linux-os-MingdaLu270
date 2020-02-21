## !/bin/bash

## directory information

## Mingda Lu

# same as backup script, user input directory, check if the directory exists

if [ $# != 1 ]
then
    echo 'input directory'
    exit
fi

if [ ! -d ./$1 ]
then
    echo 'the given directory does not seem to exist (possible typo?)'
    exit

fi


# directory info

n=`ls -l | wc -l`

echo number of files: $n

n1=`ls -l | grep '^d' | wc -l`

echo number of directories: $n1

echo biggest file:
ls -lSh | grep ^- | head -1 | awk '{print $9}'

echo most recently modified or created file:
ls -lt | grep ^- | head -1 | awk '{print $9}'

echo file owner:
ls -lhR
