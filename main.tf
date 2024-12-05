provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "amazon-linux-instance" {
  count = 1
  ami = "ami-0583d8c7a9c35822c"
  instance_type = "t2.medium"
  key_name = "newkey"
  tags = {
    Name = "amazon-linux-instance" 
  }
}
