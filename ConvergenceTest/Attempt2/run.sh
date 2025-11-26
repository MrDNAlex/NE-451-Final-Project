#!/bin/bash
#SBATCH --job-name=FP-conv-test2
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=3:00:00
#SBATCH --mem-per-cpu=1000M 
#SBATCH --cpus-per-task=12  # 1 thread per rank

module load class-simulations

mpirun -np $SLURM_NTASKS pw.x < test.scf.in > test.scf.out