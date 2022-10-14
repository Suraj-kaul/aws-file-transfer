variable "server_id_user" {
  type        = any
  default     = ""
  description = "server-id of user"

}

variable "role" {
  type        = string
  description = "Amazon Resource Name (ARN) of an IAM role that allows the service to write your SFTP users’ activity to your Amazon CloudWatch logs for monitoring and auditing purposes"


}

variable "tags" {
  type        = map(any)
  description = "A map of tags to assign to the resource"

}
variable "user_names" {
  type        = string
  description = "User name for SFTP server"

}
variable "home_directory" {
  type        = string
  description = "The landing directory (folder) for a user when they log in to the server using their SFTP client. It should begin with a /. The first item in the path is the name of the home bucket (accessible as  in the policy) and the rest is the home directory (accessible as  in the policy). For example, /example-bucket-1234/username would set the home bucket to example-bucket-1234 and the home directory to username."

}
