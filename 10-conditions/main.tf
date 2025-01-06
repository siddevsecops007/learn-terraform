output "test" {
  value = var.x == 10 ? "it is equal" : "not equal"
}


variable "x" {
  default = 10
}