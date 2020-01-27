function measure_{kernel_tag}(m,n,side,ul,alpha,beta,propertyB)
  property = [Shape.Symmetric,Properties.Random]
  A = generate([n,n],property)
  A = convert(Array{{Float64,2}},A)
  B = generate([n,m],propertyB)
  B = convert(Array{{Float64,2}},B)
  symm!(side, ul, alpha, A, B,beta,B)
  A = nothing
  B = nothing

  A = generate([n,n],property)
  A = convert(Array{{Float64,2}},A)
  B = generate([n,m],propertyB)
  B = convert(Array{{Float64,2}},B)
  start = time_ns()
  symm!(side, ul, alpha, A, B,beta,B)
  finish = time_ns()
  time = (finish-start)*1e-9
  A = nothing
  B = nothing

  write_times({write_string})
  GC.gc()
end
