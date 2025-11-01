#!/bin/bash


# Author:pooja
# Date:01/11/25
#
# version:V1
# This script will report the AWS resource usage



set -x


#aws s3 list
echo "print s3 bucket list"
aws s3 ls >log

echo "aws ec2 instances list"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'>>log



#list aws lambda
echo "aws lambda functions"
aws lambda list-functions >>log

#aws IAM users
echo "IAM users list"
aws iam list-users >>log
