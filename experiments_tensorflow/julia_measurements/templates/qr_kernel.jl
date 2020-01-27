function measure_{kernel_tag}(m,n,property)
  A = generate([m,n],property)
  A = convert(Array{{Float64,2}},A)
  qr!(A)
  A = nothing

  A = generate([m,n],property)
  A = convert(Array{{Float64,2}},A)
  start = time_ns()
  qr!(A)
  finish = time_ns()
  time = (finish-start)*1e-9
  A = nothing

  write_times({write_string})
  GC.gc()
end
