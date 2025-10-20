resource "aws_instance" "Jenkins_Master" {
  ami                       = data.aws_ami.ubuntu.id
  instance_type             = var.JenkinsMaster_instance_type
  user_data                 = file("./jenkinsMaster_userdata.sh")
  vpc_security_group_ids    = [aws_security_group.jenkins_SG.id]
  # subnet_id                 = aws_subnet.Opeyemi_Private_Subnet.id
  key_name                  = aws_key_pair.key_pair.key_name

root_block_device {
    volume_size       = 50
  }

metadata_options {
    http_tokens                     = "optional"    # Allows IMDSv1 and IMDSv2
    http_put_response_hop_limit     = 1      # Default hop limit for the PUT request
    http_endpoint                   = "enabled"     # Enable metadata service
  }

  tags = {
    Name            = "${var.project_name}_JenkinsMaster_Server"
    Region          = var.aws_region
    KeyPair         = local.key_pair_name
    Project         = var.project_name
    LaunchDate      = timestamp()
  }

}