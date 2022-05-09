resource "random_password" "client_secret" {
  for_each = var.clients

  length = 64

  lower   = true
  upper   = true
  number  = true
  special = false
}
