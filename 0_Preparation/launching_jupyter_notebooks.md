# SDSC Summer Institute: 
#
## Launching Jupyter Notebooks on Expanse
This file contains information needed to launch Juptyer
Notebooks on Expanse using the Satellite client called "galyleo"

## load the sdsc module to see what project allocation you can use:

```
[xdtr122@login01 ~]$ module load sdsc
[xdtr122@login01 ~]$ expanse-client -a user

 Resource  expanse 

╭───┬─────────┬─────────┬──────────────┬──────┬───────────┬─────────────────╮
│   │ NAME    │ PROJECT │ TG PROJECT   │ USED │ AVAILABLE │ USED BY PROJECT │
├───┼─────────┼─────────┼──────────────┼──────┼───────────┼─────────────────┤
│ 1 │ xdtr122 │ crl155  │ TG-CDA170005 │    0 │     10000 │              47 │
╰───┴─────────┴─────────┴──────────────┴──────┴───────────┴─────────────────╯
```

## Clone the Notebook examples repo:

```
[xdtr122@login01 ~]$ git clone https://github.com/sdsc-hpc-training-org/notebook-examples
Cloning into 'notebook-examples'...
remote: Enumerating objects: 305, done.
remote: Counting objects: 100% (98/98), done.
remote: Compressing objects: 100% (88/88), done.
remote: Total 305 (delta 26), reused 47 (delta 6), pack-reused 207
Receiving objects: 100% (305/305), 11.23 MiB | 19.43 MiB/s, done.
Resolving deltas: 100% (93/93), done.
```


## Launch a notebook using the galyleo client:
```
[xdtr122@login01 ~]$ galyleo.sh launch --account 'crl155' --partition 'shared' --cpus-per-task 1 --memory-per-node 1 --time-limit 00:30:00 --jupyter 'notebook' --notebook-dir "/home/xdtr122" --env-modules 'singularitypro' --sif '/cm/shared/apps/containers/singularity/tensorflow/tensorflow-latest.sif'
Preparing galyleo for launch into Jupyter orbit ...
Listing all launch parameters ...
  command-line option      : value
       | --mode            : local
    -A | --account         : crl155
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
    -d | --notebook-dir    : /home/xdtr122
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
[xdtr122@login01 ~]$


```


