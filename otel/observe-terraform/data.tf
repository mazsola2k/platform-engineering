# =============================================================================
# Data Sources — Workspace & OTEL Datastream
# =============================================================================

data "observe_workspace" "default" {
  name = var.workspace_name
}

# Create a datastream that serves as the ingestion point for OTEL metrics.
# Its .dataset attribute provides the raw observation dataset OID that
# downstream filtered datasets consume.
resource "observe_datastream" "otel" {
  workspace   = data.observe_workspace.default.oid
  name        = var.otel_datastream_name
  description = "Oracle RAC OTEL metrics & logs datastream managed by Terraform"
}

# Ingest token for the datastream — used by the OTEL collector to ship data.
resource "observe_datastream_token" "otel" {
  datastream  = observe_datastream.otel.oid
  name        = "${var.otel_datastream_name}-ingest"
  description = "OTEL collector ingest token (Terraform-managed)"
}
