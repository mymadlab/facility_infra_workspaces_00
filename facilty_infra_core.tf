module "facility_infra_core" {
  source  = "app.terraform.io/mymadlab/mml_workspace_builder/tfe"
  version = "~>0.3.0"

  name              = "facility_infra_core"
  description       = "Responsible for creating core infrastructure resources"
  tfe_org           = var.tfe_org
  github_org        = var.github_org
  vcs_provider_name = var.vcs_provider_name
  tags              = ["facility", "infra"]
}


import {
  to = module.facility_infra_core.module.github_repository_manager.github_branch_protection.main
  id = "facility_infra_core:main"
}
