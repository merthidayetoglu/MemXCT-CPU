# SC20 SCC Reproducibility Challenge Instructions

## Compile

### Make Sure Dependencies are Installed

1. C++ Compiler
2. CUDA Compiler
3. MPI Compiler

### Modify Makefile

## Download Datasets

We provide two datasets for the SC20 Student Cluset Competition over Box.

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

