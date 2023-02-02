#!/bin/bash
set -e # Abort if there is an issue with any build.

# plan, apply or destroy

terraform $1 -var-file=$2/vars.tfvars -state=$2/terraform.tfstate
