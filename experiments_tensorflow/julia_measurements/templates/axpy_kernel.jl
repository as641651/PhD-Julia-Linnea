function measure_{kernel_tag}(m,n,alpha,propertyA)
  propertyB = [Shape.General,Properties.Random]
  A = generate([n,m],propertyA)
  A = convert(Array{{Float64,2}},A)
  B = generate([n,m],propertyB)
  B = convert(Array{{Float64,2}},B)
  axpy!(alpha,A,B)
  A = nothing
  B = nothing

  A = generate([n,m],propertyA)
  A = convert(Array{{Float64,2}},A)
  B = generate([n,m],propertyB)
  B = convert(Array{{Float64,2}},B)
  start = time_ns()
  axpy!(alpha,A,B)
  finish = time_ns()
  time = (finish-start)*1e-9
  A = nothing
  B = nothing

  write_times({write_string})
  GC.gc()
end
