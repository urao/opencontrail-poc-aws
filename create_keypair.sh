#!/bin/sh

keyfilename="ocontrail"

echo "Creating aws keypair and copy it locally"

aws ec2 create-key-pair --key-name $keyfilename --query 'KeyMaterial' --output text > $keyfilename.pem
chmod 400 $keyfilename.pem

echo 'export 'ANSIBLE_HOST_KEY_CHECKING'='False>>/root/.bashrc\n
source /root/.bashrc
export ANSIBLE_HOST_KEY_CHECKING=False
