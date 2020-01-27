function measure_{kernel_tag}(shape,n,alpha,stride)
  A = generate(shape,[Shape.General,Properties.Random])
  scal!(n,alpha,A,stride)
  A = nothing

  A = generate(shape,[Shape.General,Properties.Random])
  start = time_ns()
  scal!(n,alpha,A,stride)
  finish = time_ns()
  time = (finish-start)*1e-9
  A = nothing

  write_times({write_string})
  GC.gc()
end
