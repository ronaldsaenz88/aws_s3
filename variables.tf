variable "region" {
  description = "The Region"
  type        = string
  default     = "us-east-2"
}

variable "tags_name" {
  description = "Tag Name."
  type        = string
  default     = "Flugel"
}

variable "tags_owner" {
  description = "Tag Owner."
  type        = string
  default     = "InfraTeam"
}

variable "bucket" {
  description = "Bucket Name"
  type        = string
  default     = "bucket_test_flugel"
}

variable "acl" {
  description = "Type ACL"
  type        = string
  default     = "private"
}

