// Purpose of that module to demonstrate how to work with Terraform modules

resource "google_compute_network" "tf-hw2-vpc" {
  project                 = var.project
  name                    = var.vpc_name
  mtu                     = 1460
}

resource "google_compute_subnetwork" "tf-hw2-subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.cidr
  region        = var.region
  network       = google_compute_network.tf-hw2-vpc.id
  project       = var.project
}
resource "google_compute_address" "tf-hw2-internal-address" {
  name         = "my-internal-address"
  subnetwork   = google_compute_subnetwork.tf-hw2-subnet.id
  address_type = "INTERNAL"
  address      = "192.168.0.3"
  region       = var.region

}