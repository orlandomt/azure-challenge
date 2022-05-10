variable "environment" {
  type = string
  description = "Environment Name"
}

variable "rg_name" {
  type = string
  description = "Resource Group Name"
}

variable "rg_location" {
  type = string
  default = "East US"
  description = "Resource Group Location"
}

variable "sku_name" {
  type = string
  description = "SKU Name"
}

variable "app_svc_plan_name" {
  type = string
  description = "APP Service Plan Name"
}

variable "app_svc_plan_size" {
  type = string
  description = "APP Servoce Plan Size"
}

variable "backoffice_app_name" {
  type = string
  description = "Backoffice APP Name"
}

variable "merchant_app_name" {
  type = string
  description = "Merchant APP Name"
}

variable "payment_app_name" {
  type = string
  description = "Payment APP Name"
}