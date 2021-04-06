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

resource "gitlab_project" "featurebranch" {
  name           = "featurebranch"
  description    = "Feature Branch"
  default_branch = "main"
}

resource "gitlab_project" "gitflow" {
  name           = "gitflow"
  description    = "Gitflow"
  default_branch = "main"
}
