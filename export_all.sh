#!/usr/bin/env bash
mkdir -p ./virtual_environment/
micromamba env export --from-history --root-prefix . --name $1 > ./virtual_environment/environment_cross.yml   
micromamba env export --root-prefix . --name $1 > ./virtual_environment/environment.yml
micromamba list --root-prefix . --name $1 > ./virtual_environment/requirements_conda.txt
micromamba env export --from-history --root-prefix . --name $1 > ./virtual_environment/environment_cross.yml   
pip freeze --local > ./virtual_environment/requirements_pip.txt

