provider "google" {
  version = "3.5.0"

  credentials = file("bb.json")

  project = "enter name of your project id here" # glcoud projects list
  region  = "enter a region for your project"
  zone    = "enter a zone for your project"
}
