#!/bin/bash


echo 'Region:'$region
echo 'security group name:'$name
echo 'from port:'$from_port
echo 'to port:'$to_port
echo 'protocol:'$protocol
echo 'cidr:'$cidr_blocks


echo $AWS_ACCESS_KEY_DEV ':' $AWS_SECRET_KEY_DEV





./terraform init

./terraform apply -auto-approve -var 'region='$region -var 'name='$name -var 'aws_access_key='$AWS_ACCESS_KEY_DEV -var 'aws_secret_key='$AWS_SECRET_KEY_DEV  -var 'from_port='$from_port -var 'to_port='$to_port -var 'protocol='$protocol -var 'cidr_blocks='$cidr_blocks                                                     
