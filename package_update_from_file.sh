#!/usr/bin/env bash
#  #  the base one to run python stuff in jupyter lab
micromamba --root-prefix . update --channel conda-forge --name $1 --file $2
