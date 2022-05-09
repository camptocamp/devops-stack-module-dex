output "id" {
  value = argocd_application.this.id
}

output "issuer_url" {
  value = local.issuer_url
}

output "clients" {
  value = {
    for client_id, client in var.clients :
    client_id => merge(client, {
      secret = resource.random_password.client_secret[client_id].result
    })
  }
}
