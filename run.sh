#!/bin/bash

#BSUB -P CSC362
#BSUB -W 00:30
#BSUB -nnodes 4
#BSUB -alloc_flags "gpudefault"
#BUSB -env "all,LSF_CPU_ISOLATION=on"
#BSUB -J shale4_comm
#BSUB -o shale4_comm.%J
#BSUB -e shale4_comm.%J

#DOMAIN INFORMATION
export NUMTHE=1500
export NUMRHO=1024
export PIXSIZE=1
#SOLVER DATA
export NUMITER=24
#TILE SIZE (MUST BE POWER OF TWO)
export SPATSIZE=128
export SPECSIZE=128
#BLOCK SIZE
export PROJBLOCK=128
export BACKBLOCK=128
#BUFFER SIZE
export PROJBUFF=8
export BACKBUFF=8
#I/O FILES
export THEFILE=~/MemXCT_datasets/ADS3_theta.bin
export SINFILE=~/MemXCT_datasets/ADS3_sinogram.bin
export OUTFILE=./recon_ADS3.bin

#jsrun -n1 -a6 -g1 -c42 -EOMP_NUM_THREADS=7 -r1 -bpacked:7 js_task_info ./memxct

export OMP_NUM_THREADS=1

mpirun -np 16 ./memxct
