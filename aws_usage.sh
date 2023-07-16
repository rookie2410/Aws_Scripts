#!/bin/bash

###################################################################
#Script Name	:    AWS Service Usage                                                                                          
#Description	:    Simplifies the process of monitoring and managing AWS services. This script provides detailed information and counts of all the service instances being used. By executing the script, you can effortlessly obtain an overview of the AWS services in use, eliminating the need for manual inspection through the AWS console. This solution streamlines the tracking process and reduces the burden of manual effort, allowing for more efficient management of AWS resources.                                                                                                                                                               
#Version        :1.3v
#Author         :Roshan Gupta                                                
#Email         	:iamguptaroshan@gmail.com                                           
###################################################################

# EC2 Usage
ec2_instances=$(aws ec2 describe-instances --query 'Reservations[*].Instances[*].[InstanceId]' --output text)
ec2_count=$(echo "$ec2_instances" | wc -w)  # Counting the number of EC2 instances

#EC2 Name 
ec2_name=$(aws ec2 describe-instances --query "Reservations[*].Instances[*].Tags[*].Value" --output text)


# S3 Usage
s3_buckets=$(aws s3api list-buckets --query 'Buckets[].Name' --output text)
s3_count=$(echo "$s3_buckets" | wc -w)  # Counting the number of S3 buckets

# Lambda Usage
lambda_functions=$(aws lambda list-functions --query 'Functions[*].[FunctionName]' --output text)
lambda_count=$(echo "$lambda_functions" | wc -w)  # Counting the number of Lambda functions

# SNS Usage
sns_topics=$(aws sns list-topics --query 'Topics[].TopicArn' --output text)
sns_count=$(echo "$sns_topics" | wc -w)  # Counting the number of SNS topics

# IAM Usage
iam_users=$(aws iam list-users --query 'Users[*].[UserName]' --output text)
iam_count=$(echo "$iam_users" | wc -w)  # Counting the number of IAM users


# Output Usage Information
echo "AWS Usage Information"
echo "---------------------"
echo "EC2 Instances: $ec2_count"        # Displaying the count of EC2 instances
echo "EC2 Names:"                       # Displaying the names of EC2 instances 
echo $ec2_name 
echo "S3 Buckets: $s3_count"            # Displaying the count of S3 buckets
echo "Lambda Functions: $lambda_count"  # Displaying the count of Lambda functions
echo "SNS Topics: $sns_count"           # Displaying the count of SNS topics
echo "IAM Users: $iam_count"            # Displaying the count of IAM users

# Billing Cost - Monthly
aws ce get-cost-and-usage --time-period Start=2023-07-01,End=2023-07-12 --granularity MONTHLY --metrics "BlendedCost" "UnblendedCost" "UsageQuantity" --query "ResultsByTime[*].Total" --output table



