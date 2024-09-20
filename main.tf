provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "server1" {
  ami = "ami-0a5c3558529277641"
  instance_type = "t2.micro"

  tags = {
    name = "server1"
  }

  user_data = file( "script.sh")
}
