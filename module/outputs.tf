# Outputs the budget's ID.
output "budget_id" {
  description = "The ID of the budget."
  value       = aws_budgets_budget.monthly_budget.id
}

# Outputs the budget's name.
output "budget_name" {
  description = "The name of the budget."
  value       = aws_budgets_budget.monthly_budget.name
}
