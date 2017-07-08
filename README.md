# opencontrail-poc-aws
Deploy opencontrail as POC on AWS

Steps to deploy this environment on AWS

Pre-requisties:
--------------
0) AWS account
1) On host from where these scripts will be executed, install the below packages
	a) aws cli package []
	b) ansible[]
2)Configure, aws with credentials, access_key and secret_access_key


Steps:
------
0) Git clone the repo
1) Copy the opencontrail package in image folder
2) Populate contrail-parameters.json file with required values, refer to sample file
3) Run ./create_contrail_vms.sh [Create 2 EC2 instances with Ubuntu 14.04.4]
4) RUn ./populate_cluster_config.sh [Populate cluster information to run contrail deployment]
5) Run ansible playbook to deploy Opencontrail
6)
