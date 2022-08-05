#!/bin/bash
REGIONS=$@
FORMAT='json'
for REGION in $REGIONS
do
aws ec2 describe-vpcs --region $REGION --output $FORMAT | jq ".Vpcs[].VpcId"
done