variable "key_name" {
  default = "GRSI-AWS"
}

variable "sec_group_name" {
  default = "Test group 2"
}

variable "sec_group_description" {
  default = "Test group 2 apache 8080,443"
}

variable "user_data" {
  default = "./cloud-config.sh"
}

variable "volume_size" {
  default = 20
}

variable "ip_list" {
  description = "Allowed IPs"
  type = list(string)
  default = [
    "78.29.165.18/32",
  ]
}

variable "port_list" {
  description = "Allowed ports"
  type = list(number)
  default = [
    22,
    443,
    8080,
  ]
}