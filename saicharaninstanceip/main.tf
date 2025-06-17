provider "google" {
  project     = "saicharan-457910"
  region      = "us-central1-a"
  credentials = file("gcp.json")
}

resource "google_compute_instance" "ipcreation" {
  name = "ipsaicharan"
  zone             = "us-central1-a"
  machine_type     = "n2-standard-2"
  

  boot_disk {
    initialize_params {
      image = "centos-stream-9"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "hr395cus"
    subnetwork = "devip-1"

    
    access_config {
      
    }
}
}
