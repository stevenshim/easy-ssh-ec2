#!/bin/bash

EC2_LIST=~/.ec2_list

aws ec2 describe-instances \
--query 'Reservations[].Instances[].[PublicIpAddress, Tags[?Key==`Name`]|[0].Value, InstanceId, InstanceType]' \
--filters "Name=instance-state-code,Values=16"  \
--output text | grep -v None > $EC2_LIST

cat $EC2_LIST