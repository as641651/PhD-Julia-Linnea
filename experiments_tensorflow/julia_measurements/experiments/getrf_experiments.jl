using LinearAlgebra.BLAS
using LinearAlgebra
using MatrixGenerator
using Printf

BLAS.set_num_threads(8)

f = open("/home/user/experiments_tensorflow/julia_measurements/measurements_data/getrf_out.txt","w")

function write_times(args)
  s = ""
  for k in args
    s = s*string(k)*"\t"
  end
  s = s*"\n"
  write(f,s)
end

function measure_getrf(size,property)
  C = generate([size,size],property)
  C = convert(Array{Float64,2},C)
  _,_,info = LinearAlgebra.LAPACK.getrf!(C)
  if info != 0
    @printf "Singular\n"
  end
  C = nothing

  C = generate([size,size],property)
  C = convert(Array{Float64,2},C)
  start = time_ns()
  _,_,info = LinearAlgebra.LAPACK.getrf!(C)
  finish = time_ns()
  time = (finish-start)*1e-9
  if info != 0
    @printf "Singular\n"
  end

  C = nothing
  write_times([size,property,time])

  GC.gc()
end


function main()

	
	measure_getrf(588,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1203,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(459,[Shape.General, Properties.Random])


	measure_getrf(1341,[Shape.General, Properties.Random])


	measure_getrf(1404,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1462,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1835,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(407,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(2881,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(707,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(356,[Shape.General, Properties.Random])


	measure_getrf(1440,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(258,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(225,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1914,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(922,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(855,[Shape.General, Properties.Random])


	measure_getrf(337,[Shape.General, Properties.SPD])


	measure_getrf(219,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1649,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1221,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1909,[Shape.General, Properties.SPD])


	measure_getrf(2304,[Shape.General, Properties.Random])


	measure_getrf(392,[Shape.General, Properties.Random])


	measure_getrf(2126,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1190,[Shape.General, Properties.SPD])


	measure_getrf(2743,[Shape.General, Properties.SPD])


	measure_getrf(1752,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1599,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(715,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1227,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1514,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1587,[Shape.General, Properties.Random])


	measure_getrf(1497,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1828,[Shape.General, Properties.Random])


	measure_getrf(1479,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1588,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(808,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2513,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1677,[Shape.General, Properties.Random])


	measure_getrf(2870,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(109,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1363,[Shape.General, Properties.SPD])


	measure_getrf(60,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1532,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1158,[Shape.General, Properties.Random])


	measure_getrf(715,[Shape.General, Properties.SPD])


	measure_getrf(163,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(957,[Shape.General, Properties.Random])


	measure_getrf(355,[Shape.General, Properties.SPD])


@printf "Completed 50/500
" 

	measure_getrf(2347,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1136,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1831,[Shape.General, Properties.Random])


	measure_getrf(778,[Shape.General, Properties.Random])


	measure_getrf(1121,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(67,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(698,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(339,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(78,[Shape.General, Properties.SPD])


	measure_getrf(168,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1393,[Shape.General, Properties.SPD])


	measure_getrf(1143,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1414,[Shape.General, Properties.Random])


	measure_getrf(1415,[Shape.General, Properties.SPD])


	measure_getrf(1999,[Shape.General, Properties.Random])


	measure_getrf(1785,[Shape.General, Properties.SPD])


	measure_getrf(405,[Shape.General, Properties.SPD])


	measure_getrf(1133,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1002,[Shape.General, Properties.SPD])


	measure_getrf(1973,[Shape.General, Properties.SPD])


	measure_getrf(1566,[Shape.General, Properties.Random])


	measure_getrf(54,[Shape.General, Properties.SPD])


	measure_getrf(901,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2655,[Shape.General, Properties.SPD])


	measure_getrf(1408,[Shape.General, Properties.Random])


	measure_getrf(1186,[Shape.General, Properties.Random])


	measure_getrf(1442,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(291,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(2312,[Shape.General, Properties.Random])


	measure_getrf(545,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(341,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(379,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(734,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(736,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(99,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1140,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(500,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(363,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2809,[Shape.General, Properties.SPD])


	measure_getrf(2941,[Shape.General, Properties.SPD])


	measure_getrf(333,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(677,[Shape.General, Properties.Random])


	measure_getrf(2706,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1769,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1930,[Shape.General, Properties.SPD])


	measure_getrf(1251,[Shape.General, Properties.Random])


	measure_getrf(501,[Shape.General, Properties.Random])


	measure_getrf(881,[Shape.General, Properties.SPD])


	measure_getrf(115,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(849,[Shape.General, Properties.SPD])


@printf "Completed 100/500
" 

	measure_getrf(1278,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1452,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(929,[Shape.General, Properties.SPD])


	measure_getrf(548,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2402,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(303,[Shape.General, Properties.SPD])


	measure_getrf(323,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(483,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(87,[Shape.General, Properties.Random])


	measure_getrf(99,[Shape.General, Properties.Random])


	measure_getrf(715,[Shape.General, Properties.SPD])


	measure_getrf(573,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(2099,[Shape.General, Properties.SPD])


	measure_getrf(190,[Shape.General, Properties.Random])


	measure_getrf(1184,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2630,[Shape.General, Properties.Random])


	measure_getrf(65,[Shape.General, Properties.Random])


	measure_getrf(1247,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(919,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(983,[Shape.General, Properties.Random])


	measure_getrf(686,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(341,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(81,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(688,[Shape.General, Properties.Random])


	measure_getrf(154,[Shape.General, Properties.Random])


	measure_getrf(777,[Shape.General, Properties.SPD])


	measure_getrf(1300,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(428,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(96,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1350,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(396,[Shape.General, Properties.SPD])


	measure_getrf(226,[Shape.General, Properties.SPD])


	measure_getrf(1742,[Shape.General, Properties.SPD])


	measure_getrf(996,[Shape.General, Properties.Random])


	measure_getrf(754,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1648,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2216,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1692,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1736,[Shape.General, Properties.Random])


	measure_getrf(557,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(719,[Shape.General, Properties.SPD])


	measure_getrf(71,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1574,[Shape.General, Properties.Random])


	measure_getrf(395,[Shape.General, Properties.SPD])


	measure_getrf(1020,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(376,[Shape.General, Properties.Random])


	measure_getrf(2869,[Shape.General, Properties.Random])


	measure_getrf(73,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1286,[Shape.General, Properties.SPD])


	measure_getrf(1565,[Shape.General, Properties.Random])


@printf "Completed 150/500
" 

	measure_getrf(1902,[Shape.General, Properties.Random])


	measure_getrf(1180,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(402,[Shape.General, Properties.SPD])


	measure_getrf(283,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(956,[Shape.General, Properties.Random])


	measure_getrf(902,[Shape.General, Properties.SPD])


	measure_getrf(1448,[Shape.General, Properties.Random])


	measure_getrf(278,[Shape.General, Properties.SPD])


	measure_getrf(511,[Shape.General, Properties.Random])


	measure_getrf(54,[Shape.General, Properties.SPD])


	measure_getrf(1501,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(649,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(812,[Shape.General, Properties.SPD])


	measure_getrf(1653,[Shape.General, Properties.Random])


	measure_getrf(2634,[Shape.General, Properties.Random])


	measure_getrf(1942,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1893,[Shape.General, Properties.SPD])


	measure_getrf(1453,[Shape.General, Properties.Random])


	measure_getrf(634,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1164,[Shape.General, Properties.SPD])


	measure_getrf(2742,[Shape.General, Properties.SPD])


	measure_getrf(2377,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(511,[Shape.General, Properties.SPD])


	measure_getrf(2622,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1431,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(2477,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(743,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2683,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1681,[Shape.General, Properties.Random])


	measure_getrf(536,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(71,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1161,[Shape.General, Properties.SPD])


	measure_getrf(1373,[Shape.General, Properties.Random])


	measure_getrf(305,[Shape.General, Properties.SPD])


	measure_getrf(212,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1341,[Shape.General, Properties.Random])


	measure_getrf(1790,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1626,[Shape.General, Properties.SPD])


	measure_getrf(75,[Shape.General, Properties.SPD])


	measure_getrf(2617,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(804,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(128,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1698,[Shape.General, Properties.SPD])


	measure_getrf(1832,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1115,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2212,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1570,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1001,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1178,[Shape.General, Properties.Random])


	measure_getrf(73,[Shape.General, Properties.Random])


@printf "Completed 200/500
" 

	measure_getrf(298,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(815,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(2545,[Shape.General, Properties.SPD])


	measure_getrf(1860,[Shape.General, Properties.Random])


	measure_getrf(780,[Shape.General, Properties.Random])


	measure_getrf(2157,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1621,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2539,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(967,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(52,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(95,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1924,[Shape.General, Properties.SPD])


	measure_getrf(1422,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1529,[Shape.General, Properties.Random])


	measure_getrf(51,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1676,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(55,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(69,[Shape.General, Properties.Random])


	measure_getrf(1450,[Shape.General, Properties.Random])


	measure_getrf(364,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(160,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1284,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(311,[Shape.General, Properties.SPD])


	measure_getrf(189,[Shape.General, Properties.SPD])


	measure_getrf(1530,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(825,[Shape.General, Properties.Random])


	measure_getrf(1397,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(787,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1706,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(68,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(873,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1820,[Shape.General, Properties.SPD])


	measure_getrf(2682,[Shape.General, Properties.SPD])


	measure_getrf(1649,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2879,[Shape.General, Properties.Random])


	measure_getrf(474,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(59,[Shape.General, Properties.SPD])


	measure_getrf(1170,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1382,[Shape.General, Properties.SPD])


	measure_getrf(2235,[Shape.General, Properties.Random])


	measure_getrf(1621,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1028,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(51,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(57,[Shape.General, Properties.Random])


	measure_getrf(51,[Shape.General, Properties.SPD])


	measure_getrf(2600,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(329,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1584,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1415,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1593,[Shape.Symmetric, Properties.Random(-5, 5)])


@printf "Completed 250/500
" 

	measure_getrf(589,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(205,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1591,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1321,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(427,[Shape.General, Properties.Random])


	measure_getrf(1210,[Shape.General, Properties.Random])


	measure_getrf(92,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(212,[Shape.General, Properties.SPD])


	measure_getrf(730,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(432,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1870,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(2339,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1163,[Shape.General, Properties.SPD])


	measure_getrf(1672,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(426,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1782,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1039,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(78,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1783,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1605,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(745,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2254,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(98,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1335,[Shape.General, Properties.Random])


	measure_getrf(480,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(390,[Shape.General, Properties.SPD])


	measure_getrf(61,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(488,[Shape.General, Properties.Random])


	measure_getrf(1712,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(215,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(2016,[Shape.General, Properties.SPD])


	measure_getrf(870,[Shape.General, Properties.SPD])


	measure_getrf(1200,[Shape.General, Properties.Random])


	measure_getrf(2999,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1947,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1810,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(2688,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1738,[Shape.General, Properties.Random])


	measure_getrf(1619,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1776,[Shape.General, Properties.SPD])


	measure_getrf(1304,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(163,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(951,[Shape.General, Properties.SPD])


	measure_getrf(1908,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(484,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(84,[Shape.General, Properties.Random])


	measure_getrf(858,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1183,[Shape.General, Properties.SPD])


	measure_getrf(1634,[Shape.General, Properties.Random])


	measure_getrf(799,[Shape.Symmetric, Properties.Random(-5, 5)])


@printf "Completed 300/500
" 

	measure_getrf(1218,[Shape.General, Properties.SPD])


	measure_getrf(663,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1679,[Shape.General, Properties.Random])


	measure_getrf(60,[Shape.General, Properties.SPD])


	measure_getrf(1820,[Shape.General, Properties.Random])


	measure_getrf(349,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1295,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(954,[Shape.General, Properties.SPD])


	measure_getrf(2854,[Shape.General, Properties.Random])


	measure_getrf(104,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1925,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1583,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1818,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(61,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(878,[Shape.General, Properties.Random])


	measure_getrf(62,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(81,[Shape.General, Properties.SPD])


	measure_getrf(2372,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(469,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1014,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1794,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1262,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(82,[Shape.General, Properties.SPD])


	measure_getrf(638,[Shape.General, Properties.Random])


	measure_getrf(2246,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1875,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1569,[Shape.General, Properties.Random])


	measure_getrf(359,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1041,[Shape.General, Properties.Random])


	measure_getrf(1012,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(683,[Shape.General, Properties.Random])


	measure_getrf(120,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(74,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1793,[Shape.General, Properties.Random])


	measure_getrf(1282,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(713,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1819,[Shape.General, Properties.SPD])


	measure_getrf(1854,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(2571,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1149,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1039,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(350,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(318,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1693,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1583,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(356,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(892,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(138,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(2032,[Shape.General, Properties.Random])


	measure_getrf(518,[Shape.General, Properties.SPD])


@printf "Completed 350/500
" 

	measure_getrf(468,[Shape.General, Properties.Random])


	measure_getrf(1105,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1569,[Shape.General, Properties.Random])


	measure_getrf(507,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(2082,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(750,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1787,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(73,[Shape.General, Properties.Random])


	measure_getrf(86,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(320,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1335,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(395,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(611,[Shape.General, Properties.SPD])


	measure_getrf(1395,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(353,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(264,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1420,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1070,[Shape.General, Properties.SPD])


	measure_getrf(1191,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(883,[Shape.General, Properties.SPD])


	measure_getrf(1023,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1223,[Shape.General, Properties.SPD])


	measure_getrf(610,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(219,[Shape.General, Properties.SPD])


	measure_getrf(85,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(353,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(164,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(65,[Shape.General, Properties.SPD])


	measure_getrf(2212,[Shape.General, Properties.Random])


	measure_getrf(518,[Shape.General, Properties.Random])


	measure_getrf(1474,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(142,[Shape.General, Properties.Random])


	measure_getrf(410,[Shape.General, Properties.Random])


	measure_getrf(816,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1757,[Shape.General, Properties.SPD])


	measure_getrf(1127,[Shape.General, Properties.SPD])


	measure_getrf(190,[Shape.General, Properties.SPD])


	measure_getrf(1690,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(94,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(670,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(859,[Shape.General, Properties.SPD])


	measure_getrf(1639,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1974,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(138,[Shape.General, Properties.SPD])


	measure_getrf(873,[Shape.General, Properties.SPD])


	measure_getrf(625,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(376,[Shape.General, Properties.Random])


	measure_getrf(2325,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1449,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(95,[Shape.General, Properties.Random])


@printf "Completed 400/500
" 

	measure_getrf(594,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1666,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(779,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(783,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1069,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(2191,[Shape.General, Properties.SPD])


	measure_getrf(1332,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(2665,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1734,[Shape.General, Properties.SPD])


	measure_getrf(114,[Shape.General, Properties.SPD])


	measure_getrf(69,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1808,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(956,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1954,[Shape.General, Properties.SPD])


	measure_getrf(1760,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(991,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(99,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1147,[Shape.General, Properties.SPD])


	measure_getrf(400,[Shape.General, Properties.Random])


	measure_getrf(1773,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(363,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(114,[Shape.General, Properties.Random])


	measure_getrf(408,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(989,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(253,[Shape.General, Properties.Random])


	measure_getrf(184,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1050,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(396,[Shape.General, Properties.Random])


	measure_getrf(862,[Shape.General, Properties.Random])


	measure_getrf(457,[Shape.General, Properties.SPD])


	measure_getrf(723,[Shape.General, Properties.Random])


	measure_getrf(1075,[Shape.General, Properties.SPD])


	measure_getrf(2399,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(89,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1334,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1531,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1976,[Shape.General, Properties.SPD])


	measure_getrf(1919,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(725,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1940,[Shape.General, Properties.SPD])


	measure_getrf(392,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(930,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(386,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(857,[Shape.General, Properties.SPD])


	measure_getrf(119,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1890,[Shape.General, Properties.SPD])


	measure_getrf(527,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(991,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(282,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1132,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 450/500
" 

	measure_getrf(83,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1162,[Shape.General, Properties.SPD])


	measure_getrf(772,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1181,[Shape.General, Properties.Random])


	measure_getrf(88,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(936,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(2468,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(279,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(161,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(284,[Shape.General, Properties.Random])


	measure_getrf(1194,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1645,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(523,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1201,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1862,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1600,[Shape.General, Properties.SPD])


	measure_getrf(685,[Shape.General, Properties.SPD])


	measure_getrf(1939,[Shape.General, Properties.SPD])


	measure_getrf(181,[Shape.General, Properties.Random])


	measure_getrf(788,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(772,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(90,[Shape.General, Properties.Random])


	measure_getrf(261,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(2796,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(783,[Shape.General, Properties.Random])


	measure_getrf(1910,[Shape.General, Properties.SPD])


	measure_getrf(1186,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1504,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(540,[Shape.General, Properties.Random])


	measure_getrf(763,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1173,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1171,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1789,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(947,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(513,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1471,[Shape.General, Properties.Random])


	measure_getrf(1358,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(310,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(774,[Shape.General, Properties.Random])


	measure_getrf(1978,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1055,[Shape.General, Properties.Random])


	measure_getrf(546,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1541,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(684,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(60,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(142,[Shape.General, Properties.SPD])


	measure_getrf(1850,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(116,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(345,[Shape.General, Properties.Random])


	measure_getrf(1722,[Shape.General, Properties.SPD])


@printf "Completed 500/500
" 

end

main()
