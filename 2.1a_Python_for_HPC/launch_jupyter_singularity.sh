export PATH="/cm/shared/apps/sdsc/galyleo:${PATH}"
SIMG='/expanse/lustre/projects/sds166/zonca/dask-numba-si21.sif'
# Summer institute account
ACCOUNT=crl155
# ACCOUNT=sds166
# Use current folder
NOTEBOOK_FOLDER=$(pwd -P)
# Use the user home
# NOTEBOOK_FOLDER=${HOME}
galyleo.sh launch --account $ACCOUNT --partition 'compute' --cpus-per-task 64 --time-limit 01:00:00 --jupyter 'lab' --notebook-dir "${NOTEBOOK_FOLDER}" --env-modules 'singularitypro' --bind '/expanse,/scratch' --sif "${SIMG}"
