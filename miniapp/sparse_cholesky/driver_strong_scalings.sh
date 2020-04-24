#!/bin/bash

N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=8  BLOCK_SIZE=256 sbatch -n 64 -c 32 run.sh
N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=16 BLOCK_SIZE=256 sbatch -n 64 -c 32 run.sh
N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=32 BLOCK_SIZE=256 sbatch -n 64 -c 32 run.sh

N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=8  BLOCK_SIZE=256 sbatch -n 32 -c 32 run.sh 
N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=16 BLOCK_SIZE=256 sbatch -n 32 -c 32 run.sh
N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=32 BLOCK_SIZE=256 sbatch -n 32 -c 32 run.sh
 
N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=8  BLOCK_SIZE=256 sbatch -n 16 -c 32 run.sh
N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=16 BLOCK_SIZE=256 sbatch -n 16 -c 32 run.sh
N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=32 BLOCK_SIZE=256 sbatch -n 16 -c 32 run.sh
 
N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=8  BLOCK_SIZE=256 sbatch -n 8 -c 32 run.sh
N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=16 BLOCK_SIZE=256 sbatch -n 8 -c 32 run.sh
N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=32 BLOCK_SIZE=256 sbatch -n 8 -c 32 run.sh

N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=8  BLOCK_SIZE=256 sbatch -n 4 -c 32 run.sh
N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=16 BLOCK_SIZE=256 sbatch -n 4 -c 32 run.sh
N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=32 BLOCK_SIZE=256 sbatch -n 4 -c 32 run.sh

N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=8  BLOCK_SIZE=256 sbatch -n 2 -c 32 run.sh
N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=16 BLOCK_SIZE=256 sbatch -n 2 -c 32 run.sh
N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=32 BLOCK_SIZE=256 sbatch -n 2 -c 32 run.sh

N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=1  BLOCK_SIZE=256 sbatch -n 1 -c 32 run.sh
N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=4  BLOCK_SIZE=256 sbatch -n 1 -c 32 run.sh
N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=8  BLOCK_SIZE=256 sbatch -n 1 -c 32 run.sh
N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=16 BLOCK_SIZE=256 sbatch -n 1 -c 32 run.sh
N_SIZE=128 D_SIZE=3 N_LEVELS=13 N_THREADS=32 BLOCK_SIZE=256 sbatch -n 1 -c 32 run.sh
 
 
 

 