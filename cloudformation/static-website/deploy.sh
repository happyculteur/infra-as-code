#!/bin/bash

AWS_REGION=${1:-eu-west-3}
ENV=${2:-dev}
PROJECT=${3:-maps}

aws cloudformation deploy \
                          --region $AWS_REGION \
                          --stack-name $ENV-$PROJECT-infra \
                          --template-file static-website.yml \
                          --parameter-overrides \
                            AcmCertificateArn=$ENV-$PROJECT-AcmCertificateArn \
                            DomainName=$ENV-$PROJECT-DomainName \
                            HostedZoneName=$ENV-$PROJECT-HostedZoneName \
                            Record=$ENV-$PROJECT-Record
