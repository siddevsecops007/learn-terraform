variable "URL" {
  default = "variable.demo.com"
}

output "var_url" {
  value = var.URL
}

output "var_url1" {
  value = "URL is {var.URL}"
}