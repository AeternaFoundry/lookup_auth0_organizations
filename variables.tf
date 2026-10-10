variable "organizations_lookup" {
  description = <<EOT
Map of organizations_lookup, attributes below
Optional:
    - include_client_association_for
EOT

  type = map(object({
    include_client_association_for = optional(string)
  }))
}

