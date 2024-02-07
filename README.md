# AWS Budget Deployment with Terraform and GitHub Actions

This repository contains the necessary configuration for deploying an AWS Budget using Terraform, automated through a GitHub Actions CI/CD pipeline. It enables users to define, deploy, and manage their AWS Budgets in a declarative manner using Infrastructure as Code (IaC) practices. This README provides detailed instructions on how to utilise this project for deploying AWS Budget resources.

## Prerequisites

Before you begin, ensure you have the following prerequisites set up and understand the basic concepts of the tools and platforms used:

- **GitHub Account**: Required to fork or clone the repository and set up GitHub Actions.
- **AWS Account**: Necessary for deploying the AWS Budget.
- **Terraform Installed Locally** (optional): For executing Terraform commands locally during development or testing.
- **Basic Understanding of Terraform**: Familiarity with Terraform syntax and concepts.
- **Basic Understanding of GitHub Actions**: Knowledge of how GitHub workflows work.

## Setup Instructions

### Step 1: Fork or Clone the Repository

1. **Fork** this repository to your GitHub account or **Clone** it directly to your local machine if you prefer to push changes from your own system.

### Step 2: Configure GitHub Secrets

2. In your GitHub repository, navigate to **Settings** > **Secrets** and click on **New repository secret**. You need to add the following secrets:
   - `AWS_ACCESS_KEY_ID`: Your AWS access key ID.
   - `AWS_SECRET_ACCESS_KEY`: Your AWS secret access key.
   - `SUBSCRIBER_EMAILS`: The subscriber email addresses in a JSON array format (e.g., `["email1@example.com","email2@example.com"]`).

### Step 3: Review and Update Terraform Configuration

3. Examine and modify the Terraform configuration files in the `environments/production` directory according to your budget requirements:
   - `main.tf`: Main Terraform configuration for the AWS Budget.
   - `provider.tf`: AWS provider configuration.
   - `terraform.tfvars`: Variables file to set your budget parameters.
   - `variables.tf`: Defines the variables used in your configuration.

## Deployment Instructions

### Step 1: Push Changes to Trigger Deployment

1. After configuring your AWS Budget settings in the Terraform files, commit and push these changes to the `main` branch. This action triggers the GitHub Actions workflow defined in `.github/workflows/deploy.yml`.

### Step 2: GitHub Actions Workflow Execution

2. The GitHub Actions workflow automates the following steps:
   - **Checkout**: Checks out your repository for access in the workflow.
   - **Setup Terraform**: Sets up Terraform CLI in the GitHub Actions runner.
   - **Terraform Init**: Initializes a new or existing Terraform working directory.
   - **Terraform Validate**: Validates the Terraform files for syntax.
   - **Terraform Plan**: Shows any changes required by the current configuration.
   - **Terraform Apply**: Applies the changes to deploy the AWS Budget.

### Step 3: Monitor Workflow Execution

3. Navigate to the **Actions** tab in your GitHub repository to monitor the workflow execution. Upon successful completion, your AWS Budget will be deployed according to the configurations specified.

## Additional Information

- **Customisation**: You can customise the budget configuration by editing the `terraform.tfvars` file in the `environments/production` directory.
- **Modules**: This project uses a Terraform module located in `modules/aws-budget` for defining the AWS Budget resource. This modular approach allows for easy reuse and management of Terraform configurations.
- **Security**: Ensure that your AWS access keys and other sensitive information are securely stored as GitHub Secrets to prevent unauthorized access.

## Troubleshooting

- **Terraform Errors**: If you encounter errors during the Terraform steps, check the output logs for specific error messages. Most issues can be resolved by ensuring your Terraform configuration matches your AWS resource specifications and constraints.
- **GitHub Actions Failures**: For failures in GitHub Actions, review the logs in the Actions tab to identify misconfigurations or missing settings.
