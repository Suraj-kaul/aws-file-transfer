variable "server_id" {
  type        = any
  description = " (Requirement) The Server ID of the Transfer Server (e.g., s-12345678)"
  default     = ""
}

variable "user_name" {
  type        = string
  description = "(Requirement) The name of the user account that is assigned to one or more servers."
  default     = ""
}

variable "public_key" {
  type        = string
  default     = ""
  description = "Name  (e.g. `ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQ`)."

}