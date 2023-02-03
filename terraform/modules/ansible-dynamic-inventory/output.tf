output "id" {
  value       = local_file.dynamic_inventory.id
  description = "The id of the file."
}

output "filename" {
  value       = local_file.dynamic_inventory.filename
  description = "The path and name of the file."
}
