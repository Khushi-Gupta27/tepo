variable "resource_group" {
  type    = string
  default = "Khushi_Gupta_RG"   # You must create this RG manually or already have it
}

variable "location" {
  type    = string
  default = "East US"
}

variable "sa_name" {
  type    = string
  default = "khsuhist"
}

variable "app_name" {
  type    = string
  default = "webapp131"
}