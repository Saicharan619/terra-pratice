# creation of one auto subnets and one custom subnets
resource "google_compute_network" "vpc_auto" {
  name                    = "hr395auto"
  auto_create_subnetworks = true

}
resource "google_compute_network" "vpc_cus" {
  name                    = "hr395cus"
  auto_create_subnetworks = false

}
# provider details
provider "google" {
  project     = "saitejaameda"
  region      = "us-central1"
  credentials = file("key.json")
}

# here creation of 3 subnets using count 
resource "google_compute_subnetwork" "subnets" {
   count = 3
   name  = "devip-${count.index + 1}"
  # ip_cidr_range = "10.2.0.0/16"
  ip_cidr_range = "10.${count.index + 3}.0.0/16"
  network       = google_compute_network.vpc_cus.id
}