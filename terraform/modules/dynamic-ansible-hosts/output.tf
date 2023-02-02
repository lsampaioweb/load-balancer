output "id" {
  value       = local_file.ansible_hosts.id
  description = "The id of the file."
}

output "filename" {
  value       = local_file.ansible_hosts.filename
  description = "The path and name of the file."
}
