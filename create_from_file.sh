#!/usr/bin/env bash
micromamba --root-prefix . create --channel conda-forge --file $1 --name $2
#  #  the base one to run python stuff in jupyter lab
micromamba install --root-prefix . --channel conda-forge --yes --name $1 python=3.11.7 # for tensorflow compatibility
micromamba install --root-prefix . --channel conda-forge --yes --name $1 jupyter
micromamba install --root-prefix . --channel conda-forge --yes --name $1 jupyterlab
micromamba install --root-prefix . --channel conda-forge --yes --name $1 nb_conda_kernels
micromamba install --root-prefix . --channel conda-forge --yes --name $1 ipykernel
micromamba run --root-prefix . --name $1 python -m ipykernel install --user --name $1 --display-name $1
