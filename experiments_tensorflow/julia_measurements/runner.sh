#!/usr/bin/env bash

echo "Running axpy"
/julia/julia experiments/axpy_experiments.jl
echo "Finished axpy"
sleep 5
echo "Running gemm"
/julia/julia experiments/gemm_experiments.jl
echo "Finished gemm"
sleep 5
echo "Running gemv"
/julia/julia experiments/gemv_experiments.jl
echo "Finished gemv"
sleep 5
echo "Running getrf"
/julia/julia experiments/getrf_experiments.jl
echo "Finished getrf"
sleep 5
echo "Running portf"
/julia/julia experiments/portf_experiments.jl
echo "Finished portf"
sleep 5
echo "Running qr"
/julia/julia experiments/qr_experiments.jl
echo "Finished qr"
sleep 5
echo "Running scal"
/julia/julia experiments/scal_experiments.jl
echo "Finished scal"
sleep 5
echo "Running symm"
/julia/julia experiments/symm_experiments.jl
echo "Finished symm"
sleep 5
echo "Running symv"
/julia/julia experiments/symv_experiments.jl
echo "Finished symv"
sleep 5
echo "Running transpose"
/julia/julia experiments/transpose_experiments.jl
echo "Finished transpose"
sleep 5
echo "Running trmm"
/julia/julia experiments/trmm_experiments.jl
echo "Finished trmm"
sleep 5
echo "Running trsm"
/julia/julia experiments/trsm_experiments.jl
echo "Finished trsm"
sleep 5
echo "Running trsv"
/julia/julia experiments/trsv_experiments.jl
echo "Finished trsv"
sleep 5
