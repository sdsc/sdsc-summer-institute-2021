# OpenACC samples

SDSC Summer Institute

August 5, 2021

Material by Andreas Goetz (agoetz@sdsc.edu).
Partly based on work by Mark Harris - NVIDIA corporation.

Directory content as explained below

---
## saxpy (Single Precision A * X Plus Y)
See directoy `saxpy/`.

`saxpy.c`
C program that performs single precision vector addition (y = a*x + y).
Can be compiled with standard C compiler or PGI `pgcc` compiler with
accelerator directives.

```
pgcc saxpy.c -o saxpy-cpu.x
pgcc saxpy.c -acc -Minfo=accel -o saxpy-gpu.x
```

---
## Jacobi solver for 2D Laplace equation
See directory `laplace-2d/`.

`jacobi.c` and
`jacobi.f90`
C and Fortran versions of a Jacobi solver for 2D Laplace equation.

Compile and benchmark as follows:


### Benchmarks on SDSC Comet node, using K80 GPU
First make sure to have the PGI compiler loaded:
```
module load pgi
```

Serial version:
```
pgf90 jacobi.f90 -fast -o jacobi-pgf90.x
./jacobi-pgf90.x      # completes in 50 seconds

pgcc jacobi.c -fast -o jacobi-pgcc.x
./jacobi-pgcc.x       # completes in 71 seconds
```

OpenMP parallel version:
```
pgf90 jacobi-omp.f90 -fast -mp -Minfo=mp -o jacobi-pgf90-omp.x
export OMP_NUM_THREADS=2
./jacobi-pgf90-omp.x   # completes in 33 seconds
export OMP_NUM_THREADS=4
./jacobi-pgf90-omp.x   # completes in 25 seconds
export OMP_NUM_THREADS=6
./jacobi-pgf90-omp.x   # completes in 24 seconds
export OMP_NUM_THREADS=12
./jacobi-pgf90-omp.x   # completes in 23 seconds
export OMP_NUM_THREADS=24
./jacobi-pgf90-omp.x   # completes in 22 seconds

pgcc jacobi-omp.c -fast -mp -Minfo=mp -o jacobi-pgfcc-omp.x
export OMP_NUM_THREADS=2
./jacobi-pgcc-omp.x    # completes in 41 seconds
export OMP_NUM_THREADS=4
./jacobi-pgcc-omp.x    # completes in 26 seconds
export OMP_NUM_THREADS=6
./jacobi-pgcc-omp.x    # completes in 24 seconds
export OMP_NUM_THREADS=12
./jacobi-pgcc-omp.x    # completes in 23 seconds
export OMP_NUM_THREADS=24
./jacobi-pgcc-omp.x    # completes in 23 seconds
```

OpenACC GPU accelerated version:
```
pgf90 jacobi-acc.f90 -acc -Minfo=accel -o jacobi-pgf90-acc.x
./jacobi-pgf90-acc.x   # completes in 5 seconds

pgcc jacobi-acc.c -acc -Minfo=accel -o jacobi-pgcc-acc.x
./jacobi-pgcc-acc.x   # completes in 6 seconds
```

### Benchmarks on V100 test node
For comparison, see timings on a system with following setup:
- 2 x 16-core Intel Xeon Gold 6130 CPU @ 2.10 GHz
- Nvidia V100-SXM2 GPU

Serial version:
```
module load pgi
pgicc --version
pgcc 18.10-1 64-bit target on x86-64 Linux -tp skylake 

pgf90 jacobi.f90 -fast -o jacobi-pgf90.x
./jacobi-pgf90.x      # completes in 44.3 seconds

pgcc jacobi.c -fast -o jacobi-pgcc.x
./jacobi-pgcc.x       # completes in 48.2 seconds
```

OpenMP parallel version:
```
pgf90 jacobi-omp.f90 -fast -mp -Minfo=mp -o jacobi-pgf90-omp.x
export OMP_NUM_THREADS=2
./jacobi-pgf90-omp.x   # completes in 24 seconds
export OMP_NUM_THREADS=4
./jacobi-pgf90-omp.x   # completes in 13 seconds
export OMP_NUM_THREADS=8
./jacobi-pgf90-omp.x   # completes in 8 seconds
export OMP_NUM_THREADS=16
./jacobi-pgf90-omp.x   # completes in 6 seconds
export OMP_NUM_THREADS=32
./jacobi-pgf90-omp.x   # completes in 6 seconds

pgcc jacobi-omp.c -fast -mp -Minfo=mp -o jacobi-pgfcc-omp.x
export OMP_NUM_THREADS=2
./jacobi-pgcc-omp.x    # completes in 25 seconds
export OMP_NUM_THREADS=4
./jacobi-pgcc-omp.x    # completes in 13 seconds
export OMP_NUM_THREADS=6
./jacobi-pgcc-omp.x    # completes in 8 seconds
export OMP_NUM_THREADS=12
./jacobi-pgcc-omp.x    # completes in 6 seconds
export OMP_NUM_THREADS=24
./jacobi-pgcc-omp.x    # completes in 6 seconds
```

OpenACC GPU accelerated version:
```
pgf90 jacobi-acc.f90 -acc -Minfo=accel -o jacobi-pgf90-acc.x
./jacobi-pgf90-acc.x   # completes in 1.3 seconds

pgcc jacobi-acc.c -acc -Minfo=accel -o jacobi-pgcc-acc.x
./jacobi-pgcc-acc.x   # completes in 1.3 seconds
```

