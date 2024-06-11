module "facility_infra_workspaces_00" {
  source  = "app.terraform.io/mymadlab/mml_workspace_builder/tfe"
  version = "~>0.3.0"

  name              = "facility_infra_workspaces_00"
  description       = "Create and manage TFE workspaces with repos"
  tfe_org           = var.tfe_org
  github_org        = var.github_org
  vcs_provider_name = var.vcs_provider_name
  tags              = ["facility", "infra"]
}
