# SecurtyGrp.tf

# Jenkins Servers Security Group
resource "aws_security_group" "jenkins_SG" {
  # vpc_id      = aws_vpc.Opeyemi_VPC.id
  name_prefix = "${var.project_name}_jenkins_SG_"
  description = "Jenkins Servers Security Group"

  dynamic "ingress" {
    for_each      = var.jenkins_ports
    content {
      from_port   = ingress.key
      to_port     = ingress.key
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = ingress.value
    }
  }

  dynamic "ingress" {
    for_each      = var.jenkins_ports
    content {
      from_port   = ingress.key
      to_port     = ingress.key
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = ingress.value
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic"
  }
}

