resource "google_compute_instance" "that"{
  name         = var.vm_name
  zone         = var.zone
  machine_type = "e2-medium"   
 
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }
 
  network_interface {
    network    = var.network_id
    subnetwork = var.subnet_id
}
}
