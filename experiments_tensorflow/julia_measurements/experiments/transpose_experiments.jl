using LinearAlgebra.BLAS
using LinearAlgebra
using MatrixGenerator
using Printf

BLAS.set_num_threads(8)

f = open("/home/user/experiments_tensorflow/julia_measurements/measurements_data/transpose_out.txt","w")

function write_times(args)
  s = ""
  for k in args
    s = s*string(k)*"\t"
  end
  s = s*"\n"
  write(f,s)
end

function measure_transpose(m,n,property)
  A = generate([m,n],property)
  A = convert(Array{Float64,2},A)
  B = zeros(n,m)
  transpose!(B,A)
  A = nothing
  B = nothing

  A = generate([m,n],property)
  A = convert(Array{Float64,2},A)
  B = zeros(n,m)
  start = time_ns()
  transpose!(B,A)
  finish = time_ns()
  time = (finish-start)*1e-9
  A = nothing
  B = nothing

  write_times([m,n,property,time])
  GC.gc()
end


function main()

	
	measure_transpose(80,59,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1778,509,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(60,87,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1144,332,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(765,1100,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(69,55,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(87,1581,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(105,77,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(448,92,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(282,78,[Shape.General, Properties.Random])


	measure_transpose(496,150,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(350,2439,[Shape.General, Properties.Random])


	measure_transpose(667,1004,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(262,55,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(2349,232,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1206,2105,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1763,91,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1913,1743,[Shape.General, Properties.Random])


	measure_transpose(99,1442,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(2025,67,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(721,687,[Shape.General, Properties.Random])


	measure_transpose(1732,66,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1687,975,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(2298,170,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(87,2468,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1653,254,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(491,340,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(961,60,[Shape.General, Properties.Random])


	measure_transpose(76,80,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1286,979,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(797,318,[Shape.General, Properties.Random])


	measure_transpose(2395,66,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(661,67,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(79,1319,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1526,237,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(568,456,[Shape.General, Properties.Random])


	measure_transpose(62,80,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1026,826,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(604,57,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(421,56,[Shape.General, Properties.Random])


	measure_transpose(2105,983,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1915,465,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(77,120,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(743,606,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1576,1347,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(177,967,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(339,2432,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(484,1178,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1292,1068,[Shape.General, Properties.Random])


	measure_transpose(83,1999,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 50/500
" 

	measure_transpose(1118,787,[Shape.General, Properties.Random])


	measure_transpose(613,66,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(780,222,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(170,1678,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(458,1973,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(64,78,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(355,878,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1243,93,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1192,1251,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(2034,849,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(79,1461,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(2166,2344,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(681,83,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(953,75,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(115,2472,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1995,1320,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(73,961,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1618,232,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(65,1639,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(355,561,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(78,124,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1003,483,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1269,2267,[Shape.General, Properties.Random])


	measure_transpose(831,622,[Shape.General, Properties.Random])


	measure_transpose(63,1395,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1133,53,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(2302,77,[Shape.General, Properties.Random])


	measure_transpose(92,2315,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(66,2258,[Shape.General, Properties.Random])


	measure_transpose(586,325,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(484,73,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1687,338,[Shape.General, Properties.Random])


	measure_transpose(1786,1637,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1091,422,[Shape.General, Properties.Random])


	measure_transpose(72,1597,[Shape.General, Properties.Random])


	measure_transpose(2302,393,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(54,411,[Shape.General, Properties.Random])


	measure_transpose(62,1643,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(197,69,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(283,578,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1503,319,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(2142,1664,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1858,197,[Shape.General, Properties.Random])


	measure_transpose(59,99,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1012,82,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(223,753,[Shape.General, Properties.Random])


	measure_transpose(142,1425,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(993,1387,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(92,508,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1899,1465,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 100/500
" 

	measure_transpose(293,367,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1395,815,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(57,51,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1257,2494,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1299,1600,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(95,1045,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1170,2275,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(2330,72,[Shape.General, Properties.Random])


	measure_transpose(328,2308,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(438,458,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1976,76,[Shape.General, Properties.Random])


	measure_transpose(85,1101,[Shape.General, Properties.Random])


	measure_transpose(2284,1575,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1259,2413,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1997,1961,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(95,768,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(382,379,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(2419,1574,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(2404,1230,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(81,493,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(61,254,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1282,1769,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(599,995,[Shape.General, Properties.Random])


	measure_transpose(2447,1312,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(79,754,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(2177,57,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(88,834,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(75,2345,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1254,80,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(93,70,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1263,53,[Shape.General, Properties.Random])


	measure_transpose(499,851,[Shape.General, Properties.Random])


	measure_transpose(1009,77,[Shape.General, Properties.Random])


	measure_transpose(870,429,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(506,117,[Shape.General, Properties.Random])


	measure_transpose(916,792,[Shape.General, Properties.Random])


	measure_transpose(1531,1310,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(406,1886,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1587,921,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(124,1684,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1154,2344,[Shape.General, Properties.Random])


	measure_transpose(382,1936,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(65,1886,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(465,123,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(714,968,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(2430,66,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1430,1957,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1633,677,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(825,1579,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1456,68,[Shape.General, Properties.Constant(3.0)])


@printf "Completed 150/500
" 

	measure_transpose(92,2316,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(2265,1624,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(824,1942,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(2252,1893,[Shape.General, Properties.Random])


	measure_transpose(1623,96,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(75,367,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1507,880,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(921,1139,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(52,74,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(420,901,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1839,1367,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1179,70,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1397,74,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(2002,1512,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(828,1812,[Shape.General, Properties.Random])


	measure_transpose(342,359,[Shape.General, Properties.Random])


	measure_transpose(2250,211,[Shape.General, Properties.Random])


	measure_transpose(108,1854,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(69,90,[Shape.General, Properties.Random])


	measure_transpose(2054,553,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1933,95,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(2163,116,[Shape.General, Properties.Random])


	measure_transpose(1914,87,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(75,1206,[Shape.General, Properties.Random])


	measure_transpose(569,1973,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(646,374,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1275,53,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(2451,58,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(517,2339,[Shape.General, Properties.Random])


	measure_transpose(71,96,[Shape.General, Properties.Random])


	measure_transpose(744,378,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(486,58,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(446,582,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(269,2136,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(623,616,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1857,2267,[Shape.General, Properties.Random])


	measure_transpose(237,2225,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(473,1909,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(447,92,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(148,880,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(281,523,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(89,930,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1025,80,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1159,2088,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(2215,99,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(50,53,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1846,1687,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(668,1936,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(475,543,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(853,765,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 200/500
" 

	measure_transpose(103,60,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(210,261,[Shape.General, Properties.Random])


	measure_transpose(1688,2243,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(52,476,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(699,2260,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1357,377,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1843,1583,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(2461,2378,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1256,213,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(2470,1449,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(76,763,[Shape.General, Properties.Random])


	measure_transpose(911,60,[Shape.General, Properties.Random])


	measure_transpose(178,1469,[Shape.General, Properties.Random])


	measure_transpose(1663,1230,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(86,1546,[Shape.General, Properties.Random])


	measure_transpose(2180,85,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(2020,65,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1120,942,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(70,160,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(675,1475,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1971,253,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(73,1953,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(990,2085,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(940,91,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(2458,540,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(2226,265,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1927,2144,[Shape.General, Properties.Random])


	measure_transpose(1850,570,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(289,1390,[Shape.General, Properties.Random])


	measure_transpose(1796,1912,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(2120,421,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(82,273,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(108,76,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1034,57,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(56,2492,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(683,1351,[Shape.General, Properties.Random])


	measure_transpose(73,301,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(65,1272,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(438,1273,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1586,67,[Shape.General, Properties.Random])


	measure_transpose(672,562,[Shape.General, Properties.Random])


	measure_transpose(634,1227,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(708,2452,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1628,124,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(70,97,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(98,2360,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1278,476,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(87,60,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1604,770,[Shape.General, Properties.Random])


	measure_transpose(55,2337,[Shape.General, Properties.Random])


@printf "Completed 250/500
" 

	measure_transpose(60,379,[Shape.General, Properties.Random])


	measure_transpose(50,1415,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(80,1090,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1081,710,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(85,424,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1241,2484,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(597,61,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1378,50,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(268,290,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1898,63,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1431,1448,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1797,377,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(265,50,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1773,1158,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1884,1800,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1315,2022,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1030,787,[Shape.General, Properties.Random])


	measure_transpose(2485,74,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(2448,980,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1363,79,[Shape.General, Properties.Random])


	measure_transpose(174,75,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(53,59,[Shape.General, Properties.Random])


	measure_transpose(1390,886,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(98,1658,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1967,2325,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1084,607,[Shape.General, Properties.Random])


	measure_transpose(1377,2057,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1749,410,[Shape.General, Properties.Random])


	measure_transpose(566,1849,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(96,994,[Shape.General, Properties.Random])


	measure_transpose(2473,1223,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(416,1217,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(67,73,[Shape.General, Properties.Random])


	measure_transpose(89,1226,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(2082,1807,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(87,83,[Shape.General, Properties.Random])


	measure_transpose(74,458,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1022,564,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(797,1189,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(94,2364,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(656,96,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(741,527,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(2291,359,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1180,74,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(855,1065,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(72,64,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(2130,1317,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(2058,897,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(248,1566,[Shape.General, Properties.Random])


	measure_transpose(160,1934,[Shape.General, Properties.Constant(3.0)])


@printf "Completed 300/500
" 

	measure_transpose(183,379,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(85,63,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(63,1056,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(270,1360,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(437,926,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(2184,1428,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(93,436,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(89,106,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(223,2183,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1441,223,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1318,62,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1218,249,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(976,533,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(91,806,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1292,2492,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1589,80,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(88,668,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(85,52,[Shape.General, Properties.Random])


	measure_transpose(425,117,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(72,1147,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(88,1420,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(92,56,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(64,2247,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(73,1312,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(67,939,[Shape.General, Properties.Random])


	measure_transpose(70,968,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(429,1416,[Shape.General, Properties.Random])


	measure_transpose(1410,1248,[Shape.General, Properties.Random])


	measure_transpose(131,1591,[Shape.General, Properties.Random])


	measure_transpose(83,615,[Shape.General, Properties.Random])


	measure_transpose(2134,218,[Shape.General, Properties.Random])


	measure_transpose(1365,1297,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(65,1798,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(2362,664,[Shape.General, Properties.Random])


	measure_transpose(80,2062,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1014,1125,[Shape.General, Properties.Random])


	measure_transpose(993,104,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(88,1653,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1064,2139,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(815,1389,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1073,2377,[Shape.General, Properties.Random])


	measure_transpose(1882,1946,[Shape.General, Properties.Random])


	measure_transpose(1318,2010,[Shape.General, Properties.Random])


	measure_transpose(97,55,[Shape.General, Properties.Random])


	measure_transpose(388,1489,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(73,1578,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(98,1456,[Shape.General, Properties.Random])


	measure_transpose(803,97,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(56,82,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1167,1456,[Shape.General, Properties.Constant(3.0)])


@printf "Completed 350/500
" 

	measure_transpose(1400,1181,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1384,96,[Shape.General, Properties.Random])


	measure_transpose(2309,1403,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(71,2175,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(72,398,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(65,92,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1065,90,[Shape.General, Properties.Random])


	measure_transpose(249,89,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1366,452,[Shape.General, Properties.Random])


	measure_transpose(85,1246,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(2346,67,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(147,2236,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(79,829,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(770,91,[Shape.General, Properties.Random])


	measure_transpose(75,2003,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(413,282,[Shape.General, Properties.Random])


	measure_transpose(2376,99,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1777,968,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(470,1311,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(64,144,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(97,2116,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(92,226,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1732,64,[Shape.General, Properties.Random])


	measure_transpose(488,78,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1353,590,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(332,69,[Shape.General, Properties.Random])


	measure_transpose(1151,494,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1880,89,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1292,1177,[Shape.General, Properties.Random])


	measure_transpose(680,2342,[Shape.General, Properties.Random])


	measure_transpose(1478,392,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(77,2364,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1283,2412,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(919,149,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(260,372,[Shape.General, Properties.Random])


	measure_transpose(1226,1984,[Shape.General, Properties.Random])


	measure_transpose(70,379,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(2304,1670,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(132,1037,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(2009,97,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(60,1986,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(456,96,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(217,1564,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(53,608,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1343,2237,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(61,52,[Shape.General, Properties.Random])


	measure_transpose(1162,89,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(505,2123,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(708,95,[Shape.General, Properties.Random])


	measure_transpose(589,2295,[Shape.General, Properties.Random])


@printf "Completed 400/500
" 

	measure_transpose(814,673,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1084,74,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1036,826,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(72,440,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1241,87,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(755,2224,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(81,1461,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(2133,1967,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1325,709,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(948,1293,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(2277,1381,[Shape.General, Properties.Random])


	measure_transpose(1257,403,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(374,1342,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(2378,55,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(2476,1022,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(2429,1117,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(400,71,[Shape.General, Properties.Random])


	measure_transpose(64,286,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(70,692,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(390,77,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(800,1643,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(269,101,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1857,99,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1320,2018,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(82,120,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(2302,784,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(76,766,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(92,129,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(167,94,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(500,463,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(71,79,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(2007,2270,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(384,83,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(76,536,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1736,1713,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(2105,2034,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(539,614,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(61,196,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(53,331,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(507,1925,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(2324,2232,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(644,1129,[Shape.General, Properties.Random])


	measure_transpose(2387,2199,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(129,857,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(2349,1436,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(2060,385,[Shape.General, Properties.Random])


	measure_transpose(461,563,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(53,1662,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(642,1600,[Shape.General, Properties.Random])


	measure_transpose(1605,94,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 450/500
" 

	measure_transpose(72,68,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1494,1382,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(768,2006,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1048,1888,[Shape.General, Properties.Random])


	measure_transpose(2312,892,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1938,57,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(188,84,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1355,159,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(915,394,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(235,95,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(989,1471,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(76,58,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(90,2188,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(2108,60,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(62,1822,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1765,1220,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(179,900,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1987,682,[Shape.General, Properties.Random])


	measure_transpose(276,1790,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(456,660,[Shape.General, Properties.Random])


	measure_transpose(407,718,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(172,979,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1899,1934,[Shape.General, Properties.Random])


	measure_transpose(125,1020,[Shape.General, Properties.Random])


	measure_transpose(1298,653,[Shape.General, Properties.Random])


	measure_transpose(64,1351,[Shape.General, Properties.Random])


	measure_transpose(778,2245,[Shape.General, Properties.Random])


	measure_transpose(384,443,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(649,1852,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(1310,79,[Shape.General, Properties.Random])


	measure_transpose(1844,1811,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(619,58,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1736,2034,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(720,70,[Shape.General, Properties.Random])


	measure_transpose(774,86,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(2337,185,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(160,571,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(2388,770,[Shape.General, Properties.Random])


	measure_transpose(77,86,[Shape.General, Properties.Constant(3.0)])


	measure_transpose(769,106,[Shape.General, Properties.Random])


	measure_transpose(65,78,[Shape.LowerTriangular, Properties.Random])


	measure_transpose(1588,215,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(1938,82,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(563,52,[Shape.UpperTriangular, Properties.Random])


	measure_transpose(188,749,[Shape.General, Properties.Random])


	measure_transpose(1721,526,[Shape.General, Properties.Constant(3.0)])


end

main()
