# Specifies budget name.
variable "name" {
  description = "The name of the budget."
  type        = string
}

# Defines budget type: COST or USAGE.
variable "budget_type" {
  description = "The type of the budget (e.g., COST, USAGE)."
  type        = string
}

# Sets budget limit amount.
variable "limit_amount" {
  description = "The amount of the budget limit."
  type        = string
}

# Determines budget limit unit.
variable "limit_unit" {
  description = "The unit for the budget limit (e.g., USD)."
  type        = string
}

# Specifies budget time unit.
variable "time_unit" {
  description = "The time unit for the budget (e.g., MONTHLY)."
  type        = string
}

# Declares variable for email address to receive budget notifications.
variable "subscriber_email_addresses" {
  description = "List of email addresses for budget notifications."
  type        = list(string)
}

# Configures notifications for budget tracking.
variable "notifications" {
  description = "List of notification configurations."
  type = list(object({
    comparison_operator        = string
    notification_type          = string
    threshold                  = number
    threshold_type             = string
  }))
}

