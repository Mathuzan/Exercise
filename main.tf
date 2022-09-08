terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.29.0"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}

resource "aws_budgets_budget" "Monthly-budget" {
  name              = "Monthly-budget"
  budget_type       = "COST"
  limit_amount      = "4.00"
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  time_period_start = "2022-09-08_00:01"

  notification {
  comparison_operator        = "GREATER_THAN"
  threshold                  = 80
  threshold_type             = "PERCENTAGE"
  notification_type          = "FORECASTED"
  subscriber_email_addresses = ["mathushan1106@gmail.com"]
}
}


