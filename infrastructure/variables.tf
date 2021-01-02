##################### General
variable "availability_zone" {
  type    = string
  default = "us-east-1a"
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "ebs_size" {
  type = number
}

##################### Networking
variable "hostname" {
  type = string
}

variable "web_server_has_public_ip" {
  type    = bool
  default = true
}

variable "vpc" {
  type = string
}

#################### Security
variable "iam_instance_profile" {
  type    = string
  default = "web_server_conexions.us"
}

variable "key_name" {
  type    = string
  default = "connexions"
}

#################### Tags
variable "standard_tags" {
  type = map(string)
}
