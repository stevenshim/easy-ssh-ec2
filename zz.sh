#!/bin/bash
EC2_LIST=~/.ec2_list
USER=ubuntu

LINE_NUM=1
echo -e "Num \t IP \t\t Name \t\t ID \t\t\t Type"
while read LINE 
do
  echo -e "$LINE_NUM \t $LINE"
  LINE_NUM=$(( $LINE_NUM+1 ))
done < $EC2_LIST

echo ""
echo -n "Enter Server Numer: " 
read READ_NUM 

LINE_NUM=1
IP=""

while read LINE
do
  if [ "$LINE_NUM" -eq "$READ_NUM" ]
  then
    IP=$(echo $LINE|awk '{print $1}' )
  fi
  LINE_NUM=$(( $LINE_NUM+1 ))
done < $EC2_LIST

echo -n "Enter ssh user (default: ubuntu) or 'enter' to use default. : "
read READ_USER

if [ ! -z $READ_USER ]
then
  USER=$READ_USER
fi

ssh $USER@$IP  
