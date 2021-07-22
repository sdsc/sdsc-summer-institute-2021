img = dask-numba-si21.sif
recipe = Singularity.miniconda3-dask-numba-py38-4.9.2-ubuntu-18.04

build: ${recipe} clean
	sudo singularity build ${img} ${recipe}

clean:
	sudo rm -f ${img}

copy: ${img}
	scp ${img} login.expanse.sdsc.edu:/expanse/lustre/projects/sds166/zonca/
