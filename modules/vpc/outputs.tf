output "network_id" {
  description = "VPC network id"
  value       = google_compute_network.that.id
}
 
output "subnet_id" {
  description = "Subnet id"
  value       = google_compute_subnetwork.that.id
}
 
