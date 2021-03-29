#!/bin/bash --login

PROJECT_DIR="$PWD"/alphafold_casp13/
ENV_PREFIX="$PROJECT_DIR"/env
conda env create --prefix "$ENV_PREFIX" --file "$PROJECT_DIR"/environment.yml --force
conda activate "$ENV_PREFIX"
source "$PROJECT_DIR"/postBuild
