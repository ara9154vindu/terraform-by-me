provider "aws" {
  
}

resource "aws_instance" "dependent" {
    ami = "ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = "mumbai"
    user_data = file("user.sh")
}