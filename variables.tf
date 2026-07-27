variable "managed_redis" {
  description = <<EOT
Map of managed_redis, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku_name
Optional:
    - high_availability_enabled
    - public_network_access
    - tags
    - customer_managed_key (block)
    - default_database (block)
    - identity (block)
Nested managed_redis_access_policy_assignments (azurerm_managed_redis_access_policy_assignment):
    Required:
        - object_id
Nested managed_redis_geo_replications (azurerm_managed_redis_geo_replication):
    Required:
        - linked_managed_redis_ids
EOT

  type = map(object({
    location                  = string
    name                      = string
    resource_group_name       = string
    sku_name                  = string
    high_availability_enabled = optional(bool)
    public_network_access     = optional(string)
    tags                      = optional(map(string))
    customer_managed_key = optional(object({
      key_vault_key_id          = string
      user_assigned_identity_id = string
    }))
    default_database = optional(object({
      access_keys_authentication_enabled = optional(bool)
      client_protocol                    = optional(string)
      clustering_policy                  = optional(string)
      eviction_policy                    = optional(string)
      geo_replication_group_name         = optional(string)
      module = optional(list(object({
        args = optional(string)
        name = string
      })))
      persistence_append_only_file_backup_frequency = optional(string)
      persistence_redis_database_backup_frequency   = optional(string)
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    managed_redis_access_policy_assignments = optional(map(object({
      object_id = string
    })))
    managed_redis_geo_replications = optional(map(object({
      linked_managed_redis_ids = set(string)
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.managed_redis) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.managed_redis : [for kk in keys(coalesce(v0.managed_redis_access_policy_assignments, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.managed_redis : [for kk in keys(coalesce(v0.managed_redis_geo_replications, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
