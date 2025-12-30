# EC2 Creation---

resource "aws_instance" "ec2" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = aws_subnet.main.id
    security_groups = [aws_security_group.ec2-sg.id]

    tags = {
      Name = "cicd-instnace"
    }
  
}