resource "aws_instance" "name" {
    ami = "ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = "mumbai"
}

resource "aws_s3_bucket" "name" {
    bucket = "awyuiopdelchui" 
    depends_on = [ aws_instance.name ]
}
