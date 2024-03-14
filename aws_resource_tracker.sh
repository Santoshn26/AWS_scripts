#!/bin/bash

#####################################
#Author: Santosh Nc
#Date: 14-March-2024
#
#Version: V1
#
#This script will report the AWS Usage
#######################################
#
#Resources to Track:
#  AWS S3
#  AWS EC2
#  AWS Lamda
#  AWS IAM Users
#

#Add Debug mode to the script
set -x

echo "----------------------------------------------------------"
echo "Listing the S3 Buckets"
#list s3 buckets
aws s3 ls

echo "----------------------------------------------------------"
echo "Listing the EC2 Instances"
#list EC2 Instances
#aws ec2 describe-instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "----------------------------------------------------------"
echo "Listing the AWS Lambda functions"
#list AWS Lamda 
aws lambda list-functions

echo "----------------------------------------------------------"
echo "Listing the IAM Users"
#list IAM users
aws iam list-users
