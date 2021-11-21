#!/bin/bash
if grep $1 /etc/passwd;
then 
#echo "the user $1 exists"
if [ -d "$2" ];
then
#echo "the dir $2 exists"
chown -R $1 $2
echo "owner of $2 changed to $1"
else 
echo "dir is wrong" 
fi

else
echo "user $1 doesn't exist"
fi
