locals {
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  bastionhost_security_group_id = data.aws_ssm_parameter.bastionhost_security_group_id.value
  bastion_subnet_id = split(",", data.aws_ssm_parameter.public_subnetsg.value)
  private_subnetsg = split(",", data.aws_ssm_parameter.private_subnetsg.value)

}