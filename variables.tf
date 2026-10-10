variable "iam_openid_connect_providers" {
  description = <<EOT
Map of iam_openid_connect_providers, attributes below
Required:
    - client_id_list
    - url
Optional:
    - tags
    - tags_all
    - thumbprint_list
EOT

  type = map(object({
    client_id_list  = set(string)
    url             = string
    tags            = optional(map(string))
    tags_all        = optional(map(string))
    thumbprint_list = optional(list(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.iam_openid_connect_providers : (
        alltrue([for x in v.client_id_list : length(x) >= 1 && length(x) <= 255])
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.iam_openid_connect_providers : (
        v.thumbprint_list == null || (alltrue([for x in v.thumbprint_list : length(x) >= 40 && length(x) <= 40]))
      )
    ])
    error_message = "must be between 40 and 40 characters"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

