#!/bin/bash
# command ./tgw_intra_ssm.sh
aws ec2 describe-instances --filters 'Name=tag:Name,Values=Seoul-VPC-PART-PRD-Private-10.11.21.101' 'Name=instance-state-name,Values=running' | jq -r '.Reservations[].Instances[].InstanceId'
export Seoul_VPC_PART_PRD_Private_10_11_21_101=$(aws ec2 describe-instances --filters 'Name=tag:Name,Values=Seoul-VPC-PART-PRD-Private-10.11.21.101' 'Name=instance-state-name,Values=running' | jq -r '.Reservations[].Instances[].InstanceId')
echo "export Seoul_VPC_PART_PRD_Private_10_11_21_101=${Seoul_VPC_PART_PRD_Private_10_11_21_101}"| tee -a ~/.bash_profile

aws ec2 describe-instances --filters 'Name=tag:Name,Values=Seoul-VPC-PART-STG-Private-10.12.21.101' 'Name=instance-state-name,Values=running' | jq -r '.Reservations[].Instances[].InstanceId'
export Seoul_VPC_PART_PRD_Private_10_12_21_101=$(aws ec2 describe-instances --filters 'Name=tag:Name,Values=Seoul-VPC-PART-STG-Private-10.12.21.101' 'Name=instance-state-name,Values=running' | jq -r '.Reservations[].Instances[].InstanceId')
echo "export Seoul_VPC_PART_PRD_Private_10_12_21_101=${Seoul_VPC_PART_PRD_Private_10_12_21_101}"| tee -a ~/.bash_profile

aws ec2 describe-instances --filters 'Name=tag:Name,Values=Seoul-VPC-PART-DEV-Private-10.13.21.101' 'Name=instance-state-name,Values=running' | jq -r '.Reservations[].Instances[].InstanceId'
export Seoul_VPC_PART_STG_Private_10_13_21_101=$(aws ec2 describe-instances --filters 'Name=tag:Name,Values=Seoul-VPC-PART-DEV-Private-10.13.21.101' 'Name=instance-state-name,Values=running' | jq -r '.Reservations[].Instances[].InstanceId')
echo "export Seoul_VPC_PART_STG_Private_10_13_21_101=${Seoul_VPC_PART_STG_Private_10_13_21_101}"| tee -a ~/.bash_profile
