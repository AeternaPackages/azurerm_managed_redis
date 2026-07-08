# --- azurerm_managed_redis ---
output "managed_redises" {
  description = "All managed_redis resources"
  value       = module.managed_redises.managed_redises
  sensitive   = true
}
output "managed_redises_customer_managed_key" {
  description = "List of customer_managed_key values across all managed_redises"
  value       = [for k, v in module.managed_redises.managed_redises : v.customer_managed_key]
}
output "managed_redises_default_database" {
  description = "List of default_database values across all managed_redises"
  value       = [for k, v in module.managed_redises.managed_redises : v.default_database]
  sensitive   = true
}
output "managed_redises_high_availability_enabled" {
  description = "List of high_availability_enabled values across all managed_redises"
  value       = [for k, v in module.managed_redises.managed_redises : v.high_availability_enabled]
}
output "managed_redises_hostname" {
  description = "List of hostname values across all managed_redises"
  value       = [for k, v in module.managed_redises.managed_redises : v.hostname]
}
output "managed_redises_identity" {
  description = "List of identity values across all managed_redises"
  value       = [for k, v in module.managed_redises.managed_redises : v.identity]
}
output "managed_redises_location" {
  description = "List of location values across all managed_redises"
  value       = [for k, v in module.managed_redises.managed_redises : v.location]
}
output "managed_redises_name" {
  description = "List of name values across all managed_redises"
  value       = [for k, v in module.managed_redises.managed_redises : v.name]
}
output "managed_redises_public_network_access" {
  description = "List of public_network_access values across all managed_redises"
  value       = [for k, v in module.managed_redises.managed_redises : v.public_network_access]
}
output "managed_redises_resource_group_name" {
  description = "List of resource_group_name values across all managed_redises"
  value       = [for k, v in module.managed_redises.managed_redises : v.resource_group_name]
}
output "managed_redises_sku_name" {
  description = "List of sku_name values across all managed_redises"
  value       = [for k, v in module.managed_redises.managed_redises : v.sku_name]
}
output "managed_redises_tags" {
  description = "List of tags values across all managed_redises"
  value       = [for k, v in module.managed_redises.managed_redises : v.tags]
}


# --- azurerm_managed_redis_access_policy_assignment ---
output "managed_redis_access_policy_assignments" {
  description = "All managed_redis_access_policy_assignment resources"
  value       = module.managed_redis_access_policy_assignments.managed_redis_access_policy_assignments
}
output "managed_redis_access_policy_assignments_managed_redis_id" {
  description = "List of managed_redis_id values across all managed_redis_access_policy_assignments"
  value       = [for k, v in module.managed_redis_access_policy_assignments.managed_redis_access_policy_assignments : v.managed_redis_id]
}
output "managed_redis_access_policy_assignments_object_id" {
  description = "List of object_id values across all managed_redis_access_policy_assignments"
  value       = [for k, v in module.managed_redis_access_policy_assignments.managed_redis_access_policy_assignments : v.object_id]
}


# --- azurerm_managed_redis_geo_replication ---
output "managed_redis_geo_replications" {
  description = "All managed_redis_geo_replication resources"
  value       = module.managed_redis_geo_replications.managed_redis_geo_replications
}
output "managed_redis_geo_replications_linked_managed_redis_ids" {
  description = "List of linked_managed_redis_ids values across all managed_redis_geo_replications"
  value       = [for k, v in module.managed_redis_geo_replications.managed_redis_geo_replications : v.linked_managed_redis_ids]
}
output "managed_redis_geo_replications_managed_redis_id" {
  description = "List of managed_redis_id values across all managed_redis_geo_replications"
  value       = [for k, v in module.managed_redis_geo_replications.managed_redis_geo_replications : v.managed_redis_id]
}



