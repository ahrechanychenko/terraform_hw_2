module "vpc" {
  source          = "./modules/google_network"
  project         = var.project
  region          = var.region
  vpc_name        = var.vpc_name
  subnet_name     = var.subnet_name
  cidr            = var.cidr
  auto_mode       = false
}

module "gce_instance" {
  source         = "./modules/gci"
  vpc_name       = var.vpc_name
  key            = var.key
  instance_type  = var.instance_type
  instance_name  = var.instance_name
  disk_name      = var.disk_name
  disk_type      = var.disk_type
  disk_size      = var.disk_size
  project        = var.project
  zone           = var.zone
  region         = var.region
  subnet_name    = module.vpc.subnet_self_link
  cidr           = var.cidr
  instance_image = var.instance_image

}

