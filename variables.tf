variable "netlify_token" {
  type        = string
  description = "Netlify personal access token"
  sensitive   = true
}

variable "site_prefix" {
  type        = string
  default     = "hug-ibadan"
  description = "Prefix for site naming"
}
