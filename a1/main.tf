
variable "instance_type" {
  description = "instance type"
}

variable "ami" {
  description = "AMI"
}

resource "aws_instance" "ArvindInstance" {
	ami = var.ami
	instance_type = var.instance_type
	tags = {
		Name = "Arvind_Terraform_Instance"
	}
}
