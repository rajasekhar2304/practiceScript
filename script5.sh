#!/bin/bash
REGION=$@
FORMAT='json'
aws ec2 describe-vpcs --region $REGION --output $FORMAT | jq ".Vpcs[].VpcId"