variable "mws_credentials_lookup" {
  description = <<EOT
Map of mws_credentials_lookup, attributes below
Optional:
    - ids
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    ids = optional(map(string))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

