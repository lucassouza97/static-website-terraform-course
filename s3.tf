data "template_file" "s3-public-policy" {
  template = file("policy.json")

  vars { bucket_name = local.domain }
}


module "logs" {
  source = "github.com/chgasparoto/terraform-s3-object-notification"
}


module "website" {
  source = "github.com/chgasparoto/terraform-s3-object-notification"
}

module "redirect" {
  source = "github.com/chgasparoto/terraform-s3-object-notification"
}
