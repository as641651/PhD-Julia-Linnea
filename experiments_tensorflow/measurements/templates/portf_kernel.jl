function measure_portf(size,uplo,property)
  C = generate([size,size],property)
  C = convert(Array{{Float64,2}},C)
  LinearAlgebra.LAPACK.potrf!(uplo,C)
  C = nothing

  C = generate([size,size],property)
  C = convert(Array{{Float64,2}},C)
  start = time_ns()
  LinearAlgebra.LAPACK.potrf!(uplo,C)
  finish = time_ns()
  time = (finish-start)*1e-9

  C = nothing
  write_times([size,uplo,property,time])
end
