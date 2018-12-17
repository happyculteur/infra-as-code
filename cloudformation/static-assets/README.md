# Static website

This template is used to deploy a static frontend (or simple static website)
with S3 behind a CloudFront distribution.

We tried to be as generic as we could so you could reuse this template for your
own static frontends.

## Stack description

The stack you will deploy is composed of:

- S3 bucket on which you will put your files (we use [Travis
  CI](https://travis-ci.com) at Happyculteur to build and deploy the code
- Bucket policy so the objects are accessible from CloudFront
- CloudFront distribution to serve the files through HTTP protocol with TLS
  enabled and basic attack mitigation (take a look at AWS Shield)
- Route 53 records (IPv4 and IPv6) set as aliases to CloudFront distribution

## Enhancements

The point that can be enhanced is the link between the CloudFront distribution
and the origin. It is possible to avoid the user to access directly to the S3
objects but to do that you need to configure the distribution to use a secure
acess that can only be generated using the web console or SDK.

## Deployment
