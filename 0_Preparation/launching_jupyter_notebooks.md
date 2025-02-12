# SDSC 2021 Summer Institute:  
#
## Launching Jupyter Notebooks on Expanse
This file contains information needed to launch Juptyer
Notebooks from your training accounts, on Expanse, using 
the Satellite client called "galyleo"

* **Written by:** Mary Thomas (mpthomas at ucsd.edu)
* **last update:** 7/28/2021

## Load the sdsc module 
Check what project allocations you can use:

```
[abc123@login01 ~]$ module load sdsc
[abc123@login01 ~]$ expanse-client -a user

 Resource  expanse 

╭───┬─────────┬─────────┬──────────────┬──────┬───────────┬─────────────────╮
│   │ NAME    │ PROJECT │ TG PROJECT   │ USED │ AVAILABLE │ USED BY PROJECT │
├───┼─────────┼─────────┼──────────────┼──────┼───────────┼─────────────────┤
│ 1 │ abc123  │ prj456  │ TG-CDA170005 │    0 │     10000 │              47 │
╰───┴─────────┴─────────┴──────────────┴──────┴───────────┴─────────────────╯
```

## Clone the Notebook examples repo:

```
[abc123@login01 ~]$ git clone https://github.com/sdsc-hpc-training-org/notebook-examples
Cloning into 'notebook-examples'...
remote: Enumerating objects: 305, done.
remote: Counting objects: 100% (98/98), done.
remote: Compressing objects: 100% (88/88), done.
remote: Total 305 (delta 26), reused 47 (delta 6), pack-reused 207
Receiving objects: 100% (305/305), 11.23 MiB | 19.43 MiB/s, done.
Resolving deltas: 100% (93/93), done.
```

## Launch a notebook using the galyleo client:

### Load the ENV path to galyleo.sh
```
export PATH="/cm/shared/apps/sdsc/galyleo:${PATH}"
```

### Launch on a CPU:

* Here is the command you will run. Copy the entire line. You will need to update key parameters including:
  * username
  * allocation account/project ID
  * notebook-dir
  
```
galyleo.sh launch --account 'use300' --partition 'shared' --cpus-per-task 1 --memory-per-node 1 --time-limit 00:30:00 --jupyter 'lab' --notebook-dir "/home/mthomas" --env-modules 'singularitypro' --sif '/cm/shared/apps/containers/singularity/tensorflow/tensorflow-latest.sif'
```

* Here is an example of the output
```
[abc123@login01 ~]$ galyleo.sh launch --account 'prj456' --partition 'shared' --cpus-per-task 1 --memory-per-node 1 --time-limit 00:30:00 --jupyter 'notebook' --notebook-dir "/home/$USER" --env-modules 'singularitypro' --sif '/cm/shared/apps/containers/singularity/tensorflow/tensorflow-latest.sif'
Preparing galyleo for launch into Jupyter orbit ...
Listing all launch parameters ...
  command-line option      : value
       | --mode            : local
    -A | --account         : prj456 
    -R | --reservation     : 
    -p | --partition       : shared
    -q | --qos             : 
    -N | --nodes           : 1
    -n | --ntasks-per-node : 1
    -c | --cpus-per-task   : 1
    -M | --memory-per-node : 1 GB
    -m | --memory-per-cpu  : 2 GB
    -G | --gpus            : 
       | --gres            : 
    -t | --time-limit      : 00:30:00
    -j | --jupyter         : notebook
    -d | --notebook-dir    : /home/abc123
    -s | --sif             : /cm/shared/apps/containers/singularity/tensorflow/tensorflow-latest.sif
    -B | --bind            : 
       | --nv              : 
    -e | --env-modules     : singularitypro
       | --conda-env       : 
    -Q | --quiet           : 1
Your token is 
bobsled-demise-crudeness
200
Generating Jupyter launch script ...
Submitted Jupyter launch script to Slurm. Your SLURM_JOB_ID is 4543723.
Success! Token linked to jobid.
Please copy and paste the HTTPS URL provided below into your web browser.
Do not share this URL with others. It is the password to your Jupyter notebook session.
Your Jupyter notebook session will begin once compute resources are allocated to your job by the scheduler.
https://bobsled-demise-crudeness.expanse-user-content.sdsc.edu?token=278e742a58b7d49d4c01c825b3237779
[abc123@login01 ~]$


```

* Copy and past the URL into your web browser and wait for the job to be launched on a compute node
* Run the ```squeue``` command to check the status of your job:

```
[abc123@login01 ~]$ squeue -u $USER
             JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON) 
           4543723    shared   galyleo-    abc123  R      16:07      1 exp-1-05 
 ```
 
 * Cancel the job if you no longer need/want the notebook to run:
 
```
[abc123@login01 ~]$ scancel 4543723
[abc123@login01 ~]$ squeue -u abc123
             JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON) 
[abc123@login01 ~]$ 
```


