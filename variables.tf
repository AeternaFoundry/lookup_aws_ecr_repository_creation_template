variable "ecr_repository_creation_template_lookup" {
  description = <<EOT
Map of ecr_repository_creation_template_lookup, attributes below
Required:
    - prefix
Optional:
    - region
    - resource_tags
EOT

  type = map(object({
    prefix        = string
    region        = optional(string)
    resource_tags = optional(map(string))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

