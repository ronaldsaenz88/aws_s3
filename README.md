# aws_s3
Create S3 Bucket in AWS

## Usage

Before executing you must configure the environment variables:

Linux:
```bash
$ export AWS_ACCESS_KEY_ID="XXXXXXXXXXXX"
$ export AWS_SECRET_ACCESS_KEY="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
```

Windows:
```
set AWS_ACCESS_KEY_ID="XXXXXXXXXXXX"
set AWS_SECRET_ACCESS_KEY="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
```

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply 
```

If you want to change the variables, you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply -var="region=us-east-2" -var="acl=private" -var="bucket=buckettestflugel" -var="tags_name=Flugel" -var="tags_owner=InfraTeam"
```

Note that this example may create resources which cost money. Run `terraform destroy` when you don't need these resources.

## Examples:

* [Complete](https://github.com/terraform-aws-modules/terraform-aws-s3-bucket/tree/master/examples/complete) - Complete S3 bucket with most of supported features enabled
* [Cross-Region Replication](https://github.com/terraform-aws-modules/terraform-aws-s3-bucket/tree/master/examples/s3-replication) - S3 bucket with Cross-Region Replication (CRR) enabled
- [S3 bucket Notifications](https://github.com/terraform-aws-modules/terraform-aws-s3-bucket/tree/master/examples/notification) - S3 bucket notifications to Lambda functions, SQS queues, and SNS topics.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.6 |
| aws | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| region | (Optional) Region of the AWS provider. | `string` | `"us-east-2"` | no |
| acl | (Optional) The canned ACL to apply. Defaults to 'private'. Conflicts with `grant` | `string` | `"private"` | no |
| bucket | (Optional, Forces new resource) The name of the bucket. If omitted, Terraform will assign a random, unique name. | `string` | `"buckettestflugel"` | no |
| tags_name | (Optional) A mapping of tags (Name) to assign to the bucket. | `string` | `"Flugel"` | no |
| tags_owner | (Optional) A mapping of tags (Owner) to assign to the bucket. | `string` | `"InfraTeam"` | no |


## Outputs

| Name | Description |
|------|-------------|
| _s3\_bucket\_arn | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname. |
| _s3\_bucket\_id | The name of the bucket. |
| _s3\_bucket\_tags | The tags of the bucket. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## Authors

Module managed by [Ronald Saenz](https://github.com/ronaldsaenz88).

## License

GNU General Public Licensed. See LICENSE for full details.