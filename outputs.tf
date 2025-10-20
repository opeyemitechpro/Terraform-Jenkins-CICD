
# Dispaly the JenkinsMaster ssh connection string
output "JenkinsMaster_ssh_connection_string" {
  description = "SSH connection string"
  value       = "ssh -i ${local_file.private_key.filename} ubuntu@${aws_instance.Jenkins_Master.public_ip}"
}

# Display the JekinsMaster IP address
output "JenkinsMaster_Public_IP" {
  description = "Public IP address of the Jenkins Master server"
  value       = aws_instance.Jenkins_Master.public_ip
}