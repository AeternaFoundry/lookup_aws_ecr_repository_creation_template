data "aws_ecr_repository_creation_template" "ecr_repository_creation_template_lookup" {
  for_each = var.ecr_repository_creation_template_lookup

  prefix        = each.value.prefix
  region        = each.value.region
  resource_tags = each.value.resource_tags
}

