#!/bin/sh


stackname=$1
templatefile=$2
parametersfile=$3

if [ -z "$stackname" ]; then
    echo "stack name not set"
    exit 1
fi

if [ -z "$templatefile" ]; then
    echo "template file not set"
    exit 1
fi

if [ -z "$parameterfile" ]; then
    echo "parameter file not set"
    exit 1
fi
echo "Creating opencontrail $stackname stack for POC"

aws cloudformation create-stack \
    --stack-name $stackname  \
    --capabilities="CAPABILITY_IAM" \
    --template-body file://./cloudformation/$templatefile.json \
    --parameters file://./cloudformation/$parametersfile.json
