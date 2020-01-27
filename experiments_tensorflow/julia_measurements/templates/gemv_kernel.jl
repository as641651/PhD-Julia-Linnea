function measure_{kernel_tag}(a1,a2,m,n,tA,alpha,beta,propertyA)
  A = generate([a1,a2],propertyA)
  A = convert(Array{{Float64,2}},A)
  b = rand(n)
  y = rand(m)
  gemv!(tA,alpha,A,b,beta,y)
  A = nothing
  b = nothing
  y = nothing

  A = generate([a1,a2],propertyA)
  A = convert(Array{{Float64,2}},A)
  b = rand(n)
  y = rand(m)
  start = time_ns()
  gemv!(tA,alpha,A,b,beta,y)
  finish = time_ns()
  time = (finish-start)*1e-9
  A = nothing
  b = nothing
  y = nothing

  write_times({write_string})
  GC.gc()
end
