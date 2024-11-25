module "name" {
  source = "../basic_code"
  ami = "ami-0614680123427b75e"
  type = "t2.micro"
  key = "mumbai"
}