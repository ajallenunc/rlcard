#!/bin/bash

#SBATCH --job-name=uno_new_dqn
#SBATCH --time=3-
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=64000
#SBATCH --mail-type=end
#SBATCH --mail-user=emmamit@email.unc.edu

# Activate your Conda environment
conda activate rlcardenv

# Run your Python script
python3 examples/run_rl.py --env uno_new --algorithm dqn --log_dir experiments/uno_new_2_dqn_result/
