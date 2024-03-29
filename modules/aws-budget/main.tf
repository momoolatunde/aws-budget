# Defines an AWS budget and dynamically generates notifications for specified thresholds.
resource "aws_budgets_budget" "monthly_budget" {
  name         = var.name
  budget_type  = var.budget_type
  limit_amount = var.limit_amount
  limit_unit   = var.limit_unit
  time_unit    = var.time_unit

  dynamic "notification" {
    for_each = var.notifications

    content {
      comparison_operator        = notification.value.comparison_operator
      notification_type          = notification.value.notification_type
      threshold                  = notification.value.threshold
      threshold_type             = notification.value.threshold_type
      subscriber_email_addresses = var.subscriber_email_addresses
    }
  }
}
