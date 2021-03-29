#!/bin/bash
#SBATCH --time=12:00:00
#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=4G
#SBATCH --partition=batch
#SBATCH --job-name=download-data
#SBATCH --mail-type=ALL
#SBATCH --output=alphafold_casp13/bin/%x-%j-slurm.out
#SBATCH --error=alphafold_casp13/bin/%x-%j-slurm.err

set -e

# run from deepmind-research directory
PROJECT_DIR="$PWD"/alphafold_casp13

# download input data
wget -P "$PROJECT_DIR" http://bit.ly/alphafold-casp13-data 
unzip "$PROJECT_DIR"/alphafold-casp13-data -d "$PROJECT_DIR"/data

# download the model weights
wget -P "$PROJECT_DIR" http://bit.ly/alphafold-casp13-weights 
unzip "$PROJECT_DIR"/alphafold-casp13-weights -d "$PROJECT_DIR"/weights
