terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "popa-org"

    workspaces {
      name = "server-name"
    }
  }
}

resource "random_pet" "server" {}

output "name" {
  value       = "${random_pet.server.id}"
  description = "Random pet resource to name server infrastructure"
}
