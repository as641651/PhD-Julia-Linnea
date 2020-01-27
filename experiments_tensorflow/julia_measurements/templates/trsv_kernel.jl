function measure_{kernel_tag}(size,ul,tA,dA,property)
  A = generate([size,size],property)
  A = convert(Array{{Float64,2}},A)
  b = rand(size)
  trsv!(ul, tA, dA, A, b)
  A = nothing
  b = nothing

  A = generate([size,size],property)
  A = convert(Array{{Float64,2}},A)
  b = rand(size)
  start = time_ns()
  trsv!(ul, tA, dA, A, b)
  finish = time_ns()
  time = (finish-start)*1e-9
  A = nothing
  b = nothing

  write_times({write_string})
  GC.gc()
end
