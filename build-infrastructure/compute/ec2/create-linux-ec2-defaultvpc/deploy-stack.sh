#!/bin/bash

CWD=$(pwd)
stackname=$1

aws cloudformation create-stack  \
        --template-body file://$CWD/single_instance.yml \
        --stack-name $stackname