#!/usr/bin/env bash

stackname=$1

if [ -z "$stackname" ]; then
    echo "stack name not set"
    exit 1
fi

echo "Deleting opencontrail $stackname stack for POC"

aws cloudformation delete-stack --stack-name $stackname 

echo "Delete KeyPair"
aws ec2 delete-key-pair --key-name ocontrail
rm -rf ocontrail.pem
