variable "name" {
  type = string

  default = "dex"
}

variable "source_repository_url" {
  type = string

  default = "https://github.com/camptocamp/devops-stack-module-dex.git"
}

variable "source_target_revision" {
  type = string

  default = null
}

variable "destination_namespace" {
  type = string

  default = "dex"
}

variable "helm_values" {
  type = any

  default = []
}

variable "cluster_name" {
  type = string
}

variable "argocd_namespace" {
  type = string
}

variable "base_domain" {
  type = string
}

variable "cluster_issuer" {
  type = string
}

variable "connectors" {
  type = any
}

variable "clients" {
  type = map(object({
    id   = string
    name = string

    public = bool

    redirect_uris = list(string)
  }))
}

variable "dependency_ids" {
  type = map(string)

  default = {}
}
