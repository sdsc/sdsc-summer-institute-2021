echo "Launching dask worker"
MEM_GB=210
# memory limit is in bytes
MEM=$(( $MEM_GB*1024**3 ))
/expanse/lustre/projects/sds166/zonca/conda_si21/bin/dask-worker --scheduler-file ~/.dask_scheduler.json --memory-limit $MEM --nprocs 1
