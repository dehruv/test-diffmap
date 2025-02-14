#!/usr/bin/bash

#SBATCH --account=gpu
#SBATCH --gres=gpu:1
#SBATCH -N 2
#SBATCH -n 2
#SBATCH -c 6
#SBATCH --constraint=V100_32GB
#SBATCH --time=3:30:00

module load cuda cudnn anaconda/2020.11-py38
source activate dhruv

cd ~/interpretable-embeddings

python -m src.evaluation.evaluate
