resource "oci_devops_connection" "devops_connections" {
  for_each = var.devops_connections

  connection_type = each.value.connection_type
  project_id      = each.value.project_id
  access_token    = each.value.access_token
  app_password    = each.value.app_password
  base_url        = each.value.base_url
  defined_tags    = each.value.defined_tags
  description     = each.value.description
  display_name    = each.value.display_name
  freeform_tags   = each.value.freeform_tags
  username        = each.value.username

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "tls_verify_config" {
    for_each = each.value.tls_verify_config != null ? [each.value.tls_verify_config] : []
    content {
      ca_certificate_bundle_id = tls_verify_config.value.ca_certificate_bundle_id
      tls_verify_mode          = tls_verify_config.value.tls_verify_mode
    }
  }
}

