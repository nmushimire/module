provider "aws" {
    region = var.region_name
}
resource "aws_instance" "server1" {
  ami = var.ami
  instance_type= var.instance_type
  
  tags = {
    name = "sever1"
  }

  user_data = file( "script.sh")
}
