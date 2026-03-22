# =============================================================================
# Observe Inc — Terraform Provider Configuration
# =============================================================================
# Manages Observe datasets and dashboards for Oracle RAC telemetry.
#
# Auth:  OBSERVE_CUSTOMER  / var.observe_customer
#        OBSERVE_API_TOKEN / var.observe_api_token
#        OBSERVE_DOMAIN    / var.observe_domain
# =============================================================================

terraform {
  required_version = ">= 1.0"
  required_providers {
    observe = {
      source  = "observeinc/observe"
      version = "~> 0.14"
    }
  }
}

provider "observe" {
  customer  = var.observe_customer
  api_token = var.observe_api_token
  domain    = var.observe_domain
}
