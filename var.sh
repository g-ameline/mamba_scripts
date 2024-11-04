#!/usr/bin/env bash
micromamba env config vars set --root-prefix . --name $1 $2
echo $2


