function measure_{kernel_tag}(a1,a2,b1,b2,m,n,k,tA,tB,alpha,beta,propertyA,propertyB)
  A = generate([a1,a2],propertyA)
  A = convert(Array{{Float64,2}},A)
  B = generate([b1,b2],propertyB)
  B = convert(Array{{Float64,2}},B)
  C = Array{{Float64}}(undef,m,k)
  gemm!(tA,tB,alpha,A,B,beta,C)
  start = time_ns()
  gemm!(tA,tB,alpha,A,B,beta,C)
  finish = time_ns()
  time = (finish-start)*1e-9
  C = nothing
  write_times({write_string})
end
