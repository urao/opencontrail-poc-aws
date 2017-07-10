#!/usr/bin/env bash

stackname=$1

if [ -z "$stackname" ]; then
    echo "stack name not set"
    exit 1
fi

echo "Deleting vMX $stackname stack for POC"

aws cloudformation delete-stack --stack-name $stackname 


echo "Wait till the vMX stack($stackname) is deleted\n"
aws cloudformation wait stack-delete-complete --stack-name $stackname && aws cloudformation describe-stacks --stack-name $stackname

