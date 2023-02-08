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

variable "custom_image" {
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

variable "target_revision" {
  description = "Override for target revision of the application chart."
  type        = string
  default     = "v1.0.0-alpha.2" # x-release-please-version
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
    id     = string
    name   = string
    secret = string

    public = bool

    redirect_uris = list(string)
  }))
}

variable "dependency_ids" {
  type = map(string)

  default = {}
}

variable "app_autosync" {
  description = "Automated sync options for the Argo CD Application resource."
  type = object({
    allow_empty = optional(bool)
    prune       = optional(bool)
    self_heal   = optional(bool)
  })
  default = {
    allow_empty = false
    prune       = true
    self_heal   = true
  }
}
