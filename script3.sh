#!/bin/bash
REGION=us-east-1
OUTPUT=table
aws ec2 describe-vpcs --region $REGION --output $OUTPUT