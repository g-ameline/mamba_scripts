#!/usr/bin/env bash
#  #  the base one to run python stuff in jupyter lab
micromamba --root-prefix . create --name $1 
micromamba install --root-prefix . --channel conda-forge --yes --name $1 python=3.11 # for tensorflow compatibility
# micromamba install --root-prefix . --channel conda-forge --yes --name $1 python=3.9 # for spacy
# micromamba install --root-prefix . --channel conda-forge --yes --name $1 python
micromamba install --root-prefix . --channel conda-forge --yes --name $1 jupyter
micromamba install --root-prefix . --channel conda-forge --yes --name $1 jupyterlab
micromamba install --root-prefix . --channel conda-forge --yes --name $1 nb_conda_kernels
micromamba install --root-prefix . --channel conda-forge --yes --name $1 ipykernel
#  #  additional packages, comment/uncomment as needed

micromamba install --root-prefix . --channel conda-forge --yes --name $1 autogluon.tabular=1.1.1

# micromamba install --root-prefix . --channel conda-forge --yes --name $1 opencv
# micromamba install --root-prefix . --channel conda-forge --yes --name $1 pandas
# micromamba install --root-prefix . --channel conda-forge --yes --name $1 pyarrow
# micromamba install --root-prefix . --channel conda-forge --yes --name $1 tabulate
# micromamba install --root-prefix . --channel conda-forge --yes --name $1 numpy
# micromamba install --root-prefix . --channel conda-forge --yes --name $1 scikit-learn
# micromamba install --root-prefix . --channel conda-forge --yes --name $1 nltk
# micromamba install --root-prefix . --channel conda-forge --yes --name $1 spacy-model-en_core_web_sm
# micromamba install --root-prefix . --channel conda-forge --yes --name $1 tensorflow-cpu
# micromamba install --root-prefix . --channel conda-forge --yes --name $1 keras
# micromamba install --root-prefix . --channel conda-forge --yes --name $1 plotly
micromamba install --root-prefix . --channel conda-forge --yes --name $1 matplotlib
#  # install kernel
micromamba run --root-prefix . --name $1 python -m ipykernel install --user --name $1 --display-name $1

