variable "ami" {
  type    = string
  default = "ami-0614680123427b75e"
}

variable "type" {
  type    = string
  default = "t2.micro"
}

variable "key" {
  type    = string
  default = "mumbai"
}
variable "save" {
    type = list(string)
    default = [ "test", "prod","dev" ]
}