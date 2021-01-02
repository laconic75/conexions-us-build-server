##################### General
variable "availability_zone" {
  type    = string
  default = "us-east-1a"
}

variable "region" {
  type    = string
  default = "us-east-1"
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
  default = "arn:aws:iam::698732043690:instance-profile/web_server_conexions.us"
}

#################### Tags
variable "standard_tags" {
  type = map(string)
}
