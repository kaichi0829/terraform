provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
}

resource "aws_instance" "sample_ec2" {
  ami           = "ami-05a56ce08feadf9c4"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0705c63f69615fe7a"

  tags = {
    Name = "HelloWorld"
  }
}