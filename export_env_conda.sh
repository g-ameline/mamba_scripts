#!/usr/bin/env bash
micromamba env export --root-prefix . --name $1 
micromamba env export --root-prefix . --name $1 > environment_conda.yml
