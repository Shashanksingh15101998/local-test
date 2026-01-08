resource "google_compute_network" "that" {
  name                            = var.vpc_network
  auto_create_subnetworks         = false
}
 
resource "google_compute_subnetwork" "that" {
  name                     = "${var.vpc_network}-subnet"
  region                   = var.region
  network                  = google_compute_network.that.id
  ip_cidr_range            = "10.0.0.0/24"
}
