
variable "project_name" {
  description = "Title of the Project"
  type        = string
}

variable "aws_region" {
  description = "AWS Region where infrastructure will be provisioned"
  type        = string
}


variable "JenkinsMaster_instance_type" {
  description = "The type of EC2 instance for the Jenkins Master"
  type        = string
}


variable "jenkins_ports" {
  type = map(string)
  description = "Map of Jenkins ports to their descriptions"
}

