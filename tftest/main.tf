terraform {
  required_providers {
    harness = {
      source = "harness/harness"
    }
  }
}

#Configure the Harness provider for Next Gen resources
provider "harness" {
  endpoint         = "https://qa.harness.io/gateway"
  account_id       = "OgiB4-xETamKNVAz-wQRjw"
  platform_api_key = "sat.OgiB4-xETamKNVAz-wQRjw.64255d141d41c84745e384bb.lbWgvEhnj7HeI98NqQZx"
}

# Credentials inherit_from_delegate
resource "harness_platform_connector_aws_secret_manager" "test" {
  identifier  = "identifier"
  name        = "name"
  description = "test"
  tags        = ["foo:bar"]

  secret_name_prefix = "test"
  region             = "us-east-1"
  delegate_selectors = ["harness-delegate"]
  credentials {
    inherit_from_delegate = true
  }
}

# Credential type anonymous
resource "harness_platform_connector_oci_helm" "test" {
  identifier  = "identifieroci"
  name        = "name"
  description = "test"
  tags        = ["foo:bar"]

  url                = "admin.azurecr.io"
  delegate_selectors = ["harness-delegate"]
}
