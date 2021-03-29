#!/bin/bash
#SBATCH --time=2:00:00
#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=4G
#SBATCH --partition=debug
#SBATCH --job-name=create-conda-env
#SBATCH --mail-type=ALL
#SBATCH --output=alphafold_casp13/bin/%x-%j-slurm.out
#SBATCH --error=alphafold_casp13/bin/%x-%j-slurm.err

PROJECT_DIR="$PWD"/alphafold_casp13/
"$PROJECT_DIR"/bin/create-conda-env.sh
