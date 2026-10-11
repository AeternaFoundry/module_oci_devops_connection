variable "devops_connections" {
  description = <<EOT
Map of devops_connections, attributes below
Required:
    - connection_type
    - project_id
Optional:
    - access_token
    - app_password
    - base_url
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - username
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - tls_verify_config (block):
        - ca_certificate_bundle_id (required)
        - tls_verify_mode (required)
EOT

  type = map(object({
    connection_type = string
    project_id      = string
    access_token    = optional(string)
    app_password    = optional(string)
    base_url        = optional(string)
    defined_tags    = optional(map(string))
    description     = optional(string)
    display_name    = optional(string)
    freeform_tags   = optional(map(string))
    username        = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    tls_verify_config = optional(object({
      ca_certificate_bundle_id = string
      tls_verify_mode          = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.devops_connections : (
        contains([for v in ["BITBUCKET_CLOUD_APP_PASSWORD", "BITBUCKET_SERVER_ACCESS_TOKEN", "GITHUB_ACCESS_TOKEN", "GITLAB_ACCESS_TOKEN", "GITLAB_SERVER_ACCESS_TOKEN", "VBS_ACCESS_TOKEN"] : lower(v)], lower(v.connection_type))
      )
    ])
    error_message = "must be one of: \"BITBUCKET_CLOUD_APP_PASSWORD\", \"BITBUCKET_SERVER_ACCESS_TOKEN\", \"GITHUB_ACCESS_TOKEN\", \"GITLAB_ACCESS_TOKEN\", \"GITLAB_SERVER_ACCESS_TOKEN\", \"VBS_ACCESS_TOKEN\""
  }
  validation {
    condition = alltrue([
      for k, v in var.devops_connections : (
        v.tls_verify_config == null || (contains([for v in ["CA_CERTIFICATE_VERIFY"] : lower(v)], lower(v.tls_verify_config.tls_verify_mode)))
      )
    ])
    error_message = "must be one of: \"CA_CERTIFICATE_VERIFY\""
  }
}

