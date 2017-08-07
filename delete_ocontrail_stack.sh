#!/usr/bin/env bash

stackname=$1

#check if there are 3 arguments
if [ $# -eq 1 ]; then
   if [ -z "$stackname" ]; then
       echo "stack name not set"
       exit 1
   fi
else
   echo "Usage: $0 [stackname]" 
   exit 1
fi

echo -e "Deleting opencontrail $stackname stack for POC\n"

aws cloudformation delete-stack --stack-name $stackname 

echo -e "Wait till opencontrail stack($stackname) is deleted\n"
aws cloudformation wait stack-delete-complete --stack-name $stackname && aws cloudformation describe-stacks --stack-name $stackname
