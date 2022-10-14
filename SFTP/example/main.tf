data "aws_iam_policy_document" "transfer_server_assume_role" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["transfer.amazonaws.com"]
    }
  }
}

data "aws_iam_policy_document" "transfer_server_assume_policy" {
  statement {
    effect = "Allow"

    actions = [
      "s3:*",
    ]

    resources = ["*"]
  }
}




module "transfer_server" {
  source                 = "../aws_transfer_server"
  for_each               = var.server_transfer
  endpoint_type          = each.value.endpoint_type
  identity_provider_type = each.value.identity_provider_type
  logging_role           = module.IAM.role_arn
  force_destroy          = each.value.force_destroy
  endpoint_vpc           = each.value.endpoint_vpc
  tags                   = merge(var.common_tags, each.value.tags)

}

module "transfer_ssh_key" {
  source              = "../aws_transfer_ssh_key"
  for_each            = var.transfer_ssh_keys
  server_id           =  module.transfer_server["0"].transfer_server_id
  user_name           =  module.server_user["suraj-kaul"].user_server_id
  public_key          = each.value.public_key


}

module "server_user" {
  source           = "../transfer_server_user"
  for_each         = var.server_users
  server_id_user =  module.transfer_server["0"].transfer_server_id
  user_names        = each.key
  role             = module.IAM.role_arn
  home_directory   = format("/%s/%s", var.s3_bucket_id, var.sub_folder)
  tags             = merge(var.common_tags, each.value.tags)
}


module "IAM" {
  source = "../iam"

  role_name          = var.sftp_role_name
  assume_role_policy = data.aws_iam_policy_document.transfer_server_assume_role.json #var.assume_role_policy
  create_iam_policy  = var.create_iam_policy                                         // true
  policy_name        = var.sftp_policy_name
  iam_description    = var.sftp_iam_description
  policy             = data.aws_iam_policy_document.transfer_server_assume_policy.json #var.policy
  tags               = merge(var.common_tags, var.tags)
  aws_managed_policy = var.aws_managed_policy

}