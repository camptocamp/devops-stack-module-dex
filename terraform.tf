terraform {
  required_providers {
    argocd = {
      source  = "oboukili/argocd"
      version = ">= 5"
    }

    utils = {
      source = "cloudposse/utils"
    }
  }
}
