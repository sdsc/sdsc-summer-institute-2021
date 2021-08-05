## 4.1a. GPU Computing and Programming 
Andreas Goetz, Research Scientist and Principal Investigator, SDSC (agoetz@sdsc.edu)

This directory contains the slides and exercises for the SDSC 2021
Summer Institute online workshop on GPU computing and programming.

This session introduces massively parallel computing with graphics processing units (GPUs). Over the last decade the use of GPUs has become increasingly popular across all scientific domains since GPUs can significantly accelerate time to solution for many computational tasks.
Participants will be introduced to essential background of the GPU chip architecture and will learn how to program GPUs via the use of libraries, OpenACC compiler directives, and the CUDA programming language. The session will incorporate hands-on exercises for participants to acquire the foundational skills to use and develop GPU aware applications. 

---
# Accessing and using GPU nodes on SDSC Expanse
This information has been covered in various places but is repeated
here for convenience.

## Obtain interactive shared GPU node on SDSC Expanse
Your `.bashrc` file should contain an alias `get-gpu` that will give
you access to a single GPU on SDSC Expanse shared GPU nodes for 2h.
```
# Execute the following command                                                getgpu
```

This will launch following command, which you could also type instead:
```
srun --reservation=SI2021RES --partition gpu-shared --qos=gpu-shared-si2021 \
     --nodes=1 --ntasks-per-node=1 --cpus-per-task=10 --mem=90G --gpus=1 \
     --time=2:00:00 --pty --wait 0 /bin/bash
```

After a short while you should get logged into a GPU node with Nvidia
V100 GPUs. Each node has 40 CPU cores and 4 GPUs. You can use up to 10
CPU cores and a single GPU.

## Load CUDA and PGI compiler modules
In order to use the CUDA tool chain and the PGI compilers, you have to
load the corresponding modules. Here we will load the CUDA 10.2 Toolkit and the PGI compiler.
```
module purge
module reset
module load cuda10.2/toolkit
module load pgi
```

Check the Nvidia CUDA compiler version:
```
user@expanse:~>nvcc --version

nvcc: NVIDIA (R) Cuda compiler driver
Copyright (c) 2005-2019 NVIDIA Corporation
Built on Wed_Oct_23_19:24:38_PDT_2019
Cuda compilation tools, release 10.2, V10.2.89
```

Check the PGI compiler version:
```
user@expanse:~> pgcc --version 

pgcc (aka pgcc18) 20.4-0 LLVM 64-bit target on x86-64 Linux -tp skylake 
PGI Compilers and Tools
Copyright (c) 2020, NVIDIA CORPORATION.  All rights reserved.
```

## Check installed GPUs with NVIDIA System Management Interface (nvidia-smi)
The Nvidia system management interface (`nvidia-smi`) can be used to
gather information about the available GPUs. 
It will also show any currently running jobs on GPUs.
```
# Execute the following command to get information about GPUs in the system
user@expanse:~> nvidia-smi
```

Check visible devices (should be set to free GPU)
```
user@comet:~> echo $CUDA_VISIBLE_DEVICES
```
This environment variable should be set by the queuing system to the 
ID(s) of the free GPU. Do not change it.

---
# NVIDIA CUDA Toolkit code samples
The CUDA Toolkit comes with a set of code samples. 
It is a good idea to take a look at these code samples as they are a
very instructive resource. Much can be learned by running the samples
and inspecting the source code. 
Some samples are also useful tools (e.g. `deviceQuery`).

Copy the CUDA code samples into the current directory:
```
cp /cm/shared/apps/cuda-latest/sdk/current/ CUDA-samples
```

Compile the samples:
```
cd CUDA-sample
make -j 10
```

Or compile only samples of interest, e.g. `deviceQuery`:
```
cd 1_Utilities/deviceQuery
make
```

Run deviceQuery to query information on available GPUs
```
cd 1_Utilities/deviceQuery/
./deviceQuery
...
... lots of information on available GPUs will be printed
...
```

---
# Simple code samples accompanying slides

See directory `cuda-samples` for CUDA sample codes. 
Compile with 
```
nvcc example.cu -o example.x
```

See directory `openacc-samples` for OpenACC sample codes.
Compile with 
```
pgcc example.c -o example.x -acc -Minfo=accel
```

Read the `README.md` files for additional information. In particular it is instructive to compile the `laplace-2d` example OpenMP version and the OpenACC version and compare timings on multiple CPU cores (e.g. 1 to 10 CPU cores) to timing on the GPU (V100 on Expanse nodes).
