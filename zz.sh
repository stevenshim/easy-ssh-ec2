#!/bin/bash
EC2_LIST=~/.ec2_list
USER=ubuntu

LINE_NUM=1
ARRAY=()
echo -e "Num \t IP \t\t Name \t\t ID \t\t\t Type"
while read LINE 
do
  echo -e "$LINE_NUM \t $LINE"
  LINE_NUM=$(( $LINE_NUM+1 ))
  IP=$(echo $LINE | awk '{print $1}' )
  ARRAY+=($IP)
done < $EC2_LIST


echo ""
echo -n "Enter Server Numer: " 
read READ_NUM 

echo -n "Enter ssh user (default: ubuntu) or 'enter' to use default. : "
read READ_USER

if [ ! -z $READ_USER ]
then
  USER=$READ_USER
fi

echo "ssh $USER@${ARRAY[$READ_NUM-1]}"

ssh $USER@${ARRAY[$READ_NUM-1]} 
