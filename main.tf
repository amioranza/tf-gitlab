terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "3.6.0"
    }
  }
}

provider "gitlab" {
  token = var.gitlab_token
}

resource "gitlab_project" "centralizado" {
  name           = "centralizado"
  description    = "Centralizado"
  default_branch = "main"
}
