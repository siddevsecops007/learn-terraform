variable "URL" {
  default = "variable.demo.com"
}

output "var_url" {
  value = var.URL
}

output "var_url1" {
  value = "URL is ${var.URL}"
}

variable "list1" {
  default = [
    10,
    20,
    abc,
    100
  ]
}

variable "map1" {
  default = {
    aws = {
      trainer = "king"
      duration = 18
    }
    devOps= {
      trainer = "Ro"
      duration = 45
    }
  }
}

output "list1" {
  value = var.list1[2]
}
output "map1" {
  value = var.map1["aws"]["trainer"]
}