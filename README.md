# opencontrail-poc-aws
Deploy opencontrail as POC on AWS

Steps to deploy this environment on AWS

Pre-requisties:
--------------
0) AWS account
1) On host from where these scripts will be executed, install the below packages
	a) aws cli package
	b) ansible
2)Configure, aws with credentials, access_key and secret_access_key


Steps:
------
0) Git clone the repo
1) Change directory 'cd opencontrail-poc-aws'
2) Copy the opencontrail package under ansible/files folder
3) Run ./create_keypair.sh [Create KeyPair]
4) Populate contrail-parameters.json file with required values, refer to sample file
5) Run ./create_ocontrail_stack.sh [Create 2 EC2 instances with Ubuntu 14.04.4]
6) RUn ./populate_cluster_config.sh [Populate cluster information to run contrail deployment]
7) Run ansible playbook to deploy Opencontrail
