terraform {
    required_providers {
        oci = {
            source = "hashicorp/oci"
        }
    }
}

provider "oci" {
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
}

resource "oci_identity_compartment" "devops_compartment" {
    #Required
    compartment_id = var.compartment_id
    description = var.compartment_description
    name = var.compartment_name

    #Optional
    #defined_tags = {"Operations.CostCenter"= "42"}
    #freeform_tags = {"Department"= "Finance"}
}