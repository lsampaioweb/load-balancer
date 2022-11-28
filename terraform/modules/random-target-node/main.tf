resource "random_integer" "target_node" {
  min = var.min
  max = var.max
}
