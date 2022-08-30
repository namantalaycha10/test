
variable "instance_type" {
  description = "instance type"
}

variable "ami" {
  description = "AMI"
}

resource "aws_instance" "ArvindInstance" {
	tags = {
		Name = "Arvind_Terraform_Instance"
	}
}
