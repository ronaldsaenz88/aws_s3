module "vm_test" {
  source              = "../../../"
  acl                 = "private"
  bucket              = "buckettestflugel"
  region              = "us-east-2"
  tags_name           = "Flugel"
  tags_owner          = "InfraTeam"
}