#Module      : SFTP
#Description : Terraform sftp module variables.
variable "enable_sftp_server" {
  type        = bool
  default     = true
  description = "Set to false to prevent the module from creating any resources."
}
variable "endpoint_vpc" {
  type = list(any)
  default = []
  description = "vpc_id should be mention if endpoint type is VPC"
  
}

variable "endpoint_type" {
  type        = string
  default     = "PUBLIC"
  description = "The type of endpoint that you want your SFTP server connect to. If you connect to a VPC (or VPC_ENDPOINT), your SFTP server isn't accessible over the public internet. If you want to connect your SFTP server via public internet, set PUBLIC. Defaults to PUBLIC"
}

variable "identity_provider_type" {
  type        = string
  default     = "SERVICE_MANAGED"
  description = "The mode of authentication enabled for this service. The default value is SERVICE_MANAGED, which allows you to store and access SFTP user credentials within the service. API_GATEWAY."
}

variable "logging_role" {
  type        = string
  default     = ""
  description = "Amazon Resource Name (ARN) of an IAM role that allows the service to write your SFTP users’ activity to your Amazon CloudWatch logs for monitoring and auditing purposes."

}
variable "force_destroy" {
  type        = bool
  default     = false
  description = " (Optional) A boolean that indicates all users associated with the server should be deleted so that the Server can be destroyed without error. The default value is false. This option only applies to servers configured with a SERVICE_MANAGED identity_provider_type."

}
variable "tags" {
  type        = map(any)
  description = "A map of tags to assign to the resource."


}