resource "aws_instance" "creating_instance" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t2.small"

  subnet_id              = local.public_subnetsg
  vpc_security_group_ids = [local.bastionhost_security_group_id]


  associate_public_ip_address = true

  tags = {
    Name = "bastion"
  }
}