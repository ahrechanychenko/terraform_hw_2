resource "google_compute_instance" "tf-hw2-gci" {
  name         = var.instance_name
  machine_type = var.instance_type
  zone         = var.zone


  boot_disk {
    initialize_params {
      image = var.instance_image
    }
  }


  network_interface {
    network    = var.vpc_name
    subnetwork = var.subnet_name
  }


  metadata_startup_script = <<-EOF
  sudo apt update
  sudo apt install -y nginx
  EOF
}

resource "google_compute_disk" "tf-hw2-disk" {
  name  = var.disk_name
  size = var.disk_size
  type  = var.disk_type
  zone  = var.zone
}

resource "google_compute_attached_disk" "tf-hw2-attached-disk" {
  disk     = google_compute_disk.tf-hw2-disk.id
  instance = google_compute_instance.tf-hw2-gci.id
}
