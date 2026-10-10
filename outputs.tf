output "iam_openid_connect_providers_id" {
  description = "Map of id values across all iam_openid_connect_providers, keyed the same as var.iam_openid_connect_providers"
  value       = { for k, v in aws_iam_openid_connect_provider.iam_openid_connect_providers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_openid_connect_providers_arn" {
  description = "Map of arn values across all iam_openid_connect_providers, keyed the same as var.iam_openid_connect_providers"
  value       = { for k, v in aws_iam_openid_connect_provider.iam_openid_connect_providers : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "iam_openid_connect_providers_client_id_list" {
  description = "Map of client_id_list values across all iam_openid_connect_providers, keyed the same as var.iam_openid_connect_providers"
  value       = { for k, v in aws_iam_openid_connect_provider.iam_openid_connect_providers : k => v.client_id_list if v.client_id_list != null && length(v.client_id_list) > 0 }
}
output "iam_openid_connect_providers_tags" {
  description = "Map of tags values across all iam_openid_connect_providers, keyed the same as var.iam_openid_connect_providers"
  value       = { for k, v in aws_iam_openid_connect_provider.iam_openid_connect_providers : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "iam_openid_connect_providers_tags_all" {
  description = "Map of tags_all values across all iam_openid_connect_providers, keyed the same as var.iam_openid_connect_providers"
  value       = { for k, v in aws_iam_openid_connect_provider.iam_openid_connect_providers : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "iam_openid_connect_providers_thumbprint_list" {
  description = "Map of thumbprint_list values across all iam_openid_connect_providers, keyed the same as var.iam_openid_connect_providers"
  value       = { for k, v in aws_iam_openid_connect_provider.iam_openid_connect_providers : k => v.thumbprint_list if v.thumbprint_list != null && length(v.thumbprint_list) > 0 }
}
output "iam_openid_connect_providers_url" {
  description = "Map of url values across all iam_openid_connect_providers, keyed the same as var.iam_openid_connect_providers"
  value       = { for k, v in aws_iam_openid_connect_provider.iam_openid_connect_providers : k => v.url if v.url != null && length(v.url) > 0 }
}

