# SC20 SCC Reproducibility Challenge Instructions 

## Datasets Option 1
We provide two datasets for the SC20 Student Cluset Competetion over Box. These can be downloaded from: 
[BoxFolder](https://uofi.box.com/s/atdm8zr9qljp53fbiwsrtfoqpbc1a36y)

After download is complete, scp the dataset to your cluser. 

## Datasets Option 2
Direct download from Box to your cluster. 

```
wget https://uofi.box.com/shared/static/atdm8zr9qljp53fbiwsrtfoqpbc1a36y -O shale_data.bin
wget https://uofi.box.com/shared/static/atdm8zr9qljp53fbiwsrtfoqpbc1a36y -O shale_theta.bin
wget https://uofi.box.com/shared/static/atdm8zr9qljp53fbiwsrtfoqpbc1a36y -O charcoal_data.bin
wget https://uofi.box.com/shared/static/atdm8zr9qljp53fbiwsrtfoqpbc1a36y -O charcoal_theta.bin
```
# Dependencies

1. C++ Compiler
2. CUDA Compiler
3. MPI Compiler
4. Makefile

# Run 
After clearing dependencies and setting PROJREPO environment variable, run the following. 

```
cd singlegpu 
bash run_ampere.sh > output.log 
```

Do let us know if you get any errors in output.log. Ideally it should work without any issues.

# Inspect

Download [Fiji](https://fiji.sc)

