# Security group without Dynamic Block


resource "aws_security_group" "ec2-sg" {
    vpc_id = aws_vpc.main.id
    name = "lct-sg-with-dy-block"
    dynamic "ingress" {
        for_each = [22,80,443,3316]
        iterator = port
        content {
          description = "TLS from VPC"
          from_port = port.value
          to_port = port.value
          protocol = "tcp"
          cidr_blocks = ["0.0.0.0/0"]
        }
      
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "sg-with-dy-block"
    }
  
}