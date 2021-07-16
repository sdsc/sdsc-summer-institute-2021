# Configuring Your Training Account

Each member of the class, and instructors have a training account with a default user environment customized with the right paths and software paths, including the conda/mininconda software.

## Bash Environment

*Note: Do NOT replace the ```.bashrc``` with your own. *
Aliases and paths are pre-installed (see below) and if you replace the files you will not be able to run the example software.

## Miniconda installs: 
Institute satff will provide instructions for installing miniconda for the workshop on the preparation day. Please do not re-install conda. If you have trouble, go to the Slack HelpDesk.


### Default applications location:
**CHECK THIS**
You have been set up with a default user environment: you do not need have a .bashrc file. You will see the code in these folder *by default*
* link to /cms
* link to singularity for CIML

## Node Reservations:

### GPU reservations
*getcpu:  "srun --pty --nodes=1 --ntasks-per-node=24 -p compute -t 3:00:00 --reservation=si2020resday1 --wait 0 /bin/bash"
*getgpu:  "srun --pty --nodes=1 --ntasks-per-node=6 --gres=gpu:1 --partition gpu-shared -t 3:00:00  --reservation=si2020resday1 --wait 0 /bin/bash"
*getcpu1:  "srun --pty --nodes=1 --ntasks-per-node=24 -p compute -t 1:00:00 --reservation=si2020resday1 --wait 0 /bin/bash"

### CPU reservations
For the class, we have created special SLURM queue reservations so our jobs will run faster. Please use the following aliases:

```
getcpu - one comput node for 3 hours
getcpu1  - one comput node for 1 hour
```

### GPU reservations

```
getgpu - one GPU for 3 hours (on days with GPU hands-on)
getgpu1 - one GPU for 1 hour (on days with GPU hands-on)
```

## Using Jupyter Technologies

### Jupyter Notebooks 

** NEED TO UPDATE MPT 6/11/21**
The command to run *secure* Jupyter notebook servers for this class is the *start_python_hpc_notebook* command (this will be in your path).
* update to use Galyleo


### JupyterLab servers


*update to use Galyleo


### Notebooks hosting *Spark*
** do we need this section?**





