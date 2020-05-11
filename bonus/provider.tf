provider "google" {
  version = "3.5.0"

  credentials = file("bb.json")

  project = "enter name of your project id ehere"
  region  = "enter a region for your project"
  zone    = "enter a zone for your project"
}
