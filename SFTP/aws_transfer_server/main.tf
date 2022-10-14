resource "aws_transfer_server" "transfer_server" {

  identity_provider_type = var.identity_provider_type
  logging_role           = var.logging_role
  force_destroy          = var.force_destroy
  tags                   = var.tags
  endpoint_type          = var.endpoint_type
  dynamic "endpoint_details" {
    for_each = var.endpoint_vpc
    content {
      vpc_id = lookup(endpoint_details.value,"vpc_id",null)

    }
  }

  
}



