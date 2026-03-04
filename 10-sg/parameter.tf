resource "aws_ssm_parameter" "passingvalues" {
  count = length(var.sgvalues)
  name  = "/${var.project_name}/${var.environment}/${var.sgvalues[count.index]}_security_group_id" # /roboshop/dev/catalogue_sg_id
  type  = "String"
   value = module.sg[count.index].security_group_id
}

