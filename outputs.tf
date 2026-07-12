# --- azurerm_managed_redis ---
output "managed_redises_customer_managed_key" {
  description = "Map of customer_managed_key values across all managed_redises, keyed the same as var.managed_redises"
  value       = module.managed_redises.managed_redises_customer_managed_key
}

output "managed_redises_default_database" {
  description = "Map of default_database values across all managed_redises, keyed the same as var.managed_redises"
  value       = module.managed_redises.managed_redises_default_database
  sensitive   = true
}

output "managed_redises_high_availability_enabled" {
  description = "Map of high_availability_enabled values across all managed_redises, keyed the same as var.managed_redises"
  value       = module.managed_redises.managed_redises_high_availability_enabled
}

output "managed_redises_hostname" {
  description = "Map of hostname values across all managed_redises, keyed the same as var.managed_redises"
  value       = module.managed_redises.managed_redises_hostname
}

output "managed_redises_identity" {
  description = "Map of identity values across all managed_redises, keyed the same as var.managed_redises"
  value       = module.managed_redises.managed_redises_identity
}

output "managed_redises_location" {
  description = "Map of location values across all managed_redises, keyed the same as var.managed_redises"
  value       = module.managed_redises.managed_redises_location
}

output "managed_redises_name" {
  description = "Map of name values across all managed_redises, keyed the same as var.managed_redises"
  value       = module.managed_redises.managed_redises_name
}

output "managed_redises_public_network_access" {
  description = "Map of public_network_access values across all managed_redises, keyed the same as var.managed_redises"
  value       = module.managed_redises.managed_redises_public_network_access
}

output "managed_redises_resource_group_name" {
  description = "Map of resource_group_name values across all managed_redises, keyed the same as var.managed_redises"
  value       = module.managed_redises.managed_redises_resource_group_name
}

output "managed_redises_sku_name" {
  description = "Map of sku_name values across all managed_redises, keyed the same as var.managed_redises"
  value       = module.managed_redises.managed_redises_sku_name
}

output "managed_redises_tags" {
  description = "Map of tags values across all managed_redises, keyed the same as var.managed_redises"
  value       = module.managed_redises.managed_redises_tags
}

# --- azurerm_managed_redis_access_policy_assignment ---
output "managed_redis_access_policy_assignments_managed_redis_id" {
  description = "Map of managed_redis_id values across all managed_redis_access_policy_assignments, keyed the same as var.managed_redis_access_policy_assignments"
  value       = module.managed_redis_access_policy_assignments.managed_redis_access_policy_assignments_managed_redis_id
}

output "managed_redis_access_policy_assignments_object_id" {
  description = "Map of object_id values across all managed_redis_access_policy_assignments, keyed the same as var.managed_redis_access_policy_assignments"
  value       = module.managed_redis_access_policy_assignments.managed_redis_access_policy_assignments_object_id
}

# --- azurerm_managed_redis_geo_replication ---
output "managed_redis_geo_replications_linked_managed_redis_ids" {
  description = "Map of linked_managed_redis_ids values across all managed_redis_geo_replications, keyed the same as var.managed_redis_geo_replications"
  value       = module.managed_redis_geo_replications.managed_redis_geo_replications_linked_managed_redis_ids
}

output "managed_redis_geo_replications_managed_redis_id" {
  description = "Map of managed_redis_id values across all managed_redis_geo_replications, keyed the same as var.managed_redis_geo_replications"
  value       = module.managed_redis_geo_replications.managed_redis_geo_replications_managed_redis_id
}


