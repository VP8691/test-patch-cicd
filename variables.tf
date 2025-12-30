variable "ami_id" {
    description = "AMI id for ec2"
    type = string
  
}

variable "instance_type" {
    description = "type of ec2 instance"
    type = string
    default = "t2.micro"
  
}