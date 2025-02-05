provider "google" {
  project     = "saitejaameda"
  region      = "us-central1"
  credentials = file("gcp.json")
}



resource "google_compute_instance" "vm" {
  name         = var.var-1
  machine_type = var.var-2
  zone         = var.var-3

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
