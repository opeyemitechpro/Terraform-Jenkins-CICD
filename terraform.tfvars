# Project Details
project_name  = "YT-11-microservice-app"
aws_region    = "us-east-2"


# variables for Jenkins Servers
JenkinsMaster_instance_type = "t2.large"


# Jenkins Server port Details
jenkins_ports = {
  "22"    = "SSH Access"
  "25"    = "SMTP Access"
  "80"    = "HTTP Access"
  "443"   = "HTTPS Access" 
  "8080"  = "Jenkins web interface"
  "9000"  = "SonarQube Docker Web interface"
  "9090"  = "Prometheus Stats"
  "9100"  = "Node Exporter Stats"
  "465"  = "Secure SMTP Access"
  }

