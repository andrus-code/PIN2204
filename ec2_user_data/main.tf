provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "examplesg" {
  name        = "pin2204-sg"
  description = "Allow ssh traffic"

  ingress {
    from_port   = 22
    to_port     = 22
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


resource "aws_instance" "ec2_instance" {
  #ami                   = "ami-0557a15b87f6559cf"  #Ubuntu AMI where doesn't  work user_data 
  ami                    = "ami-00c39f71452c08778"  # Amazon AMI where work user_data
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.examplesg.id}"]
  key_name = "linuxaws"

 #user_data = <<-EOF
 #            #!/bin/bash
 #             echo "Hello, Andres" > /home/ec2-user/hello.txt
 #            EOF
 user_data = "${file("ec2_user_data.sh")}"

  tags = {
    Name = "ec2-pin2204"
  }
}
 
 output "public_ip" {
   value = aws_instance.ec2_instance.public_ip

   }

