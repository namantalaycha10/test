variable "instance_type" {
  description = "instance type"
}

variable "ami" {
  description = "AMI"
}

resource "aws_instance" "ArvindInstance" {
	ami = "ami-0b69ea66ff7391e80"
	instance_type = "t2.micro"
	tags = {
		Name = "Arvind_Terraform_Instance"
	}
}
