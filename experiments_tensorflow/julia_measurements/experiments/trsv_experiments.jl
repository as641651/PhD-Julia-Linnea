using LinearAlgebra.BLAS
using LinearAlgebra
using MatrixGenerator
using Printf

BLAS.set_num_threads(8)

f = open("/home/user/experiments_tensorflow/julia_measurements/measurements_data/trsv_out.txt","w")

function write_times(args)
  s = ""
  for k in args
    s = s*string(k)*"\t"
  end
  s = s*"\n"
  write(f,s)
end

function measure_trsv(size,ul,tA,dA,property)
  A = generate([size,size],property)
  A = convert(Array{Float64,2},A)
  b = rand(size)
  trsv!(ul, tA, dA, A, b)
  A = nothing
  b = nothing

  A = generate([size,size],property)
  A = convert(Array{Float64,2},A)
  b = rand(size)
  start = time_ns()
  trsv!(ul, tA, dA, A, b)
  finish = time_ns()
  time = (finish-start)*1e-9
  A = nothing
  b = nothing

  write_times([size,ul,tA,dA,property,time])
  GC.gc()
end


function main()

	
	measure_trsv(100,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


@printf "Completed 50/500
" 

	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(100,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


@printf "Completed 100/500
" 

	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


@printf "Completed 150/500
" 

	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(100,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random])


@printf "Completed 200/500
" 

	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Random])


@printf "Completed 250/500
" 

	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Random])


@printf "Completed 300/500
" 

	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


@printf "Completed 350/500
" 

	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(100,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


@printf "Completed 400/500
" 

	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


@printf "Completed 450/500
" 

	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(100,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(100,'U','T','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(1200,'L','T','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(100,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(50,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(50,'L','N','N',[Shape.LowerTriangular, Properties.Random])


	measure_trsv(700,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(100,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'U','T','N',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsv(700,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(1200,'U','N','N',[Shape.UpperTriangular, Properties.Random])


	measure_trsv(1200,'L','N','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsv(50,'L','T','N',[Shape.LowerTriangular, Properties.Random(-5, 5)])


@printf "Completed 500/500
" 

end

main()
