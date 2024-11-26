resource "aws_key_pair" "name" {
    key_name = "hyderabad"
    public_key = file("/.ssh/id_rsa.pub")
}