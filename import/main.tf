resource "aws_instance" "myvm" {
  ami = "ami-0614680123427b75e"
  instance_type = "t2.micro"
  key_name = "mumbai"
  tags = {
    name = "import"
  }
}