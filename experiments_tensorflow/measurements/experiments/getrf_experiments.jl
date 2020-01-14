using LinearAlgebra.BLAS
using LinearAlgebra
using MatrixGenerator
using Printf

BLAS.set_num_threads(8)

f = open("out.txt","w")

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

	
	measure_getrf(1734,[Shape.General, Properties.Random])


	measure_getrf(1082,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(2623,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1101,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1936,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(2338,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(976,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1794,[Shape.General, Properties.Random])


	measure_getrf(1092,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2320,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(2265,[Shape.General, Properties.Random])


	measure_getrf(1061,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1447,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1297,[Shape.General, Properties.Random])


	measure_getrf(624,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(73,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(106,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1426,[Shape.General, Properties.Random])


	measure_getrf(542,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(120,[Shape.General, Properties.Random])


	measure_getrf(359,[Shape.General, Properties.Random])


	measure_getrf(1119,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(555,[Shape.General, Properties.Random])


	measure_getrf(1868,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(73,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1508,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1991,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(529,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1622,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(867,[Shape.General, Properties.Random])


	measure_getrf(434,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2266,[Shape.General, Properties.SPD])


	measure_getrf(302,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(79,[Shape.General, Properties.SPD])


	measure_getrf(796,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(69,[Shape.General, Properties.Random])


	measure_getrf(99,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(75,[Shape.General, Properties.SPD])


	measure_getrf(202,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(997,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(321,[Shape.General, Properties.SPD])


	measure_getrf(769,[Shape.General, Properties.Random])


	measure_getrf(1981,[Shape.General, Properties.Random])


	measure_getrf(1751,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1089,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(634,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1528,[Shape.General, Properties.Random])


	measure_getrf(1032,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1709,[Shape.General, Properties.Random])


	measure_getrf(395,[Shape.General, Properties.SPD])


@printf "Completed 50/500
" 

	measure_getrf(2662,[Shape.General, Properties.Random])


	measure_getrf(1722,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2643,[Shape.General, Properties.Random])


	measure_getrf(83,[Shape.General, Properties.Random])


	measure_getrf(111,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1388,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(623,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(862,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(337,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1390,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(893,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(978,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(75,[Shape.General, Properties.Random])


	measure_getrf(2060,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1897,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(95,[Shape.General, Properties.Random])


	measure_getrf(1394,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1292,[Shape.General, Properties.Random])


	measure_getrf(1898,[Shape.General, Properties.Random])


	measure_getrf(1654,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(219,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(839,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1458,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(943,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(53,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(320,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1861,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(83,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(682,[Shape.General, Properties.Random])


	measure_getrf(1406,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1284,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(608,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1355,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1225,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(2423,[Shape.General, Properties.SPD])


	measure_getrf(79,[Shape.General, Properties.SPD])


	measure_getrf(85,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1243,[Shape.General, Properties.Random])


	measure_getrf(135,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(305,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(68,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(649,[Shape.General, Properties.SPD])


	measure_getrf(1431,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1813,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(65,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1652,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(695,[Shape.General, Properties.SPD])


	measure_getrf(1586,[Shape.General, Properties.Random])


	measure_getrf(1914,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(439,[Shape.Symmetric, Properties.Random(-5, 5)])


@printf "Completed 100/500
" 

	measure_getrf(259,[Shape.General, Properties.Random])


	measure_getrf(2043,[Shape.General, Properties.SPD])


	measure_getrf(963,[Shape.General, Properties.SPD])


	measure_getrf(472,[Shape.General, Properties.Random])


	measure_getrf(726,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(75,[Shape.General, Properties.SPD])


	measure_getrf(1068,[Shape.General, Properties.Random])


	measure_getrf(995,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(504,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(951,[Shape.General, Properties.Random])


	measure_getrf(1015,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1783,[Shape.General, Properties.SPD])


	measure_getrf(1329,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(379,[Shape.General, Properties.Random])


	measure_getrf(1774,[Shape.General, Properties.SPD])


	measure_getrf(328,[Shape.General, Properties.Random])


	measure_getrf(505,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1942,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1593,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(76,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(667,[Shape.General, Properties.SPD])


	measure_getrf(276,[Shape.General, Properties.Random])


	measure_getrf(1601,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(56,[Shape.General, Properties.SPD])


	measure_getrf(513,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1544,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1347,[Shape.General, Properties.SPD])


	measure_getrf(225,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1941,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(2956,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1285,[Shape.General, Properties.Random])


	measure_getrf(775,[Shape.General, Properties.SPD])


	measure_getrf(1177,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(2728,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1089,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(2525,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2546,[Shape.General, Properties.Random])


	measure_getrf(1002,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1488,[Shape.General, Properties.SPD])


	measure_getrf(2960,[Shape.General, Properties.Random])


	measure_getrf(181,[Shape.General, Properties.Random])


	measure_getrf(1856,[Shape.General, Properties.Random])


	measure_getrf(92,[Shape.General, Properties.SPD])


	measure_getrf(316,[Shape.General, Properties.Random])


	measure_getrf(2412,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(93,[Shape.General, Properties.Random])


	measure_getrf(1054,[Shape.General, Properties.Random])


	measure_getrf(753,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1493,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1428,[Shape.UpperTriangular, Properties.Constant(3.0)])


@printf "Completed 150/500
" 

	measure_getrf(2326,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(223,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(786,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1466,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(426,[Shape.General, Properties.SPD])


	measure_getrf(105,[Shape.General, Properties.Random])


	measure_getrf(171,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(80,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(2702,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2899,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(86,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1397,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1064,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1207,[Shape.General, Properties.Random])


	measure_getrf(492,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1290,[Shape.General, Properties.SPD])


	measure_getrf(246,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1478,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1048,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(163,[Shape.General, Properties.SPD])


	measure_getrf(1121,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1364,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1740,[Shape.General, Properties.Random])


	measure_getrf(1536,[Shape.General, Properties.SPD])


	measure_getrf(144,[Shape.General, Properties.Random])


	measure_getrf(1906,[Shape.General, Properties.SPD])


	measure_getrf(1828,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1563,[Shape.General, Properties.SPD])


	measure_getrf(195,[Shape.General, Properties.Random])


	measure_getrf(486,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(913,[Shape.General, Properties.SPD])


	measure_getrf(1132,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2373,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1436,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1944,[Shape.General, Properties.Random])


	measure_getrf(1432,[Shape.General, Properties.SPD])


	measure_getrf(861,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(914,[Shape.General, Properties.Random])


	measure_getrf(810,[Shape.General, Properties.SPD])


	measure_getrf(666,[Shape.General, Properties.SPD])


	measure_getrf(1100,[Shape.General, Properties.SPD])


	measure_getrf(2937,[Shape.General, Properties.SPD])


	measure_getrf(2127,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1178,[Shape.General, Properties.SPD])


	measure_getrf(812,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(677,[Shape.General, Properties.SPD])


	measure_getrf(74,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(823,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1830,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1751,[Shape.General, Properties.SPD])


@printf "Completed 200/500
" 

	measure_getrf(857,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1887,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1543,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2857,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2666,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1425,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(907,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1203,[Shape.General, Properties.Random])


	measure_getrf(1029,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1588,[Shape.General, Properties.SPD])


	measure_getrf(1515,[Shape.General, Properties.Random])


	measure_getrf(1244,[Shape.General, Properties.SPD])


	measure_getrf(982,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(367,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1239,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(997,[Shape.General, Properties.SPD])


	measure_getrf(1911,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1724,[Shape.General, Properties.Random])


	measure_getrf(1448,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1207,[Shape.General, Properties.SPD])


	measure_getrf(1700,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(180,[Shape.General, Properties.Random])


	measure_getrf(982,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1269,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1502,[Shape.General, Properties.SPD])


	measure_getrf(1840,[Shape.General, Properties.SPD])


	measure_getrf(345,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(739,[Shape.General, Properties.Random])


	measure_getrf(1391,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(558,[Shape.General, Properties.Random])


	measure_getrf(684,[Shape.General, Properties.SPD])


	measure_getrf(1971,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1044,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1992,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(494,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1626,[Shape.General, Properties.Random])


	measure_getrf(494,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1299,[Shape.General, Properties.SPD])


	measure_getrf(168,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(939,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1399,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(2372,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(2132,[Shape.General, Properties.Random])


	measure_getrf(1316,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(300,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(695,[Shape.General, Properties.Random])


	measure_getrf(1268,[Shape.General, Properties.SPD])


	measure_getrf(60,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1472,[Shape.General, Properties.SPD])


	measure_getrf(363,[Shape.UpperTriangular, Properties.Constant(3.0)])


@printf "Completed 250/500
" 

	measure_getrf(1777,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1683,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(339,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(83,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1531,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1960,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(781,[Shape.General, Properties.SPD])


	measure_getrf(407,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1138,[Shape.General, Properties.Random])


	measure_getrf(1213,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1115,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(426,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(627,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(821,[Shape.General, Properties.SPD])


	measure_getrf(193,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(68,[Shape.General, Properties.Random])


	measure_getrf(829,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1617,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1054,[Shape.General, Properties.Random])


	measure_getrf(1444,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1304,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1791,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(642,[Shape.General, Properties.SPD])


	measure_getrf(1315,[Shape.General, Properties.SPD])


	measure_getrf(2285,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(53,[Shape.General, Properties.Random])


	measure_getrf(1587,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(210,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1794,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1102,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(2171,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(324,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(279,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(94,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1868,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1066,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(442,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(54,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(67,[Shape.General, Properties.Random])


	measure_getrf(342,[Shape.General, Properties.SPD])


	measure_getrf(613,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(771,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(919,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2551,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(850,[Shape.General, Properties.SPD])


	measure_getrf(975,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2899,[Shape.General, Properties.SPD])


	measure_getrf(241,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2416,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(85,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 300/500
" 

	measure_getrf(353,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(56,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(857,[Shape.General, Properties.SPD])


	measure_getrf(2115,[Shape.General, Properties.SPD])


	measure_getrf(362,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(818,[Shape.General, Properties.SPD])


	measure_getrf(59,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1378,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1318,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1450,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(540,[Shape.General, Properties.SPD])


	measure_getrf(363,[Shape.General, Properties.Random])


	measure_getrf(970,[Shape.General, Properties.Random])


	measure_getrf(670,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1561,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1145,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1094,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(228,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(753,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2525,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1318,[Shape.General, Properties.Random])


	measure_getrf(707,[Shape.General, Properties.Random])


	measure_getrf(1786,[Shape.General, Properties.SPD])


	measure_getrf(407,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1274,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(517,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(737,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1432,[Shape.General, Properties.Random])


	measure_getrf(2139,[Shape.General, Properties.SPD])


	measure_getrf(2728,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1281,[Shape.General, Properties.SPD])


	measure_getrf(994,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1757,[Shape.General, Properties.Random])


	measure_getrf(1683,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(87,[Shape.General, Properties.SPD])


	measure_getrf(798,[Shape.General, Properties.Random])


	measure_getrf(83,[Shape.General, Properties.SPD])


	measure_getrf(817,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(379,[Shape.General, Properties.SPD])


	measure_getrf(190,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(425,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(446,[Shape.General, Properties.Random])


	measure_getrf(100,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1924,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(85,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(703,[Shape.General, Properties.SPD])


	measure_getrf(207,[Shape.General, Properties.SPD])


	measure_getrf(158,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(2375,[Shape.General, Properties.Random])


	measure_getrf(204,[Shape.Symmetric, Properties.Random(-5, 5)])


@printf "Completed 350/500
" 

	measure_getrf(84,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(94,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(880,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(442,[Shape.General, Properties.Random])


	measure_getrf(1864,[Shape.General, Properties.SPD])


	measure_getrf(1561,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(636,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(114,[Shape.General, Properties.Random])


	measure_getrf(1160,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(208,[Shape.General, Properties.SPD])


	measure_getrf(846,[Shape.General, Properties.SPD])


	measure_getrf(1626,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(690,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1934,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1092,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1117,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(57,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(634,[Shape.General, Properties.Random])


	measure_getrf(1213,[Shape.General, Properties.Random])


	measure_getrf(1854,[Shape.General, Properties.SPD])


	measure_getrf(66,[Shape.General, Properties.Random])


	measure_getrf(2999,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1324,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(686,[Shape.General, Properties.Random])


	measure_getrf(50,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(355,[Shape.General, Properties.Random])


	measure_getrf(611,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(95,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(924,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1110,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(2393,[Shape.General, Properties.SPD])


	measure_getrf(1642,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1267,[Shape.General, Properties.SPD])


	measure_getrf(1641,[Shape.General, Properties.SPD])


	measure_getrf(421,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1401,[Shape.General, Properties.Random])


	measure_getrf(647,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(322,[Shape.General, Properties.SPD])


	measure_getrf(1526,[Shape.General, Properties.SPD])


	measure_getrf(1045,[Shape.General, Properties.SPD])


	measure_getrf(153,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(849,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(2351,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(630,[Shape.General, Properties.SPD])


	measure_getrf(1319,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(2560,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(106,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1873,[Shape.General, Properties.Random])


	measure_getrf(61,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1489,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 400/500
" 

	measure_getrf(1100,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1517,[Shape.General, Properties.SPD])


	measure_getrf(640,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1327,[Shape.General, Properties.Random])


	measure_getrf(220,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(266,[Shape.General, Properties.SPD])


	measure_getrf(430,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(226,[Shape.General, Properties.Random])


	measure_getrf(926,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(586,[Shape.General, Properties.Random])


	measure_getrf(1810,[Shape.General, Properties.SPD])


	measure_getrf(550,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(909,[Shape.General, Properties.Random])


	measure_getrf(776,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(659,[Shape.General, Properties.Random])


	measure_getrf(1600,[Shape.General, Properties.Random])


	measure_getrf(1721,[Shape.General, Properties.SPD])


	measure_getrf(1044,[Shape.General, Properties.Random])


	measure_getrf(1948,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(256,[Shape.General, Properties.Random])


	measure_getrf(647,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(2856,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(268,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(90,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1863,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(915,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1178,[Shape.General, Properties.SPD])


	measure_getrf(312,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1718,[Shape.General, Properties.SPD])


	measure_getrf(627,[Shape.General, Properties.SPD])


	measure_getrf(1283,[Shape.General, Properties.SPD])


	measure_getrf(1457,[Shape.General, Properties.SPD])


	measure_getrf(2670,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(2052,[Shape.General, Properties.SPD])


	measure_getrf(1853,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(802,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(518,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(911,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(261,[Shape.General, Properties.SPD])


	measure_getrf(2450,[Shape.General, Properties.Random])


	measure_getrf(825,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1947,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1660,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1597,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(2936,[Shape.General, Properties.Random])


	measure_getrf(1639,[Shape.General, Properties.SPD])


	measure_getrf(485,[Shape.General, Properties.SPD])


	measure_getrf(1101,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1819,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(388,[Shape.General, Properties.SPD])


@printf "Completed 450/500
" 

	measure_getrf(2845,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(804,[Shape.General, Properties.Random])


	measure_getrf(1235,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(2804,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(134,[Shape.General, Properties.SPD])


	measure_getrf(99,[Shape.General, Properties.SPD])


	measure_getrf(1898,[Shape.General, Properties.SPD])


	measure_getrf(1465,[Shape.General, Properties.Random])


	measure_getrf(728,[Shape.General, Properties.SPD])


	measure_getrf(677,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(62,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1880,[Shape.General, Properties.Random])


	measure_getrf(1892,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(623,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(2862,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(252,[Shape.General, Properties.Random])


	measure_getrf(1031,[Shape.General, Properties.Random])


	measure_getrf(1711,[Shape.General, Properties.SPD])


	measure_getrf(2206,[Shape.General, Properties.SPD])


	measure_getrf(187,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1420,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(331,[Shape.General, Properties.SPD])


	measure_getrf(1728,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(544,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(904,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(592,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(808,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(267,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1180,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1658,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(74,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(405,[Shape.UpperTriangular, Properties.Random])


	measure_getrf(1317,[Shape.General, Properties.Random])


	measure_getrf(932,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(2996,[Shape.General, Properties.Random])


	measure_getrf(60,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(1677,[Shape.General, Properties.SPD])


	measure_getrf(92,[Shape.General, Properties.SPD])


	measure_getrf(1393,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(1720,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(673,[Shape.General, Properties.SPD])


	measure_getrf(819,[Shape.General, Properties.SPD])


	measure_getrf(96,[Shape.General, Properties.Random])


	measure_getrf(1410,[Shape.General, Properties.Random])


	measure_getrf(1209,[Shape.General, Properties.Random])


	measure_getrf(221,[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_getrf(871,[Shape.General, Properties.Random])


	measure_getrf(1880,[Shape.General, Properties.Random])


	measure_getrf(443,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_getrf(273,[Shape.Symmetric, Properties.Random(-5, 5)])


@printf "Completed 500/500
" 

end

main()
