# SC20 SCC Reproducibility Challenge Instructions

## Compile

### Make Sure Dependencies are Installed

1. C++ Compiler
2. CUDA Compiler
3. MPI Compiler

### Modify Makefile

## Download Datasets

We provide the challenge datasets over Box.

Test Dataset Dimensions (Theta x Rho) and Corresponding Application Memory Footprints:

* ADS1 (360x256): 512 MB
* ADS2 (750x512): 3.6 GB
* ADS3 (1500x1024): 28 GB
* ADS3 (2400x2048): 180 GB

Challenge Datasets:
TBA

### Datasets Option 1
[Shale Dataset](https://uofi.box.com/s/atdm8zr9qljp53fbiwsrtfoqpbc1a36y)

[Charcoal Dataset](https://uofi.box.com/s/atdm8zr9qljp53fbiwsrtfoqpbc1a36y)

After download is complete, scp the datasets to your cluser. 

### Datasets Option 2
Direct download from Box to your cluster. 

```
wget https://uofi.box.com/shared/static/atdm8zr9qljp53fbiwsrtfoqpbc1a36y -O shale_data.bin
wget https://uofi.box.com/shared/static/atdm8zr9qljp53fbiwsrtfoqpbc1a36y -O shale_theta.bin
wget https://uofi.box.com/shared/static/atdm8zr9qljp53fbiwsrtfoqpbc1a36y -O charcoal_data.bin
wget https://uofi.box.com/shared/static/atdm8zr9qljp53fbiwsrtfoqpbc1a36y -O charcoal_theta.bin
```

## Run 
Run the application using run.sh

## Inspect

Download [Fiji](https://fiji.sc)

