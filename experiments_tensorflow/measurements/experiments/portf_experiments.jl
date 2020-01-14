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

function measure_portf(size,uplo,property)
  C = generate([size,size],property)
  C = convert(Array{Float64,2},C)
  LinearAlgebra.LAPACK.potrf!(uplo,C)
  C = nothing

  C = generate([size,size],property)
  C = convert(Array{Float64,2},C)
  start = time_ns()
  LinearAlgebra.LAPACK.potrf!(uplo,C)
  finish = time_ns()
  time = (finish-start)*1e-9

  C = nothing
  write_times([size,uplo,property,time])
end


function main()

	
	measure_portf(668,'L',[Shape.General, Properties.SPD])


	measure_portf(1164,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(90,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(2223,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1947,'L',[Shape.General, Properties.Random])


	measure_portf(1902,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(874,'L',[Shape.General, Properties.SPD])


	measure_portf(687,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(402,'U',[Shape.General, Properties.SPD])


	measure_portf(1558,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(637,'L',[Shape.General, Properties.Random])


	measure_portf(154,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(193,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1759,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1671,'U',[Shape.General, Properties.SPD])


	measure_portf(1713,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1436,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(2176,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1607,'L',[Shape.General, Properties.Random])


	measure_portf(1979,'L',[Shape.General, Properties.Random])


	measure_portf(2696,'L',[Shape.General, Properties.Random])


	measure_portf(92,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1808,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(824,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(605,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1022,'L',[Shape.General, Properties.Random])


	measure_portf(484,'U',[Shape.General, Properties.SPD])


	measure_portf(1219,'U',[Shape.General, Properties.Random])


	measure_portf(114,'L',[Shape.General, Properties.SPD])


	measure_portf(1127,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(741,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(75,'L',[Shape.General, Properties.SPD])


	measure_portf(1652,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(959,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(552,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(477,'U',[Shape.General, Properties.SPD])


	measure_portf(1659,'L',[Shape.General, Properties.Random])


	measure_portf(530,'L',[Shape.General, Properties.Random])


	measure_portf(371,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1549,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1479,'U',[Shape.General, Properties.SPD])


	measure_portf(1715,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1842,'U',[Shape.General, Properties.SPD])


	measure_portf(981,'U',[Shape.General, Properties.Random])


	measure_portf(688,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(59,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1785,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1076,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(917,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1150,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


@printf "Completed 50/500
" 

	measure_portf(2257,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1407,'U',[Shape.General, Properties.Random])


	measure_portf(2085,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1157,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(937,'U',[Shape.General, Properties.Random])


	measure_portf(340,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(514,'U',[Shape.General, Properties.SPD])


	measure_portf(98,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(823,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(132,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(184,'L',[Shape.General, Properties.Random])


	measure_portf(2955,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(2027,'U',[Shape.General, Properties.SPD])


	measure_portf(2676,'L',[Shape.General, Properties.SPD])


	measure_portf(891,'U',[Shape.General, Properties.Random])


	measure_portf(97,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(2724,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1735,'L',[Shape.General, Properties.Random])


	measure_portf(774,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1677,'U',[Shape.General, Properties.SPD])


	measure_portf(66,'U',[Shape.General, Properties.Random])


	measure_portf(1802,'U',[Shape.General, Properties.SPD])


	measure_portf(708,'U',[Shape.General, Properties.SPD])


	measure_portf(1739,'L',[Shape.General, Properties.SPD])


	measure_portf(904,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1606,'U',[Shape.General, Properties.SPD])


	measure_portf(1746,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(562,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(797,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1085,'U',[Shape.General, Properties.Random])


	measure_portf(1145,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(736,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(2038,'U',[Shape.General, Properties.SPD])


	measure_portf(1114,'U',[Shape.General, Properties.Random])


	measure_portf(813,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1966,'L',[Shape.General, Properties.Random])


	measure_portf(542,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1088,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(75,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(91,'L',[Shape.General, Properties.Random])


	measure_portf(1059,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1025,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(775,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(957,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1082,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1198,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1927,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1801,'L',[Shape.General, Properties.Random])


	measure_portf(1457,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1284,'U',[Shape.UpperTriangular, Properties.Random])


@printf "Completed 100/500
" 

	measure_portf(603,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(889,'U',[Shape.General, Properties.Random])


	measure_portf(1254,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1873,'L',[Shape.General, Properties.SPD])


	measure_portf(295,'L',[Shape.General, Properties.Random])


	measure_portf(1560,'U',[Shape.General, Properties.SPD])


	measure_portf(2552,'U',[Shape.General, Properties.SPD])


	measure_portf(1254,'U',[Shape.General, Properties.Random])


	measure_portf(62,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1210,'U',[Shape.General, Properties.Random])


	measure_portf(2465,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1448,'U',[Shape.General, Properties.SPD])


	measure_portf(95,'L',[Shape.General, Properties.SPD])


	measure_portf(986,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1807,'L',[Shape.General, Properties.Random])


	measure_portf(1265,'U',[Shape.General, Properties.SPD])


	measure_portf(911,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1394,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1280,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(516,'L',[Shape.General, Properties.Random])


	measure_portf(1015,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(98,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(251,'U',[Shape.General, Properties.SPD])


	measure_portf(831,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1590,'U',[Shape.General, Properties.SPD])


	measure_portf(773,'L',[Shape.General, Properties.Random])


	measure_portf(1647,'L',[Shape.General, Properties.Random])


	measure_portf(1945,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(87,'U',[Shape.General, Properties.SPD])


	measure_portf(1564,'L',[Shape.General, Properties.SPD])


	measure_portf(1899,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(390,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(65,'U',[Shape.General, Properties.SPD])


	measure_portf(1546,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(2407,'U',[Shape.General, Properties.Random])


	measure_portf(1669,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(438,'L',[Shape.General, Properties.Random])


	measure_portf(360,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1628,'L',[Shape.General, Properties.SPD])


	measure_portf(627,'L',[Shape.General, Properties.Random])


	measure_portf(1782,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1610,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(2322,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(2842,'L',[Shape.General, Properties.SPD])


	measure_portf(786,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1594,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(301,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1247,'L',[Shape.General, Properties.Random])


	measure_portf(2146,'L',[Shape.General, Properties.Random])


	measure_portf(584,'U',[Shape.General, Properties.SPD])


@printf "Completed 150/500
" 

	measure_portf(75,'L',[Shape.General, Properties.Random])


	measure_portf(1692,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(70,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1835,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(220,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1956,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(2016,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(457,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1462,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1877,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(183,'L',[Shape.General, Properties.SPD])


	measure_portf(616,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1595,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(84,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(777,'L',[Shape.General, Properties.SPD])


	measure_portf(310,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(930,'U',[Shape.General, Properties.Random])


	measure_portf(93,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(640,'U',[Shape.General, Properties.SPD])


	measure_portf(1499,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(2734,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(2414,'U',[Shape.General, Properties.Random])


	measure_portf(2079,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1996,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(611,'U',[Shape.General, Properties.SPD])


	measure_portf(479,'L',[Shape.General, Properties.Random])


	measure_portf(1509,'U',[Shape.General, Properties.SPD])


	measure_portf(996,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1167,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(2220,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1061,'L',[Shape.General, Properties.Random])


	measure_portf(1252,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1138,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(56,'U',[Shape.General, Properties.SPD])


	measure_portf(1418,'L',[Shape.General, Properties.SPD])


	measure_portf(79,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(104,'U',[Shape.General, Properties.SPD])


	measure_portf(455,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(762,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1748,'L',[Shape.General, Properties.SPD])


	measure_portf(803,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(963,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(355,'L',[Shape.General, Properties.SPD])


	measure_portf(1785,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(588,'L',[Shape.General, Properties.Random])


	measure_portf(215,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(889,'L',[Shape.General, Properties.Random])


	measure_portf(1181,'L',[Shape.General, Properties.SPD])


	measure_portf(1430,'L',[Shape.General, Properties.SPD])


	measure_portf(1090,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


@printf "Completed 200/500
" 

	measure_portf(971,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1340,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1934,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(2787,'L',[Shape.General, Properties.Random])


	measure_portf(1463,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1867,'U',[Shape.General, Properties.SPD])


	measure_portf(1509,'L',[Shape.General, Properties.SPD])


	measure_portf(1981,'U',[Shape.General, Properties.SPD])


	measure_portf(1029,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(593,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1734,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(2350,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(2730,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(184,'U',[Shape.General, Properties.SPD])


	measure_portf(65,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1874,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(760,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(83,'L',[Shape.General, Properties.Random])


	measure_portf(1933,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(998,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(834,'L',[Shape.General, Properties.Random])


	measure_portf(1438,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(64,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(244,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(768,'U',[Shape.General, Properties.SPD])


	measure_portf(192,'L',[Shape.General, Properties.SPD])


	measure_portf(56,'L',[Shape.General, Properties.Random])


	measure_portf(118,'U',[Shape.General, Properties.SPD])


	measure_portf(1515,'U',[Shape.General, Properties.SPD])


	measure_portf(1250,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(68,'L',[Shape.General, Properties.Random])


	measure_portf(554,'U',[Shape.General, Properties.SPD])


	measure_portf(398,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(79,'U',[Shape.General, Properties.SPD])


	measure_portf(78,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1947,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1210,'U',[Shape.General, Properties.Random])


	measure_portf(87,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1212,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(2384,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(71,'U',[Shape.General, Properties.Random])


	measure_portf(2586,'L',[Shape.General, Properties.Random])


	measure_portf(1806,'U',[Shape.General, Properties.SPD])


	measure_portf(825,'L',[Shape.General, Properties.SPD])


	measure_portf(402,'L',[Shape.General, Properties.SPD])


	measure_portf(60,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1095,'L',[Shape.General, Properties.Random])


	measure_portf(2739,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(743,'L',[Shape.General, Properties.Random])


	measure_portf(553,'U',[Shape.General, Properties.Random])


@printf "Completed 250/500
" 

	measure_portf(2513,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(2696,'U',[Shape.General, Properties.SPD])


	measure_portf(1437,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(52,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1994,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1328,'U',[Shape.General, Properties.Random])


	measure_portf(930,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1298,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1885,'L',[Shape.General, Properties.Random])


	measure_portf(1652,'L',[Shape.General, Properties.Random])


	measure_portf(372,'L',[Shape.General, Properties.Random])


	measure_portf(1935,'U',[Shape.General, Properties.Random])


	measure_portf(831,'U',[Shape.General, Properties.Random])


	measure_portf(59,'U',[Shape.General, Properties.SPD])


	measure_portf(94,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1933,'L',[Shape.General, Properties.SPD])


	measure_portf(1924,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(390,'L',[Shape.General, Properties.Random])


	measure_portf(953,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(2097,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(953,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1623,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(207,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(67,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(595,'L',[Shape.General, Properties.SPD])


	measure_portf(1940,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(787,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(2850,'U',[Shape.General, Properties.SPD])


	measure_portf(1820,'L',[Shape.General, Properties.SPD])


	measure_portf(1559,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(90,'U',[Shape.General, Properties.SPD])


	measure_portf(1424,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1798,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(2925,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(606,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(180,'U',[Shape.General, Properties.SPD])


	measure_portf(913,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1854,'U',[Shape.General, Properties.Random])


	measure_portf(423,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(285,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(351,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(207,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(2711,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(211,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(98,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(237,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1989,'U',[Shape.General, Properties.SPD])


	measure_portf(1717,'U',[Shape.General, Properties.Random])


	measure_portf(334,'U',[Shape.General, Properties.Random])


	measure_portf(61,'U',[Shape.UpperTriangular, Properties.Random])


@printf "Completed 300/500
" 

	measure_portf(784,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1568,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(366,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(239,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(463,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(333,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(740,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1396,'U',[Shape.General, Properties.Random])


	measure_portf(157,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1417,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(960,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1686,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1759,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1228,'L',[Shape.General, Properties.SPD])


	measure_portf(524,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(323,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1027,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1918,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1562,'L',[Shape.General, Properties.SPD])


	measure_portf(1371,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(220,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1396,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1111,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(559,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(2265,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1696,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(440,'L',[Shape.General, Properties.SPD])


	measure_portf(1312,'U',[Shape.General, Properties.SPD])


	measure_portf(2636,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(72,'L',[Shape.General, Properties.Random])


	measure_portf(100,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1493,'U',[Shape.General, Properties.SPD])


	measure_portf(284,'L',[Shape.General, Properties.SPD])


	measure_portf(88,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(362,'U',[Shape.General, Properties.Random])


	measure_portf(58,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1858,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(857,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(293,'U',[Shape.General, Properties.SPD])


	measure_portf(999,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(582,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1922,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(87,'L',[Shape.General, Properties.SPD])


	measure_portf(231,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(305,'L',[Shape.General, Properties.Random])


	measure_portf(1001,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(615,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1348,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(512,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1436,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


@printf "Completed 350/500
" 

	measure_portf(1445,'U',[Shape.General, Properties.SPD])


	measure_portf(1379,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1344,'L',[Shape.General, Properties.SPD])


	measure_portf(2888,'L',[Shape.General, Properties.SPD])


	measure_portf(1393,'L',[Shape.General, Properties.SPD])


	measure_portf(1950,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(285,'L',[Shape.General, Properties.Random])


	measure_portf(886,'L',[Shape.General, Properties.SPD])


	measure_portf(895,'U',[Shape.General, Properties.SPD])


	measure_portf(733,'L',[Shape.General, Properties.SPD])


	measure_portf(862,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(799,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(2549,'U',[Shape.General, Properties.SPD])


	measure_portf(402,'U',[Shape.General, Properties.Random])


	measure_portf(1794,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(2928,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1837,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(780,'U',[Shape.General, Properties.SPD])


	measure_portf(722,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(230,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1572,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1791,'L',[Shape.General, Properties.Random])


	measure_portf(70,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(575,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(453,'L',[Shape.General, Properties.Random])


	measure_portf(292,'L',[Shape.General, Properties.SPD])


	measure_portf(2448,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1713,'U',[Shape.General, Properties.Random])


	measure_portf(1820,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1816,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(129,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1529,'U',[Shape.General, Properties.Random])


	measure_portf(93,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1981,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(792,'U',[Shape.General, Properties.SPD])


	measure_portf(84,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(564,'U',[Shape.General, Properties.Random])


	measure_portf(563,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(246,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(673,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1879,'U',[Shape.General, Properties.SPD])


	measure_portf(2254,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(631,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(2553,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(2967,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(458,'U',[Shape.General, Properties.Random])


	measure_portf(1628,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1437,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(351,'L',[Shape.General, Properties.SPD])


	measure_portf(1968,'U',[Shape.General, Properties.Random])


@printf "Completed 400/500
" 

	measure_portf(515,'L',[Shape.General, Properties.SPD])


	measure_portf(2854,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1960,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1082,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(874,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(255,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(726,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(2417,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1361,'L',[Shape.General, Properties.Random])


	measure_portf(336,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(446,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(424,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1540,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(760,'U',[Shape.General, Properties.SPD])


	measure_portf(2436,'U',[Shape.General, Properties.Random])


	measure_portf(1204,'U',[Shape.General, Properties.Random])


	measure_portf(960,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(593,'L',[Shape.General, Properties.Random])


	measure_portf(715,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1702,'U',[Shape.General, Properties.Random])


	measure_portf(1901,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1266,'U',[Shape.General, Properties.Random])


	measure_portf(1818,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1666,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(86,'U',[Shape.General, Properties.Random])


	measure_portf(1941,'U',[Shape.General, Properties.SPD])


	measure_portf(1304,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(214,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1815,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1038,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(747,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(77,'L',[Shape.General, Properties.SPD])


	measure_portf(56,'U',[Shape.General, Properties.Random])


	measure_portf(1628,'U',[Shape.General, Properties.Random])


	measure_portf(1840,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(155,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(2502,'U',[Shape.General, Properties.SPD])


	measure_portf(200,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(929,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1873,'L',[Shape.General, Properties.Random])


	measure_portf(1037,'L',[Shape.General, Properties.Random])


	measure_portf(956,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1390,'U',[Shape.General, Properties.SPD])


	measure_portf(300,'L',[Shape.General, Properties.Random])


	measure_portf(1331,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(488,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1824,'L',[Shape.General, Properties.SPD])


	measure_portf(1893,'U',[Shape.General, Properties.SPD])


	measure_portf(1422,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(794,'U',[Shape.General, Properties.Random])


@printf "Completed 450/500
" 

	measure_portf(239,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(975,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(764,'U',[Shape.General, Properties.SPD])


	measure_portf(790,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(381,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(353,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(50,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(2941,'L',[Shape.General, Properties.Random])


	measure_portf(1002,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(491,'L',[Shape.General, Properties.SPD])


	measure_portf(159,'L',[Shape.General, Properties.Random])


	measure_portf(147,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1402,'U',[Shape.General, Properties.Random])


	measure_portf(2254,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(448,'L',[Shape.General, Properties.Random])


	measure_portf(1270,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(365,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(321,'U',[Shape.General, Properties.Random])


	measure_portf(1612,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(2272,'U',[Shape.General, Properties.Random])


	measure_portf(1311,'L',[Shape.General, Properties.SPD])


	measure_portf(791,'L',[Shape.General, Properties.SPD])


	measure_portf(729,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1426,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(2944,'L',[Shape.General, Properties.Random])


	measure_portf(1710,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(296,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1706,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(189,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(742,'U',[Shape.General, Properties.Random])


	measure_portf(564,'U',[Shape.General, Properties.Random])


	measure_portf(1756,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1036,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(462,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1731,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(890,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1257,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1552,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(556,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(887,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(203,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(55,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(63,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1784,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1184,'U',[Shape.General, Properties.Random])


	measure_portf(1903,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(445,'L',[Shape.General, Properties.Random])


	measure_portf(412,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1964,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(759,'L',[Shape.General, Properties.Random])


@printf "Completed 500/500
" 

end

main()
