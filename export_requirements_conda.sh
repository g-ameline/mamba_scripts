#!/usr/bin/env bash
micromamba list --root-prefix . --name $1 
micromamba list --root-prefix . --name $1 > requirements_conda.txt
