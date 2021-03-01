module "vm_test" {
  source              = "../../../"
  acl                 = "private"
  bucket              = "bucket_test_flugel"
  region              = "us-east-2"
  tags_name           = "Flugel"
  tags_owner          = "InfraTeam"
}