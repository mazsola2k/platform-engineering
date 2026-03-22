# =============================================================================
# Outputs
# =============================================================================

output "workspace_oid" {
  description = "Observe workspace OID"
  value       = data.observe_workspace.default.oid
}

# --- Datasets ---
output "dataset_all_metrics_oid" {
  description = "OID of the base Oracle RAC metrics dataset"
  value       = observe_dataset.oracle_rac_all.oid
}

output "dataset_instance_health_oid" {
  description = "OID of the Instance Health dataset"
  value       = observe_dataset.oracle_rac_instance.oid
}

output "dataset_sysstat_oid" {
  description = "OID of the System Statistics dataset"
  value       = observe_dataset.oracle_rac_sysstat.oid
}

output "dataset_waits_oid" {
  description = "OID of the Wait Events dataset"
  value       = observe_dataset.oracle_rac_waits.oid
}

output "dataset_top_sql_oid" {
  description = "OID of the Top SQL dataset"
  value       = observe_dataset.oracle_rac_top_sql.oid
}

output "dataset_ash_oid" {
  description = "OID of the ASH dataset"
  value       = observe_dataset.oracle_rac_ash.oid
}

output "dataset_io_oid" {
  description = "OID of the Storage & IO dataset"
  value       = observe_dataset.oracle_rac_io.oid
}

output "dataset_dataguard_oid" {
  description = "OID of the Data Guard dataset"
  value       = observe_dataset.oracle_rac_dataguard.oid
}

# --- Dashboards ---
output "dashboard_overview_oid" {
  description = "OID of the Overview dashboard"
  value       = observe_dashboard.oracle_rac_overview.oid
}

output "dashboard_sql_oid" {
  description = "OID of the SQL Performance dashboard"
  value       = observe_dashboard.oracle_rac_sql.oid
}

output "dashboard_waits_io_oid" {
  description = "OID of the Wait Events & IO dashboard"
  value       = observe_dashboard.oracle_rac_waits_io.oid
}

# --- Datastream & Ingest ---
output "datastream_oid" {
  description = "OID of the OTEL datastream"
  value       = observe_datastream.otel.oid
}

output "datastream_dataset_oid" {
  description = "OID of the datastream origin dataset"
  value       = observe_datastream.otel.dataset
}

output "ingest_endpoint" {
  description = "OTEL collector OTLP HTTP endpoint for this datastream"
  value       = "https://${var.observe_customer}.collect.${var.observe_domain}/v1/otel"
}

output "ingest_token" {
  description = "Bearer token for the OTEL collector (token_id:secret)"
  value       = "${observe_datastream_token.otel.id}:${observe_datastream_token.otel.secret}"
  sensitive   = true
}

# --- Log Datasets ---
output "dataset_logs_oid" {
  description = "OID of the All Logs dataset"
  value       = observe_dataset.oracle_rac_logs.oid
}

output "dataset_alert_log_oid" {
  description = "OID of the Alert Log dataset"
  value       = observe_dataset.oracle_rac_alert_log.oid
}

output "dataset_listener_log_oid" {
  description = "OID of the Listener Log dataset"
  value       = observe_dataset.oracle_rac_listener_log.oid
}

output "dataset_audit_oid" {
  description = "OID of the Audit Trail dataset"
  value       = observe_dataset.oracle_rac_audit.oid
}

# --- Convenience URLs ---
output "observe_console_url" {
  description = "Base Observe console URL"
  value       = "https://${var.observe_customer}.${var.observe_domain}"
}
