output "devops_connections_id" {
  description = "Map of id values across all devops_connections, keyed the same as var.devops_connections except keys with no id are omitted"
  value       = { for k, v in oci_devops_connection.devops_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "devops_connections_access_token" {
  description = "Map of access_token values across all devops_connections, keyed the same as var.devops_connections except keys with no access_token are omitted"
  value       = { for k, v in oci_devops_connection.devops_connections : k => v.access_token if v.access_token != null && length(v.access_token) > 0 }
}
output "devops_connections_app_password" {
  description = "Map of app_password values across all devops_connections, keyed the same as var.devops_connections except keys with no app_password are omitted"
  value       = { for k, v in oci_devops_connection.devops_connections : k => v.app_password if v.app_password != null && length(v.app_password) > 0 }
  sensitive   = true
}
output "devops_connections_base_url" {
  description = "Map of base_url values across all devops_connections, keyed the same as var.devops_connections except keys with no base_url are omitted"
  value       = { for k, v in oci_devops_connection.devops_connections : k => v.base_url if v.base_url != null && length(v.base_url) > 0 }
}
output "devops_connections_compartment_id" {
  description = "Map of compartment_id values across all devops_connections, keyed the same as var.devops_connections except keys with no compartment_id are omitted"
  value       = { for k, v in oci_devops_connection.devops_connections : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "devops_connections_connection_type" {
  description = "Map of connection_type values across all devops_connections, keyed the same as var.devops_connections except keys with no connection_type are omitted"
  value       = { for k, v in oci_devops_connection.devops_connections : k => v.connection_type if v.connection_type != null && length(v.connection_type) > 0 }
}
output "devops_connections_defined_tags" {
  description = "Map of defined_tags values across all devops_connections, keyed the same as var.devops_connections except keys with no defined_tags are omitted"
  value       = { for k, v in oci_devops_connection.devops_connections : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "devops_connections_description" {
  description = "Map of description values across all devops_connections, keyed the same as var.devops_connections except keys with no description are omitted"
  value       = { for k, v in oci_devops_connection.devops_connections : k => v.description if v.description != null && length(v.description) > 0 }
}
output "devops_connections_display_name" {
  description = "Map of display_name values across all devops_connections, keyed the same as var.devops_connections except keys with no display_name are omitted"
  value       = { for k, v in oci_devops_connection.devops_connections : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "devops_connections_freeform_tags" {
  description = "Map of freeform_tags values across all devops_connections, keyed the same as var.devops_connections except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_devops_connection.devops_connections : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "devops_connections_last_connection_validation_result" {
  description = "Map of last_connection_validation_result values across all devops_connections, keyed the same as var.devops_connections except keys with no last_connection_validation_result are omitted"
  value       = { for k, v in oci_devops_connection.devops_connections : k => v.last_connection_validation_result if v.last_connection_validation_result != null && length(v.last_connection_validation_result) > 0 }
}
output "devops_connections_project_id" {
  description = "Map of project_id values across all devops_connections, keyed the same as var.devops_connections except keys with no project_id are omitted"
  value       = { for k, v in oci_devops_connection.devops_connections : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "devops_connections_state" {
  description = "Map of state values across all devops_connections, keyed the same as var.devops_connections except keys with no state are omitted"
  value       = { for k, v in oci_devops_connection.devops_connections : k => v.state if v.state != null && length(v.state) > 0 }
}
output "devops_connections_system_tags" {
  description = "Map of system_tags values across all devops_connections, keyed the same as var.devops_connections except keys with no system_tags are omitted"
  value       = { for k, v in oci_devops_connection.devops_connections : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "devops_connections_time_created" {
  description = "Map of time_created values across all devops_connections, keyed the same as var.devops_connections except keys with no time_created are omitted"
  value       = { for k, v in oci_devops_connection.devops_connections : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "devops_connections_time_updated" {
  description = "Map of time_updated values across all devops_connections, keyed the same as var.devops_connections except keys with no time_updated are omitted"
  value       = { for k, v in oci_devops_connection.devops_connections : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "devops_connections_tls_verify_config" {
  description = "Map of tls_verify_config values across all devops_connections, keyed the same as var.devops_connections except keys with no tls_verify_config are omitted"
  value       = { for k, v in oci_devops_connection.devops_connections : k => one(v.tls_verify_config) if v.tls_verify_config != null && length(v.tls_verify_config) > 0 }
}
output "devops_connections_username" {
  description = "Map of username values across all devops_connections, keyed the same as var.devops_connections except keys with no username are omitted"
  value       = { for k, v in oci_devops_connection.devops_connections : k => v.username if v.username != null && length(v.username) > 0 }
}

