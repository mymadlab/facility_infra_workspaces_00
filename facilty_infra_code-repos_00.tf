module "facility_code_git-repo_00" {
  source  = "app.terraform.io/mymadlab/mml_workspace_builder/tfe"
  version = "~>0.4.0"

  name              = "facility_code_git-repos_00"
  description       = "Create standalone git repos for code."
  tfe_org           = var.tfe_org
  github_org        = var.github_org
  vcs_provider_name = var.vcs_provider_name
  tags              = ["facility", "code", "repos"]

}
