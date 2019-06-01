#!/bin/bash
#~/script/ec2.sh
EC2_LIST=~/.ec2_list

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
ip="localhost"

while read LINE
do
  if [ "$LINE_NUM" -eq "$READ_NUM" ]
  then
    ip=$(echo $LINE|awk '{print $1}' )
  fi
  LINE_NUM=$(( $LINE_NUM+1 ))
done < $EC2_LIST

ssh ubuntu@$ip  
