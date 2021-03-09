output "bucket_id" {
  description = "Id of bucket created"
  value = "${aws_s3_bucket.tf_test.id}"
}

output "bucket_name" {
  description = "Bucket Name or ARN"
  value = "${aws_s3_bucket.tf_test.arn}"
}

output "tags" {
  description = "List of tags of instances"
  value       = aws_s3_bucket.tf_test.tags
}