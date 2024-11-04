#!/usr/bin/env bash
micromamba run --root-prefix . --name $1 python -m ipykernel install --user --name $1 --display-name $1

