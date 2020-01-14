function measure_getrf(size,property)
  C = generate([size,size],property)
  C = convert(Array{{Float64,2}},C)
  _,_,info = LinearAlgebra.LAPACK.getrf!(C)
  if info != 0
    @printf "Singular\n"
  end
  C = nothing

  C = generate([size,size],property)
  C = convert(Array{{Float64,2}},C)
  start = time_ns()
  _,_,info = LinearAlgebra.LAPACK.getrf!(C)
  finish = time_ns()
  time = (finish-start)*1e-9
  if info != 0
    @printf "Singular\n"
  end

  C = nothing
  write_times([size,property,time])

  GC.gc()
end
