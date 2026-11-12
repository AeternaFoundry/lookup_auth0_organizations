output "organizations_lookup_id" {
  description = "Map of id values across all organizations_lookup, keyed the same as var.organizations_lookup"
  value       = { for k, v in data.auth0_organizations.organizations_lookup : k => v.id }
}
output "organizations_lookup_include_client_association_for" {
  description = "Map of include_client_association_for values across all organizations_lookup, keyed the same as var.organizations_lookup"
  value       = { for k, v in data.auth0_organizations.organizations_lookup : k => v.include_client_association_for }
}
output "organizations_lookup_organizations" {
  description = "Map of organizations values across all organizations_lookup, keyed the same as var.organizations_lookup"
  value       = { for k, v in data.auth0_organizations.organizations_lookup : k => v.organizations }
}

