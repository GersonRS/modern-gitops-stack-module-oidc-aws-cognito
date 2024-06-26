output "id" {
  description = "ID to pass other modules in order to refer to this module as a dependency."
  value       = resource.null_resource.this.id
}

output "oidc" {
  description = "Object containing multiple OIDC configuration values."
  value       = local.oidc
  sensitive   = true
}

output "modern_gitops_stack_admins" {
  description = "Map containing the usernames and e-mails of the created users from `var.user_map`."
  value       = var.user_map != {} ? { for key, value in var.user_map : value.username => value.email } : {}
  sensitive   = true
}

output "cognito_user_pool_id" {
  description = "ID of the Cognito user pool. It will either be the ID of the pool created by this module or simply the ID that was given to the variable `cognito_user_pool_id`."
  value       = local.cognito_user_pool_id
}
