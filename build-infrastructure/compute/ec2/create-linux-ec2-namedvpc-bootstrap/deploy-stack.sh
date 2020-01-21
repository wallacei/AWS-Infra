#!/bin/bash

CWD=$(pwd)
stackname=$1

aws cloudformation create-stack  \
        --template-body file://$CWD/create-vpc.yaml \
        --parameters file://$CWD/create-vpc-parameters.json \
        --stack-name $stackname