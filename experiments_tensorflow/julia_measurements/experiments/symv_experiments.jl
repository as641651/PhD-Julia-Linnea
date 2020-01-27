using LinearAlgebra.BLAS
using LinearAlgebra
using MatrixGenerator
using Printf

BLAS.set_num_threads(8)

f = open("/home/user/experiments_tensorflow/julia_measurements/measurements_data/symv_out.txt","w")

function write_times(args)
  s = ""
  for k in args
    s = s*string(k)*"\t"
  end
  s = s*"\n"
  write(f,s)
end

function measure_symv(size,ul,alpha,beta)
  property = [Shape.Symmetric,Properties.Random]
  A = generate([size,size],property)
  A = convert(Array{Float64,2},A)
  b = rand(size)
  y = rand(size)
  symv!(ul,alpha,A,b,beta,y)
  A = nothing
  b = nothing
  y = nothing

  A = generate([size,size],property)
  A = convert(Array{Float64,2},A)
  b = rand(size)
  y = rand(size)
  start = time_ns()
  symv!(ul,alpha,A,b,beta,y)
  finish = time_ns()
  time = (finish-start)*1e-9
  A = nothing
  b = nothing
  y = nothing

  write_times([size,ul,alpha,beta,time])
  GC.gc()
end


function main()

	
	measure_symv(50,'U',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(700,'U',0.8412359907065778,0.0)


	measure_symv(50,'L',0.04894486007399501,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(100,'L',0.6061618789880374,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(100,'U',0.2109205378856529,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(1200,'L',0.2712542738140843,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(700,'U',0.7055804919730259,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(100,'L',0.0005414063085530385,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(1200,'L',0.36339755019039677,0.0)


	measure_symv(1200,'U',0.7193855352670067,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(50,'U',0.429898111767126,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(1200,'U',0.8995297870925274,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(1200,'L',0.6193951111147317,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


@printf "Completed 50/500
" 

	measure_symv(100,'L',0.5273479854194211,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(50,'L',0.25453821142058375,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(1200,'U',0.8465484566528254,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(100,'U',0.9841028522609487,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(100,'U',0.26150605801319327,0.0)


	measure_symv(700,'U',0.2692423670689147,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(1200,'L',0.0171584686715206,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(700,'U',0.713058988253638,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(1200,'U',0.29034171583062773,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(50,'U',0.0013588921298541834,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


@printf "Completed 100/500
" 

	measure_symv(50,'U',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(1200,'L',0.15525634929969112,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(1200,'L',0.2589814531676753,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(700,'U',0.029690097840750496,0.0)


	measure_symv(100,'U',0.5292990816443205,0.0)


	measure_symv(700,'L',0.9723696094469468,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(100,'U',0.3475207494268636,0.0)


	measure_symv(100,'L',0.7281048700950395,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(100,'U',0.5068168822320425,0.0)


	measure_symv(50,'U',0.29264334888886345,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(50,'U',0.5950847899232833,0.0)


@printf "Completed 150/500
" 

	measure_symv(100,'U',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(50,'U',0.7064694921211886,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(1200,'U',0.8558277664971219,0.0)


	measure_symv(1200,'U',0.6933476952206742,0.0)


	measure_symv(50,'U',0.2844039806638865,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(700,'L',0.720039659700645,0.0)


	measure_symv(700,'L',0.32311275055080635,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(1200,'U',0.7422286302965598,0.0)


	measure_symv(100,'L',0.84158121581487,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(50,'L',0.8007643604807942,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


@printf "Completed 200/500
" 

	measure_symv(50,'U',0.1635484155112643,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(100,'L',0.29727792344268045,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(1200,'U',0.5007053867017806,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(100,'L',0.6666481556780931,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(50,'L',0.36986601215919945,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(100,'U',0.8091062670120382,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(100,'L',0.0215632369950034,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(700,'L',0.3785118092729408,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(50,'L',0.8633475467755212,0.0)


@printf "Completed 250/500
" 

	measure_symv(50,'L',0.08224020599335546,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(700,'U',0.7287185037764292,0.0)


	measure_symv(50,'U',0.6855740604794346,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(1200,'L',0.8231420825669712,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(1200,'U',0.034393049079168625,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(50,'L',0.9179603819793929,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(700,'U',0.8728673557048733,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(1200,'L',0.7696168775805523,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(50,'U',0.17739891620283932,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(100,'L',0.6353551585307438,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(1200,'L',0.7865210051011863,0.0)


	measure_symv(100,'U',0.10893377009992034,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


@printf "Completed 300/500
" 

	measure_symv(50,'L',0.2645233680079552,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(100,'U',0.7448614758483784,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(1200,'U',0.24938260590932182,0.0)


	measure_symv(100,'U',0.09788556474224208,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(100,'U',0.9408349888393139,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(1200,'L',0.5677136657758576,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(50,'U',0.7565831301936536,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(1200,'U',0.012801357333762198,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


@printf "Completed 350/500
" 

	measure_symv(700,'L',1.0,0.0)


	measure_symv(1200,'U',0.19979889981230936,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(100,'U',0.6488514458642286,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(50,'U',0.6388096686912282,0.0)


	measure_symv(50,'L',0.3851784042373676,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(100,'L',0.29750648947828373,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(1200,'L',0.8952644084271252,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(700,'U',0.37117278266621956,0.0)


	measure_symv(1200,'U',0.8536400108326302,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(100,'L',0.3948688620491313,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(700,'U',0.5706857293215221,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


@printf "Completed 400/500
" 

	measure_symv(50,'L',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(700,'L',0.5488141703557309,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(50,'L',0.6948404131752964,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(1200,'L',0.27870496778927123,0.0)


	measure_symv(50,'U',0.37985182099204906,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(1200,'U',0.7009217157956218,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(1200,'U',0.020655722709605362,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(50,'U',0.3437931673247181,0.0)


	measure_symv(700,'U',1.0,0.0)


@printf "Completed 450/500
" 

	measure_symv(100,'L',0.2377326558570464,0.0)


	measure_symv(50,'U',0.39600542618927337,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(1200,'L',0.07492200356131662,0.0)


	measure_symv(700,'L',0.3224931758680728,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(1200,'L',0.11898140357298859,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(50,'L',0.6763799706428881,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(100,'U',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(700,'L',0.7873352027669004,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(50,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(1200,'U',1.0,0.0)


	measure_symv(100,'L',1.0,0.0)


	measure_symv(50,'U',1.0,0.0)


	measure_symv(700,'L',1.0,0.0)


	measure_symv(1200,'L',1.0,0.0)


	measure_symv(700,'U',1.0,0.0)


@printf "Completed 500/500
" 

end

main()
