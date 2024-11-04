#!/usr/bin/env bash
micromamba run --root-prefix . --name $1 jupyter lab --no-browser

