data "auth0_organizations" "organizations_lookup" {
  for_each = var.organizations_lookup

  include_client_association_for = each.value.include_client_association_for
}

