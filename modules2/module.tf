module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type = "t2.micro"
  key_name      = "mumbai"
  monitoring    = true
  ami           = "ami-0614680123427b75e"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}