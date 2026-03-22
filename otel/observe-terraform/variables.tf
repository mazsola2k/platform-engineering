# =============================================================================
# Input Variables
# =============================================================================

variable "observe_customer" {
  description = "Observe customer ID (numeric, from Settings > Account)"
  type        = string
}

variable "observe_api_token" {
  description = "Observe API token for Terraform (from Settings > API Tokens)"
  type        = string
  sensitive   = true
}

variable "observe_domain" {
  description = "Observe platform domain"
  type        = string
  default     = "observeinc.com"
}

variable "workspace_name" {
  description = "Target Observe workspace name"
  type        = string
  default     = "Default"
}

variable "otel_datastream_name" {
  description = "Name of the Observe datastream for OTEL metrics (created by Terraform)"
  type        = string
  default     = "oracle-rac-otel"
}

variable "name_prefix" {
  description = "Prefix added to all created dataset and dashboard names"
  type        = string
  default     = "Oracle RAC"
}
