module "sg" {
  count  = length(var.sgvalues)
  source = "terraform-aws-modules/security-group/aws"

  name = "${local.common_name_suffix}-${var.sgvalues[count.index]}"

  use_name_prefix = false
  description = "Security group for catalogue"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
}