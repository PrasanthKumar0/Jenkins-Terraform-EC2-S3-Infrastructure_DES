provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  instance_id = "i-079634f07d0a4e975"
  # Other instance configuration as needed
}

# Termination Logic
resource "aws_instance" "termination" {
  count = var.terminate_instance ? 1 : 0
  ami           = "ami-0123456789abcdef0"  # Replace with an AMI ID for a minimal instance
  instance_type = "t2.micro"
  # Other instance configuration as needed
}
