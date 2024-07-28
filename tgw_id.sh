#!/bin/bash

# Transit Gateway 이름 정의
TGW_NAME="Seoul-TGW"

# Transit Gateway ID 검색
TGW_ID=$(aws ec2 describe-transit-gateways \
  --filters "Name=tag:Name,Values=$TGW_NAME" \
  --query "TransitGateways[*].TransitGatewayId" \
  --output text)

# 결과 확인
if [ -z "$TGW_ID" ]; then
  echo "Error: Transit Gateway with name '$TGW_NAME' not found."
  exit 1
else
  echo "Transit Gateway ID found: $TGW_ID"
fi

# bash_profile에 환경 변수 추가
echo "export SEOUL_TGW_ID=$TGW_ID" >> ~/.bash_profile

# 변경 사항을 적용하기 위해 .bash_profile 재로드
source ~/.bash_profile

echo "Transit Gateway ID has been added to .bash_profile as SEOUL_TGW_ID"