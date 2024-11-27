

# Create an IAM User
resource "aws_iam_user" "iam_user" {
  name = "aravind" # Replace with your desired username
}

# Attach a Managed Policy to the User (optional)
resource "aws_iam_user_policy_attachment" "s3_full_access" {
  user       = aws_iam_user.iam_user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess" # AWS Managed Policy ARN
}

# Create Access Keys for the User (optional)
resource "aws_iam_access_key" "example_access_key" {
  user = aws_iam_user.iam_user.name
}

# # Output the Access and Secret Keys (optional)
# output "access_key" {
#   value = aws_iam_access_key.example_access_key.id
# }

# output "secret_key" {
#   value     = aws_iam_access_key.example_access_key.secret
#   sensitive = true
# }
