# Defines the name of the AWS budget.
name = "My Monthly Budget"

# Sets the budget type to track costs.
budget_type = "COST"

# Specifies the budget limit in units defined by 'limit_unit'.
limit_amount = "12"

# Defines the unit for the budget limit, in this case, US Dollars.
limit_unit = "USD"

# Sets the time period for the budget evaluation to monthly.
time_unit = "MONTHLY"

# Configures a list of notification rules for when specific budget thresholds are reached.
notifications = [
  {
    # Notification rule when actual spend exceeds 40% of the budget.
    comparison_operator = "GREATER_THAN"
    notification_type   = "ACTUAL"
    threshold           = 40
    threshold_type      = "PERCENTAGE"
  },
  {
    # Notification rule when actual spend exceeds 60% of the budget.
    comparison_operator = "GREATER_THAN"
    notification_type   = "ACTUAL"
    threshold           = 60
    threshold_type      = "PERCENTAGE"
  },
  {
    # Notification rule when forecasted spend is expected to reach 100% of the budget.
    comparison_operator = "GREATER_THAN"
    notification_type   = "FORECASTED"
    threshold           = 100
    threshold_type      = "PERCENTAGE"
  }
]
