resource "aws_instance" "myec2" {
  ami = "ami-0022f774911c1d690"

  instance_type = "t2.micro"
  tags = {
      Name = "instance1"
  }
  count = 3
}

resource "aws_eip" "lb1"{
  vpc = true
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-aeg123"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

