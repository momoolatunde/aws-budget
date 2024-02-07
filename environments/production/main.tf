# Instantiates the AWS budget module
module "aws_budget" {
  source = "../../modules/aws-budget"

  name          = var.name
  budget_type   = var.budget_type
  limit_amount  = var.limit_amount
  limit_unit    = var.limit_unit
  time_unit     = var.time_unit
  notifications = var.notifications
  subscriber_email_addresses = var.subscriber_email_addresses
}
