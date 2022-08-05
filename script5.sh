#!/bin/bash
REGION=$@
OUTPUT='json'
aws ec2 describe-vpcs --region $REGION --output $OUTPUT | jq ".Vpcs[].VpcId"