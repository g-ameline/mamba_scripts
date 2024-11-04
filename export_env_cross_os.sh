#!/usr/bin/env bash
micromamba env export --from-history --root-prefix . --name $1 
micromamba env export --from-history --root-prefix . --name $1 > environment_cross.yml   
