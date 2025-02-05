provider "google" {
  project     = "saitejaameda"
  region      = "us-central1"
  credentials = file("jinkenskey.json")
}

resource "google_compute_instance" "terrainstancesai" {
  count = 3 
  name = "charan-${count.index + 1}"
  zone             = "us-central1-a"
  machine_type     = "e2-medium"
  

  boot_disk {
    initialize_params {
      image = "centos-stream-9"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"

}
}