provider "google" {
  credentials = file("/home/david/private-keys/cicd-lab-david-a611f8ca9284.json")
  project     = "${var.project_cicd_lab_david}"
  region      = "${var.region}"
}

resource "google_container_cluster" "cluster-cicd-lab-david" {
  project                  = "${var.project_cicd_lab_david}"
  name                     = "${var.name_cluster_cicd_lab_david}"
  location                 = "${var.region}"
  remove_default_node_pool = true
  initial_node_count       = 1

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }
  logging_service    = "logging.googleapis.com/kubernetes"
  monitoring_service = "monitoring.googleapis.com/kubernetes"

}

resource "google_container_node_pool" "cluster-cicd-lab-david-node-pool" {
  project     = "${var.project_cicd_lab_david}"
  name       = "${var.name_node_pool_cicd_lab_david}"
  location   = "${var.region}"
  cluster    = "${google_container_cluster.cluster-cicd-lab-david.name}"
  node_count = 1

  node_config {
    machine_type = "${var.machine_type}"
    disk_size_gb = 75
    disk_type    = "${var.disk_type}"
    image_type   = "${var.image_type}"


    metadata = {
      disable-legacy-endpoints = "true"
    }



    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}