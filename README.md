# AWS Command Line Interface
 * http://aws.amazon.com/cli/

## Environment Variable

 * **AWS_ACCESS_KEY** - The IAM access key to use when interacting with AWS.
 * **AWS_SECRET_ACCESS_KEY** - Secret that corresponds to the access key.
 * **AWS_DEFAULT_REGION** - AWS region to use for interactions. Defaults to the region of the current machine.

## Associate Elastic IP
This example command associates an EIP with the current instance.

```
docker run --rm \
  -e AWS_ACCESS_KEY_ID="my-access-key" \
  -e AWS_SECRET_ACCESS_KEY="my-secret-key" \
  mikljohansson/awscli ec2 associate-address \
  --instance-id "`curl -sL http://169.254.169.254/2014-11-05/meta-data/instance-id`" \
  --allocation-id "eip-1234abcd"
```
