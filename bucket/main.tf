provider "google" {
  project     = "saitejaameda"
  region      = "us-central1"
  credentials = file("gcp.json")
}

resource "google_storage_bucket" "firstbucket" {
#     count = 3
#    "softilityhr395{count.index}"
  name  =  "softilityhr394"
  location      = "US"
  storage_class = "STANDARD"
}
resource "google_storage_bucket_object" "linuxdoc" {
    name ="linuxdoc"
    bucket = google_storage_bucket.firstbucket.name
source = "Fresher-Linux-Training-Schedule 123.pdf"
  
}