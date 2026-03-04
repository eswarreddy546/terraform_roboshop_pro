locals {
  bastionhost_security_group_id = data.aws_ssm_parameter.bastionhost_security_group_id.value
  public_subnetsg = split(",", data.aws_ssm_parameter.public_subnetsg.value)[0]
}