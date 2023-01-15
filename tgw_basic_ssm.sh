#!/bin/bash
# command ./tgw_basic_ssm.sh
aws ec2 describe-instances --filters 'Name=tag:Name,Values=Seoul-VPC-HQ-Private-10.0.21.101' 'Name=instance-state-name,Values=running' | jq -r '.Reservations[].Instances[].InstanceId'
export Seoul_VPC_HQ_Private_10_0_21_101=$(aws ec2 describe-instances --filters 'Name=tag:Name,Values=Seoul-VPC-HQ-Private-10.0.21.101' 'Name=instance-state-name,Values=running' | jq -r '.Reservations[].Instances[].InstanceId')
echo "export Seoul_VPC_HQ_Private_10_0_21_101=${Seoul_VPC_HQ_Private_10_0_21_101}"| tee -a ~/.bash_profile

aws ec2 describe-instances --filters 'Name=tag:Name,Values=Seoul-VPC-PRD-Private-10.1.21.101' 'Name=instance-state-name,Values=running' | jq -r '.Reservations[].Instances[].InstanceId'
export Seoul_VPC_PRD_Private_10_1_21_101=$(aws ec2 describe-instances --filters 'Name=tag:Name,Values=Seoul-VPC-PRD-Private-10.1.21.101' 'Name=instance-state-name,Values=running' | jq -r '.Reservations[].Instances[].InstanceId')
echo "export Seoul_VPC_PRD_Private_10_1_21_101=${Seoul_VPC_PRD_Private_10_1_21_101}"| tee -a ~/.bash_profile

aws ec2 describe-instances --filters 'Name=tag:Name,Values=Seoul-VPC-STG-Private-10.2.21.101' 'Name=instance-state-name,Values=running' | jq -r '.Reservations[].Instances[].InstanceId'
export Seoul_VPC_STG_Private_10_2_21_101=$(aws ec2 describe-instances --filters 'Name=tag:Name,Values=Seoul-VPC-STG-Private-10.2.21.101' 'Name=instance-state-name,Values=running' | jq -r '.Reservations[].Instances[].InstanceId')
echo "export Seoul_VPC_STG_Private_10_2_21_101=${Seoul_VPC_STG_Private_10_2_21_101}"| tee -a ~/.bash_profile

aws ec2 describe-instances --filters 'Name=tag:Name,Values=Seoul-VPC-DEV-Private-10.3.21.101' 'Name=instance-state-name,Values=running' | jq -r '.Reservations[].Instances[].InstanceId'
export Seoul_VPC_DEV_Private_10_3_21_101=$(aws ec2 describe-instances --filters 'Name=tag:Name,Values=Seoul-VPC-DEV-Private-10.3.21.101' 'Name=instance-state-name,Values=running' | jq -r '.Reservations[].Instances[].InstanceId')
echo "export Seoul_VPC_DEV_Private_10_3_21_101=${Seoul_VPC_DEV_Private_10_3_21_101}"| tee -a ~/.bash_profile
