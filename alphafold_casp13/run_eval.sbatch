#!/bin/bash --login
#SBATCH --time=2:00:00
#SBATCH --cpus-per-task=10
#SBATCH --mem-per-cpu=8G
#SBATCH --partition=batch
#SBATCH --job-name=run_eval
#SBATCH --mail-type=ALL
#SBATCH --output=alphafold_casp13/%x-%j-slurm.out
#SBATCH --error=alphafold_casp13/%x-%j-slurm.err

# whole job script fails is single line fails
set -e

PROJECT_DIR="$PWD"/alphafold_casp13
ENV_PREFIX="$PROJECT_DIR"/env

# activate the conda environment
module purge
conda activate "$ENV_PREFIX"

# run the original deepmind evaluation script
"$PROJECT_DIR"/run_eval.sh
