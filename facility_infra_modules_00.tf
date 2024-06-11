module "facility_infra_module_00" {
  source  = "app.terraform.io/mymadlab/mml_workspace_builder/tfe"
  version = "~>0.3.0"

  name              = "facility_infra_modules_00"
  description       = "Responsible for creating and managing TFE modules with repos"
  tfe_org           = var.tfe_org
  github_org        = var.github_org
  vcs_provider_name = var.vcs_provider_name
  tags              = ["facility", "infra"]
}
