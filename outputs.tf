output "id" {
  value = argocd_application.this.id
}

output "issuer_url" {
  value = local.issuer_url
}

output "clients" {
  value = var.clients
}
