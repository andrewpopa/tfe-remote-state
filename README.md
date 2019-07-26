# tfe-remote-state
Create `random_pet` resource with random name

# use case
Imagine you have a separate team or need to split you infrastructure resources between 2 repo.

This would be your first repo which - generate random pet name for you infrastructure use.

# Pre-requisites

- install [git](https://git-scm.com/downloads)
- install [Terraform](https://learn.hashicorp.com/terraform/getting-started/install.html)
- [TFE](https://www.terraform.io/docs/enterprise/index.html)

## clone repository to use it
```
git clone git@github.com:andrewpopa/tfe-remote-state.git
cd tfe-remote-state
```

## usage

- you need to configure access token in TFE which has to be in your `.terraformrc`
- keep in mind you have same TF version localy/TFE
- [create](https://www.terraform.io/docs/enterprise/workspaces/index.html) separate workspace for you repo in TFE
- [link](https://www.terraform.io/docs/enterprise/vcs/index.html) your repo in github with tfe workspace 

```
terraform init
terraform plan
terraform apply
```

## destroy created infrastructure
```
terraform destroy
```