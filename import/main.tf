provider "google" {
  # Configuration options
  project = "saitejaameda"
  credentials = file("gcp.json")
  zone = "us-central1-c"
}
