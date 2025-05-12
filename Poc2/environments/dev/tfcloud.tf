terraform {
  cloud {
    organization = "JOAOPEDRO_TEST_TERRAFORM"
    workspaces {
      name = "poc2_development"
    }
  }
}