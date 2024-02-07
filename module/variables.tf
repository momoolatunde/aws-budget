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

# Allows filtering costs by specified criteria.
variable "cost_filters" {
  description = "Map of strings for cost filters."
  type        = map(string)
  default     = {}
}

# Configures notifications for budget tracking.
variable "notifications" {
  description = "Defines notification settings including operator, type, threshold, and subscriber details."
  type = list(object({
    comparison_operator        = string
    notification_type          = string
    threshold                  = number
    threshold_type             = string
    subscriber_email_addresses = list(string)
    subscriber_sns_topic_arns  = list(string)
  }))
  default = []
}
