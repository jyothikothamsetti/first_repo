resource "aws_instance" "Ec2" {
  ami                         = "var.ami"
  instance_type               = "var.instancetype"
  key_name                    = "keypair-ca"
  security_groups             = [aws_security_group.securitygroup.id]
  subnet_id                   = aws_subnet.subnet.id
  associate_public_ip_address = true
  tags = {
    Name = "Ubuntu-Nginx"
  }
}