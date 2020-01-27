function measure_{kernel_tag}(size,ul,alpha,beta)
  property = [Shape.Symmetric,Properties.Random]
  A = generate([size,size],property)
  A = convert(Array{{Float64,2}},A)
  b = rand(size)
  y = rand(size)
  symv!(ul,alpha,A,b,beta,y)
  A = nothing
  b = nothing
  y = nothing

  A = generate([size,size],property)
  A = convert(Array{{Float64,2}},A)
  b = rand(size)
  y = rand(size)
  start = time_ns()
  symv!(ul,alpha,A,b,beta,y)
  finish = time_ns()
  time = (finish-start)*1e-9
  A = nothing
  b = nothing
  y = nothing

  write_times({write_string})
  GC.gc()
end
