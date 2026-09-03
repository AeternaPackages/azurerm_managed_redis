locals {
  managed_redis = { for k1, v1 in var.managed_redis : k1 => { customer_managed_key = v1.customer_managed_key, default_database = v1.default_database, high_availability_enabled = v1.high_availability_enabled, identity = v1.identity, location = v1.location, name = v1.name, public_network_access = v1.public_network_access, resource_group_name = v1.resource_group_name, sku_name = v1.sku_name, tags = v1.tags } }

  managed_redis_access_policy_assignments = merge([
    for k1, v1 in var.managed_redis : {
      for k2, v2 in coalesce(v1.managed_redis_access_policy_assignments, {}) :
      "${k1}/${k2}" => merge(v2, {
        managed_redis_id = module.managed_redis.managed_redis_id["${k1}"]
      })
    }
  ]...)

  managed_redis_geo_replications = merge([
    for k1, v1 in var.managed_redis : {
      for k2, v2 in coalesce(v1.managed_redis_geo_replications, {}) :
      "${k1}/${k2}" => merge(v2, {
        managed_redis_id = module.managed_redis.managed_redis_id["${k1}"]
      })
    }
  ]...)
}

module "managed_redis" {
  source        = "git::https://github.com/AeternaModules/azurerm_managed_redis.git?ref=v5.0.1"
  managed_redis = local.managed_redis
}

module "managed_redis_access_policy_assignments" {
  source                                  = "git::https://github.com/AeternaModules/azurerm_managed_redis_access_policy_assignment.git?ref=v5.0.1"
  managed_redis_access_policy_assignments = local.managed_redis_access_policy_assignments
  depends_on                              = [module.managed_redis]
}

module "managed_redis_geo_replications" {
  source                         = "git::https://github.com/AeternaModules/azurerm_managed_redis_geo_replication.git?ref=v5.0.1"
  managed_redis_geo_replications = local.managed_redis_geo_replications
  depends_on                     = [module.managed_redis]
}

