#!/bin/bash
# command ./tgw_inter_ssm.sh
aws ec2 describe-instances --filters 'Name=tag:Name,Values=IAD-VPC-Private-10.5.21.101' 'Name=instance-state-name,Values=running' --region us-east-1 | jq -r '.Reservations[].Instances[].InstanceId'
export IAD_VPC_Private_10_5_21_101=$(aws ec2 describe-instances --filters 'Name=tag:Name,Values=IAD-VPC-Private-10.5.21.101' 'Name=instance-state-name,Values=running' --region us-east-1 | jq -r '.Reservations[].Instances[].InstanceId')
echo "export IAD_VPC_Private_10_5_21_101=${IAD_VPC_Private_10_5_21_101}"| tee -a ~/.bash_profile