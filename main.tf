resource "null_resource" "dependencies" {
  triggers = var.dependency_ids
}

resource "argocd_project" "this" {
  metadata {
    name      = var.name
    namespace = var.argocd_namespace
  }

  spec {
    description = "Dex IdP application project"

    source_repos = [
      var.source_repository_url,
    ]

    destination {
      name      = "in-cluster"
      namespace = var.destination_namespace
    }

    orphaned_resources {
      warn = true
    }

    cluster_resource_whitelist {
      group = "*"
      kind  = "*"
    }
  }
}

data "utils_deep_merge_yaml" "helm_values" {
  input = [
    for values in concat([local.helm_values], var.helm_values) :
    yamlencode(values)
  ]
}

resource "argocd_application" "this" {
  metadata {
    name      = var.name
    namespace = var.argocd_namespace
  }

  spec {
    project = argocd_project.this.metadata.0.name

    source {
      repo_url        = var.source_repository_url
      path            = "helm"
      target_revision = coalesce(var.source_target_revision, trimspace(file("${path.module}/version.txt")))

      helm {
        values = data.utils_deep_merge_yaml.helm_values.output
      }
    }

    destination {
      name      = "in-cluster"
      namespace = var.destination_namespace
    }

    sync_policy {
      automated = {
        prune       = true
        self_heal   = true
        allow_empty = false
      }

      sync_options = [
        "CreateNamespace=true"
      ]
    }
  }

  depends_on = [
    resource.null_resource.dependencies,
  ]
}

resource "null_resource" "this" {
  depends_on = [
    resource.argocd_application.this,
  ]
}
