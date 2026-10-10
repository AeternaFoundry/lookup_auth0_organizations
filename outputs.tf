output "organizations_lookup_id" {
  description = "Map of id values across all organizations_lookup, keyed the same as var.organizations_lookup except keys with no id are omitted"
  value       = { for k, v in data.auth0_organizations.organizations_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organizations_lookup_include_client_association_for" {
  description = "Map of include_client_association_for values across all organizations_lookup, keyed the same as var.organizations_lookup except keys with no include_client_association_for are omitted"
  value       = { for k, v in data.auth0_organizations.organizations_lookup : k => v.include_client_association_for if v.include_client_association_for != null && length(v.include_client_association_for) > 0 }
}
output "organizations_lookup_organizations" {
  description = "Map of organizations values across all organizations_lookup, keyed the same as var.organizations_lookup except keys with no organizations are omitted"
  value       = { for k, v in data.auth0_organizations.organizations_lookup : k => v.organizations if v.organizations != null && length(v.organizations) > 0 }
}

