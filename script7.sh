#!/bin/bash
REGIONS=$@
FORMAT='json'

for REGION in $REGIONS; do
    echo "The Vpc Id of the region $REGION is..."
    aws ec2 describe-vpcs --region $REGION --output $FORMAT | jq ".Vpcs[].VpcId"
done
