# main.tf
provider "aws" {
  region = "eu-west-1"
}

# 🔹 Create a Key Pair for SSH access
resource "aws_key_pair" "deployer" {
  key_name   = "lohith-key"
  public_key = file("~/.ssh/lohith-key.pub")
}

# 🔹 Create Security Group for EC2
resource "aws_security_group" "web_sg" {
  name        = "web-server-sg"
  description = "Allow SSH and HTTP traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# 🔹 Create EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"  # Ubuntu AMI ID
  instance_type = "t2.micro"
  key_name      = aws_key_pair.deployer.key_name
  security_groups = [aws_security_group.web_sg.name]

  tags = {
    Name = "lohith-ec2"
  }
}
