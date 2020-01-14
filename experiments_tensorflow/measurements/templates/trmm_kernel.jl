function measure_trmm(m,n,side,ul,tA,dA,alpha,property)
  A = generate([n,n],property)
  A = convert(Array{{Float64,2}},A)
  B = rand(n,m)
  trmm!(side, ul, tA, dA, alpha, A, B)
  A = nothing
  B = nothing

  A = generate([n,n],property)
  A = convert(Array{{Float64,2}},A)
  B = rand(n,m)
  start = time_ns()
  trmm!(side, ul, tA, dA, alpha, A, B)
  finish = time_ns()
  time = (finish-start)*1e-9
  A = nothing
  B = nothing

  write_times([m,n,side,ul,tA,dA,alpha,property,time])
  GC.gc()
end
