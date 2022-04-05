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

//VPC related variables
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

// Instance related variables
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
