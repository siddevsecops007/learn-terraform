variable "URL" {
  default = "variable.demo.com"
}

output "var_url" {
  value = var.URL
}