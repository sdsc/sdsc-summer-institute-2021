export PATH="/cm/shared/apps/sdsc/galyleo:${PATH}"
galyleo.sh launch --account 'sds166' --partition 'shared' --cpus-per-task 16 --time-limit 00:30:00 --jupyter 'lab' --notebook-dir "${HOME}"  --sif '/expanse/lustre/projects/sds166/zonca/dask-numba-si21.sif'

