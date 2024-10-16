provider "aws" {
region = "eu-west-3"
}
resource "aws_instance" "AWS_R0939672_romeo" {
ami = "ami-073acd5509b9bf507"
instance_type = "t2.micro"
tags = {
Name = "AWS_R0939672_romeo" #naam voor de instance
}
}
output "instance_ip" {
value = aws_instance.AWS_R0939672_romeo.public_ip
}