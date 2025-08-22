provider "netlify" {
  token = var.netlify_token
}

resource "random_pet" "name" {}

resource "netlify_site" "example" {
  name        = "${var.site_prefix}-${random_pet.name.id}"
  custom_domain = null
}

resource "netlify_deploy" "example" {
  site_id   = netlify_site.example.id
  dir       = "${path.module}/site"
  depends_on = [netlify_site.example]
}
