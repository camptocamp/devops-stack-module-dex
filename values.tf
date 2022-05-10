locals {
  dns_domains = [
    "dex.apps.${var.base_domain}",
    "dex.apps.${var.cluster_name}.${var.base_domain}",
  ]

  helm_values = {
    dex = {
      config = {
        issuer = local.issuer_url

        storage = {
          type = "kubernetes"

          config = {
            inCluster = true
          }
        }

        oauth2 = {
          skipApprovalScreen = true
        }

        connectors = var.connectors

        staticClients = [
          for client in var.clients : {
            id     = client.id
            name   = client.name
            secret = client.secret

            public = client.public

            redirectURIs = client.redirect_uris
          }
        ]
      }

      ingress = {
        enabled = true

        annotations = {
          "cert-manager.io/cluster-issuer"                   = "${var.cluster_issuer}"
          "traefik.ingress.kubernetes.io/router.entrypoints" = "websecure"
          "traefik.ingress.kubernetes.io/router.middlewares" = "traefik-withclustername@kubernetescrd"
          "traefik.ingress.kubernetes.io/router.tls"         = "true"
          "ingress.kubernetes.io/ssl-redirect"               = "true"
          "kubernetes.io/ingress.allow-http"                 = "false"
        }

        hosts = [
          for domain in local.dns_domains : {
            host = domain

            paths = [
              {
                path     = "/"
                pathType = "ImplementationSpecific"
              },
            ]
          }
        ]

        tls = [
          {
            secretName = "dex-tls"

            hosts = [
              for domain in local.dns_domains :
              domain
            ]
          },
        ]
      }
    }
  }
}
