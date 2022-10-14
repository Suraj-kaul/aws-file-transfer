variable "server_transfer" {
  type = map(any)
  description = "Can create multiple resources with the help of for_each"

}

variable "common_tags" {
  type = map(any)
  description = "common tags for resources"

}

variable "transfer_ssh_keys" {
  type = map(any)
  description = "Can create multiple resources with the help of for_each"

}

variable "server_users" {
  type = map(any)
  description = "Can create multiple resources with the help of for_each"

}



variable "s3_bucket_id" {
  type        = string
  default     = ""
  description = "The first item in the path is the name of the home bucket "

}

variable "sub_folder" {
  type        = string
  default     = ""
  description = "The landing directory (folder) for a user when they log in to the server using their SFTP client"

}
variable "vpc_id" {
  type        = string
  default     = ""
  description = "VPC_id"

}
variable "sftp_role_name" {
  type        = string
  default     = "sftp-suraj"
  description = "sftp-role-name"


}
variable "create_iam_policy" {
  type        = bool
  default     = true
  description = "creating iam_policy"


}
variable "sftp_policy_name" {
  type        = string
  default     = "aws_tranfer_family_iam_policy"
  description = "Giving policy name"

}
variable "sftp_iam_description" {
  type        = string
  default     = "aws_transfer_policy_description"
  description = "policy description"

}
variable "tags" {
  type        = map(any)
  description = "List of tags for iam"
  default = {
    "value" = "role-tags"
  }

}
variable "aws_managed_policy" {
  type    = list(any)
  default = []
}
variable "region" {
  type = string
  description = "specify the region"
  
}