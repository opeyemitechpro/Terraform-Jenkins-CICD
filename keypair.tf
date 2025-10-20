
locals {
  # Create key pair name 
  key_pair_name     = "${var.project_name}-${var.aws_region}-keypair"
}

# Generate a private key
resource "tls_private_key" "key_pair" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

# Create key pair in AWS
resource "aws_key_pair" "key_pair" {
  key_name   = local.key_pair_name
  public_key = tls_private_key.key_pair.public_key_openssh

# tag the key pair
  tags = {
    Name        = local.key_pair_name
    Region      = var.aws_region
    Project     = var.project_name
    CreatedBy   = "OpeyemiTechPro-Terraform"
  }
}

# Save private key locally
resource "local_file" "private_key" {
  content         = tls_private_key.key_pair.private_key_pem
  filename        = "${local.key_pair_name}.pem"
  file_permission = "0400"
}