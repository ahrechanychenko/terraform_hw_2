// Project related variables
variable "project" {
  description = "GCP project id"
  type = string
}

variable "zone" {
  description = "GCP zone"
  type = string
}

variable "key" {
  description= "path to json key to service account"
  type = string
}

variable "region" {
  type = string
  description = "GCP region"
}

variable "vpc_name" {
  type = string
  description = "GCP VPC name"
}

variable "subnet_name" {
  type = string
  description = "VPC subnet name"
}

variable "cidr" {
  type = string
  description = "VPC subnet cidr address"
}


variable "instance_type" {
  type = string
  description = "GCE instance machine type"
}

variable "instance_image" {
  type = string
  description = "GCE instance image"
}

variable "instance_name" {
  type = string
  description = "GCE instance name"
 }

variable "disk_name" {
  type = string
  description = "GCE disk name"
}

variable "disk_type" {
  type = string
  description = "GCE disk type"
}

variable "disk_size" {
  type = number
  description = "GCE disk size in Gb"
}