#!/usr/bin/env bash
tfvars_dir=$1
if [ -d "$tfvars_dir" ]  && [ -n "$(ls -A $tfvars_dir)" ]
then
  for tfvars_file in "${tfvars_dir}"/*.tfvars; do
    echo "Using tfvars file: ${tfvars_file}"
    workspace_dir="${tfvars_file%.*}"
    echo ${workspace_dir:4}
    workspace_path="${workspace_dir:4}"
    workspace_name="${workspace_path##*/}"
    terraform init --backend-config="bucket=empc-dev-1-8nyy-project-res-tf"
    terraform workspace select "${workspace_name}" || terraform workspace new "${workspace_name}"
    terraform plan -var-file="${tfvars_file}"
    terraform apply -auto-approve -var-file="${tfvars_file}"
  done
else
  echo "This module will not be executed as the $tfvars_dir is empty"
fi