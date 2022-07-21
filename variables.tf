// Project related variables
variable "project" {
  description = "GCP project id"
  type        = string
  default     = "nimble-analyst-356011"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "europe-central2-a"
}

variable "key" {
  description = "path to json key to service account"
  type        = string
  default     = "key.json"
}

variable "region" {
  type        = string
  description = "GCP region"
  default     = "europe-central2"
}

//VPC related variables
variable "vpc_name" {
  type        = string
  description = "GCP VPC name"
  default     = "tf-hw2-vpc"
}

variable "subnet_name" {
  type        = string
  description = "VPC subnet name"
  default     = "tf-hw2-subnet"
}

variable "cidr" {
  type        = string
  description = "VPC subnet cidr address"
  default     = "192.168.0.0/24"
}


variable "instance_type" {
  type        = string
  description = "GCE instance machine type"
  default     = "f1-micro"
}

variable "instance_image" {
  type        = string
  description = "GCE instance image"
  default     = "debian-cloud/debian-9"
}

variable "instance_name" {
  type        = string
  description = "GCE instance name"
  default     = "tf-hw2-instance"
}

variable "disk_name" {
  type        = string
  description = "GCE disk name"
  default     = "tf-hw2-disk"
}

variable "disk_type" {
  type        = string
  description = "GCE disk type"
  default     = "pd-balanced"
}

variable "disk_size" {
  type        = number
  description = "GCE disk size in Gb"
  default     = "1"
}




