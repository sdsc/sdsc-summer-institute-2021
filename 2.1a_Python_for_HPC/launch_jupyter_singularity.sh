export PATH="/cm/shared/apps/sdsc/galyleo:${PATH}"
SIMG='/expanse/lustre/projects/sds166/zonca/dask-numba-si21.sif'
galyleo.sh launch --account 'sds166' --partition 'shared' --cpus-per-task 16 --time-limit 00:30:00 --jupyter 'lab' --notebook-dir "${HOME}" --env-modules 'singularitypro' --bind '/expanse,/scratch' --sif "${SIMG}"
