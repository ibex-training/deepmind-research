#!/bin/bash --login
#SBATCH --time=2:00:00
#SBATCH --nodes=1
#SBATCH --gpus-per-node=v100:1
#SBATCH --cpus-per-gpu=6  
#SBATCH --mem-per-gpu=64G
#SBATCH --constraint=intel 
#SBATCH --partition=debug 
#SBATCH --job-name=launch-jupyter-server
#SBATCH --mail-type=ALL
#SBATCH --output=alphafold_casp13/bin/%x-%j-slurm.out
#SBATCH --error=alphafold_casp13/bin/%x-%j-slurm.err

# use srun to launch Jupyter server in order to reserve a port
srun --resv-ports=1 alphafold_casp13/bin/launch-jupyter-server.srun
