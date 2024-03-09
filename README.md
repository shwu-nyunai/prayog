# Prayog 🔬
An experimentation suite for NyunZero


## Setup

Experimentation configurations
```shell
~/prayog$ python --version && nvcc -V && nvidia-smi
Python 3.10.13

nvcc: NVIDIA (R) Cuda compiler driver
Copyright (c) 2005-2023 NVIDIA Corporation
Built on Wed_Nov_22_10:17:15_PST_2023
Cuda compilation tools, release 12.3, V12.3.107
Build cuda_12.3.r12.3/compiler.33567101_0

Tue Mar  5 00:24:03 2024       
+-----------------------------------------------------------------------------------------+
| NVIDIA-SMI 550.54.14              Driver Version: 550.54.14      CUDA Version: 12.4     |
|-----------------------------------------+------------------------+----------------------+
| GPU  Name                 Persistence-M | Bus-Id          Disp.A | Volatile Uncorr. ECC |
| Fan  Temp   Perf          Pwr:Usage/Cap |           Memory-Usage | GPU-Util  Compute M. |
|                                         |                        |               MIG M. |
|=========================================+========================+======================|
|   0  NVIDIA L4                      On  |   00000000:00:03.0 Off |                    0 |
| N/A   45C    P8             16W /   72W |       0MiB /  23034MiB |      0%      Default |
|                                         |                        |                  N/A |
+-----------------------------------------+------------------------+----------------------+
                                                                                         
+-----------------------------------------------------------------------------------------+
| Processes:                                                                              |
|  GPU   GI   CI        PID   Type   Process name                              GPU Memory |
|        ID   ID                                                               Usage      |
|=========================================================================================|
|  No running processes found                                                             |
+-----------------------------------------------------------------------------------------+
```

After ensuring correct driver and python versions, from inside your environment do,
```shell
pip install -r requirements.txt
````

Once the installation is complete, unzip the mmlu dataset
```shell
cd indicinstruct/data/eval
unzip mmlu.zip
unzip mmlu_hi_translated.zip
```

from within the same directory, bring the data to the correct directory, do
```shell
mv data/jaygala/open-instruct/data/eval/* .
rm -r data
ls
# should print 
# mmlu  mmlu.zip  mmlu_hi_translated  mmlu_hi_translated.zip
```