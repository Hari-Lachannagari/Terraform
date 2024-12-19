provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "flm" {
  tags = {
    Name        = "Terraform-server"
    Environment = "Dev"
    Project     = "Swiggy"
  }
  ami               = "ami-0166fe664262f664c"
  instance_type     = "t2.micro"
  key_name          = "Harikeypair"
  availability_zone = "us-east-1a"
  root_block_device {
    volume_size = 10
  }
}
