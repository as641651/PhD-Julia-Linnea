function measure_{kernel_tag}(m,n,property)
  A = generate([m,n],property)
  A = convert(Array{{Float64,2}},A)
  B = zeros(n,m)
  transpose!(B,A)
  A = nothing
  B = nothing

  A = generate([m,n],property)
  A = convert(Array{{Float64,2}},A)
  B = zeros(n,m)
  start = time_ns()
  transpose!(B,A)
  finish = time_ns()
  time = (finish-start)*1e-9
  A = nothing
  B = nothing

  write_times({write_string})
  GC.gc()
end
