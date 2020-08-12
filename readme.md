# SC20 SCC Reproducibility Challenge Instructions

## Compile

### Make Sure Dependencies are Installed

1. C++ Compiler
2. MPI Compiler

### Modify Makefile

There are Makefiles for ALCF Theta (Intel KNL) and OLCF Summit (IBM POWER9) systems. You should use one of them to modify according to your system.

## Download Datasets

We provide the challenge datasets over Box. Dimensions (Theta x Rho) and corresponding application memory footprints are given below.

**Test Datasest:**

* ADS1 (360x256): 512 MB
* ADS2 (750x512): 3.6 GB
* ADS3 (1500x1024): 28 GB
* ADS3 (2400x2048): 180 GB

**Challenge Datasets:**
TBA

Each dataset requires a theta file and a sinogram file. Direct download from Box to your cluster. 

```
wget https://uofi.box.com/shared/static/ql76fxfrnec1jdl8dc4f2g4ihwekn9oj -O ADS1_theta.bin
wget https://uofi.box.com/shared/static/zmt3vq5k0jaqgcay4a7yscv2a0viyxlc -O ADS1_sinogram.bin

wget https://uofi.box.com/shared/static/yrsr9brzl6q03bmnunfk65k33ykvfr8o -O ADS2_theta.bin
wget https://uofi.box.com/shared/static/wssrib7ud9na1k5zxxjm3kabd2bcrjwu -O ADS2_sinogram.bin

wget https://uofi.box.com/shared/static/vi1uiecpqqiz7rjtty6fbxxwn1feoib0 -O ADS3_theta.bin
wget https://uofi.box.com/shared/static/icxtknbrndv8i2d83mc87ppjxepty8jz -O ADS3_sinogram.bin

wget https://uofi.box.com/shared/static/tbjk9dksog7qqick66nbcnq4ngais1yd -O ADS4_theta.bin
wget https://uofi.box.com/shared/static/ki7smuurh34cleayvwfxhjfn9mgsnega -O ADS4_sinogram.bin

```

## Run 

Edit input parameters and run the application using run.sh

#DOMAIN INFORMATION
NUMTHE= Number of Theta Angles
NUMRHO= Number of Horizontal Channels
PIXSIZE= Pixel Size
#SOLVER DATA
NUMITER= Number of Iterations
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

## Inspect

Download [Fiji](https://fiji.sc)

