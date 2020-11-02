#!/bin/bash

export ID=${SLURM_JOB_ID}

#SBATCH --job-name=pbrt_plasma_rendering
#SBATCH --output=run_results/result_%j.txt
#SBATCH --partition=andalan
#SBATCH --ntasks=1
#SBATCH --time=24:00:00
#SBATCH --mail-user=luigui12595@gmail.com
#SBATCH --mail-type=END,FAIL

module load gcc/9.3.0
module load cmake/3.17.2


srun ./pbrt ../killeroo-simple.pbrt
