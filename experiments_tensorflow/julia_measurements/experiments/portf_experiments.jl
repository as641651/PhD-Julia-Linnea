using LinearAlgebra.BLAS
using LinearAlgebra
using MatrixGenerator
using Printf

BLAS.set_num_threads(8)

f = open("/home/user/experiments_tensorflow/julia_measurements/measurements_data/portf_out.txt","w")

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

	
	measure_portf(545,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(680,'U',[Shape.General, Properties.SPD])


	measure_portf(1418,'L',[Shape.General, Properties.Random])


	measure_portf(1968,'U',[Shape.General, Properties.Random])


	measure_portf(1500,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(356,'U',[Shape.General, Properties.Random])


	measure_portf(1533,'L',[Shape.General, Properties.SPD])


	measure_portf(341,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(936,'U',[Shape.General, Properties.SPD])


	measure_portf(335,'L',[Shape.General, Properties.SPD])


	measure_portf(1924,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(935,'L',[Shape.General, Properties.Random])


	measure_portf(614,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1183,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1301,'U',[Shape.General, Properties.Random])


	measure_portf(59,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(102,'L',[Shape.General, Properties.SPD])


	measure_portf(560,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(860,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(396,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(872,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(637,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(757,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(147,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(488,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(439,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(946,'L',[Shape.General, Properties.Random])


	measure_portf(1871,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(249,'L',[Shape.General, Properties.Random])


	measure_portf(830,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(94,'U',[Shape.General, Properties.SPD])


	measure_portf(1653,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(424,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(825,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(2524,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(941,'L',[Shape.General, Properties.Random])


	measure_portf(1219,'U',[Shape.General, Properties.Random])


	measure_portf(1179,'U',[Shape.General, Properties.SPD])


	measure_portf(1539,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1715,'U',[Shape.General, Properties.SPD])


	measure_portf(861,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(883,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1593,'U',[Shape.General, Properties.Random])


	measure_portf(1649,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1362,'L',[Shape.General, Properties.Random])


	measure_portf(594,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1042,'U',[Shape.General, Properties.SPD])


	measure_portf(846,'L',[Shape.General, Properties.Random])


	measure_portf(358,'U',[Shape.General, Properties.SPD])


	measure_portf(1185,'L',[Shape.General, Properties.SPD])


@printf "Completed 50/500
" 

	measure_portf(1876,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1551,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(2514,'U',[Shape.General, Properties.Random])


	measure_portf(2753,'U',[Shape.General, Properties.Random])


	measure_portf(1478,'U',[Shape.General, Properties.SPD])


	measure_portf(149,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1540,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(535,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1367,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(534,'L',[Shape.General, Properties.Random])


	measure_portf(1001,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(151,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(2458,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1491,'U',[Shape.General, Properties.SPD])


	measure_portf(1989,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(2764,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1881,'U',[Shape.General, Properties.SPD])


	measure_portf(1380,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1074,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(650,'U',[Shape.General, Properties.SPD])


	measure_portf(694,'U',[Shape.General, Properties.Random])


	measure_portf(492,'U',[Shape.General, Properties.Random])


	measure_portf(50,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(414,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(2631,'L',[Shape.General, Properties.SPD])


	measure_portf(429,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(90,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1822,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1309,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1345,'U',[Shape.General, Properties.Random])


	measure_portf(1364,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(80,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(97,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1294,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(470,'U',[Shape.General, Properties.Random])


	measure_portf(855,'L',[Shape.General, Properties.SPD])


	measure_portf(1086,'U',[Shape.General, Properties.SPD])


	measure_portf(250,'L',[Shape.General, Properties.SPD])


	measure_portf(260,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(2797,'U',[Shape.General, Properties.SPD])


	measure_portf(1068,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1116,'L',[Shape.General, Properties.Random])


	measure_portf(65,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(58,'U',[Shape.General, Properties.SPD])


	measure_portf(1534,'U',[Shape.General, Properties.Random])


	measure_portf(2801,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(82,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(292,'L',[Shape.General, Properties.Random])


	measure_portf(1381,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(739,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


@printf "Completed 100/500
" 

	measure_portf(1987,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(54,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(2422,'U',[Shape.General, Properties.Random])


	measure_portf(1730,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1775,'U',[Shape.General, Properties.Random])


	measure_portf(812,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(709,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1387,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1985,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(95,'L',[Shape.General, Properties.Random])


	measure_portf(733,'U',[Shape.General, Properties.SPD])


	measure_portf(2776,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(173,'U',[Shape.General, Properties.SPD])


	measure_portf(1722,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(2017,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(613,'U',[Shape.General, Properties.Random])


	measure_portf(503,'U',[Shape.General, Properties.SPD])


	measure_portf(492,'L',[Shape.General, Properties.SPD])


	measure_portf(98,'L',[Shape.General, Properties.SPD])


	measure_portf(766,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1160,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(103,'U',[Shape.General, Properties.SPD])


	measure_portf(962,'L',[Shape.General, Properties.Random])


	measure_portf(1356,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1568,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1857,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1500,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1759,'L',[Shape.General, Properties.SPD])


	measure_portf(2770,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1195,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(687,'L',[Shape.General, Properties.SPD])


	measure_portf(332,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(69,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(2663,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(106,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(511,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1984,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(854,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(747,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(630,'U',[Shape.General, Properties.SPD])


	measure_portf(1495,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1884,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1713,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(394,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(283,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(55,'L',[Shape.General, Properties.Random])


	measure_portf(1456,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(66,'U',[Shape.General, Properties.SPD])


	measure_portf(411,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1728,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


@printf "Completed 150/500
" 

	measure_portf(121,'L',[Shape.General, Properties.SPD])


	measure_portf(78,'L',[Shape.General, Properties.Random])


	measure_portf(1013,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1700,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(606,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(86,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(2923,'U',[Shape.General, Properties.SPD])


	measure_portf(84,'L',[Shape.General, Properties.Random])


	measure_portf(841,'U',[Shape.General, Properties.SPD])


	measure_portf(63,'L',[Shape.General, Properties.Random])


	measure_portf(408,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1322,'L',[Shape.General, Properties.SPD])


	measure_portf(809,'U',[Shape.General, Properties.SPD])


	measure_portf(1002,'L',[Shape.General, Properties.SPD])


	measure_portf(542,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1394,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(746,'L',[Shape.General, Properties.Random])


	measure_portf(916,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1547,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1311,'L',[Shape.General, Properties.SPD])


	measure_portf(850,'U',[Shape.General, Properties.Random])


	measure_portf(821,'L',[Shape.General, Properties.Random])


	measure_portf(500,'L',[Shape.General, Properties.Random])


	measure_portf(831,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(253,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(53,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(415,'L',[Shape.General, Properties.SPD])


	measure_portf(658,'L',[Shape.General, Properties.Random])


	measure_portf(2325,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(883,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(2486,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1796,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1110,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1225,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(896,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1182,'L',[Shape.General, Properties.SPD])


	measure_portf(2733,'L',[Shape.General, Properties.SPD])


	measure_portf(461,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(469,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(983,'U',[Shape.General, Properties.Random])


	measure_portf(2936,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(155,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(287,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(402,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1420,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(53,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1925,'L',[Shape.General, Properties.SPD])


	measure_portf(1898,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(916,'U',[Shape.General, Properties.SPD])


	measure_portf(2332,'U',[Shape.UpperTriangular, Properties.Random])


@printf "Completed 200/500
" 

	measure_portf(1549,'L',[Shape.General, Properties.Random])


	measure_portf(2772,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(56,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1504,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(531,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1939,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(680,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1602,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(426,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(807,'U',[Shape.General, Properties.SPD])


	measure_portf(162,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(803,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(906,'U',[Shape.General, Properties.Random])


	measure_portf(86,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(457,'U',[Shape.General, Properties.Random])


	measure_portf(1947,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(2243,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(489,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(110,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1094,'L',[Shape.General, Properties.Random])


	measure_portf(1929,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1916,'U',[Shape.General, Properties.Random])


	measure_portf(546,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1063,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1133,'U',[Shape.General, Properties.SPD])


	measure_portf(423,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(735,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(581,'U',[Shape.General, Properties.Random])


	measure_portf(1473,'U',[Shape.General, Properties.Random])


	measure_portf(1967,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(2491,'L',[Shape.General, Properties.Random])


	measure_portf(612,'U',[Shape.General, Properties.Random])


	measure_portf(824,'L',[Shape.General, Properties.Random])


	measure_portf(2525,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(474,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(360,'U',[Shape.General, Properties.SPD])


	measure_portf(582,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1226,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1705,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(101,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1827,'U',[Shape.General, Properties.SPD])


	measure_portf(76,'U',[Shape.General, Properties.Random])


	measure_portf(819,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1257,'L',[Shape.General, Properties.Random])


	measure_portf(675,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(702,'L',[Shape.General, Properties.Random])


	measure_portf(1926,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(158,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1057,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(905,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


@printf "Completed 250/500
" 

	measure_portf(2829,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1839,'U',[Shape.General, Properties.SPD])


	measure_portf(1729,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(99,'L',[Shape.General, Properties.Random])


	measure_portf(1715,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1018,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(2105,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(674,'L',[Shape.General, Properties.SPD])


	measure_portf(70,'L',[Shape.General, Properties.SPD])


	measure_portf(449,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(2027,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1663,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1489,'U',[Shape.General, Properties.SPD])


	measure_portf(1977,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1224,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(739,'L',[Shape.General, Properties.SPD])


	measure_portf(2664,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1803,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(383,'L',[Shape.General, Properties.SPD])


	measure_portf(1991,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(877,'L',[Shape.General, Properties.Random])


	measure_portf(1131,'L',[Shape.General, Properties.SPD])


	measure_portf(70,'U',[Shape.General, Properties.SPD])


	measure_portf(1410,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(488,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1676,'L',[Shape.General, Properties.Random])


	measure_portf(794,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(2682,'U',[Shape.General, Properties.SPD])


	measure_portf(1046,'L',[Shape.General, Properties.SPD])


	measure_portf(1593,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(986,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1386,'U',[Shape.General, Properties.Random])


	measure_portf(816,'U',[Shape.General, Properties.SPD])


	measure_portf(1422,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1408,'L',[Shape.General, Properties.SPD])


	measure_portf(787,'U',[Shape.General, Properties.Random])


	measure_portf(79,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1870,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(178,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(999,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1112,'L',[Shape.General, Properties.Random])


	measure_portf(1381,'L',[Shape.General, Properties.Random])


	measure_portf(139,'U',[Shape.General, Properties.SPD])


	measure_portf(1427,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(529,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1355,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(2819,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(2686,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(918,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(87,'U',[Shape.General, Properties.SPD])


@printf "Completed 300/500
" 

	measure_portf(1342,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(323,'U',[Shape.General, Properties.Random])


	measure_portf(2047,'U',[Shape.General, Properties.Random])


	measure_portf(1208,'L',[Shape.General, Properties.Random])


	measure_portf(1431,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(720,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(264,'U',[Shape.General, Properties.Random])


	measure_portf(886,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(2260,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(709,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(78,'U',[Shape.General, Properties.Random])


	measure_portf(2388,'U',[Shape.General, Properties.Random])


	measure_portf(1079,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1604,'U',[Shape.General, Properties.Random])


	measure_portf(748,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(698,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(388,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(2304,'U',[Shape.General, Properties.SPD])


	measure_portf(297,'U',[Shape.General, Properties.Random])


	measure_portf(91,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(195,'L',[Shape.General, Properties.SPD])


	measure_portf(1872,'U',[Shape.General, Properties.Random])


	measure_portf(2155,'U',[Shape.General, Properties.Random])


	measure_portf(1729,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(500,'U',[Shape.General, Properties.Random])


	measure_portf(1524,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1475,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(928,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(687,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(90,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(2269,'U',[Shape.General, Properties.Random])


	measure_portf(940,'U',[Shape.General, Properties.Random])


	measure_portf(1477,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(52,'L',[Shape.General, Properties.SPD])


	measure_portf(1274,'U',[Shape.General, Properties.Random])


	measure_portf(1125,'L',[Shape.General, Properties.SPD])


	measure_portf(916,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(562,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1531,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1695,'L',[Shape.General, Properties.SPD])


	measure_portf(266,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1629,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(2897,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1944,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(100,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(65,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1560,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(593,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1965,'L',[Shape.General, Properties.SPD])


	measure_portf(297,'U',[Shape.UpperTriangular, Properties.Random])


@printf "Completed 350/500
" 

	measure_portf(871,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1413,'U',[Shape.General, Properties.Random])


	measure_portf(2037,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(113,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1531,'U',[Shape.General, Properties.Random])


	measure_portf(1401,'U',[Shape.General, Properties.Random])


	measure_portf(516,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(2385,'U',[Shape.General, Properties.SPD])


	measure_portf(595,'L',[Shape.General, Properties.SPD])


	measure_portf(979,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1286,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1967,'U',[Shape.General, Properties.Random])


	measure_portf(2198,'U',[Shape.General, Properties.Random])


	measure_portf(2484,'L',[Shape.General, Properties.SPD])


	measure_portf(695,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1224,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(81,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(274,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1195,'U',[Shape.General, Properties.Random])


	measure_portf(612,'U',[Shape.General, Properties.SPD])


	measure_portf(1999,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(90,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(865,'L',[Shape.General, Properties.Random])


	measure_portf(751,'L',[Shape.General, Properties.SPD])


	measure_portf(1158,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1113,'U',[Shape.General, Properties.Random])


	measure_portf(416,'L',[Shape.General, Properties.Random])


	measure_portf(929,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(873,'L',[Shape.General, Properties.SPD])


	measure_portf(1719,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1396,'L',[Shape.General, Properties.SPD])


	measure_portf(286,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(90,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(2503,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1818,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1542,'L',[Shape.General, Properties.SPD])


	measure_portf(755,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(208,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(246,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1846,'L',[Shape.General, Properties.Random])


	measure_portf(1404,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1961,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1406,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(213,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1831,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(52,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(52,'L',[Shape.General, Properties.Random])


	measure_portf(2129,'U',[Shape.General, Properties.SPD])


	measure_portf(89,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(69,'U',[Shape.General, Properties.SPD])


@printf "Completed 400/500
" 

	measure_portf(1069,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(945,'L',[Shape.General, Properties.SPD])


	measure_portf(77,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1988,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(68,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1850,'U',[Shape.General, Properties.SPD])


	measure_portf(1341,'L',[Shape.General, Properties.Random])


	measure_portf(659,'L',[Shape.General, Properties.Random])


	measure_portf(68,'U',[Shape.General, Properties.SPD])


	measure_portf(943,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(384,'U',[Shape.General, Properties.Random])


	measure_portf(1961,'U',[Shape.General, Properties.Random])


	measure_portf(208,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(871,'U',[Shape.General, Properties.SPD])


	measure_portf(1306,'U',[Shape.General, Properties.SPD])


	measure_portf(1265,'L',[Shape.General, Properties.SPD])


	measure_portf(1439,'U',[Shape.General, Properties.SPD])


	measure_portf(554,'L',[Shape.General, Properties.Random])


	measure_portf(589,'L',[Shape.General, Properties.SPD])


	measure_portf(1555,'L',[Shape.General, Properties.SPD])


	measure_portf(1720,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(976,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1856,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1467,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1900,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1058,'L',[Shape.General, Properties.Random])


	measure_portf(732,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(580,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(496,'U',[Shape.General, Properties.SPD])


	measure_portf(138,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(552,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1987,'U',[Shape.General, Properties.Random])


	measure_portf(1038,'U',[Shape.General, Properties.SPD])


	measure_portf(65,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1034,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1054,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(692,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(367,'U',[Shape.General, Properties.Random])


	measure_portf(1335,'U',[Shape.General, Properties.Random])


	measure_portf(2886,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1722,'U',[Shape.General, Properties.Random])


	measure_portf(2719,'L',[Shape.General, Properties.Random])


	measure_portf(900,'L',[Shape.General, Properties.Random])


	measure_portf(1710,'U',[Shape.General, Properties.SPD])


	measure_portf(1642,'U',[Shape.General, Properties.Random])


	measure_portf(1637,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(84,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(988,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(2411,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(748,'U',[Shape.General, Properties.SPD])


@printf "Completed 450/500
" 

	measure_portf(2432,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(735,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1893,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(812,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1651,'L',[Shape.General, Properties.SPD])


	measure_portf(69,'U',[Shape.General, Properties.Random])


	measure_portf(1136,'L',[Shape.General, Properties.SPD])


	measure_portf(620,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(77,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(436,'U',[Shape.General, Properties.SPD])


	measure_portf(1533,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(444,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(2063,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1759,'U',[Shape.General, Properties.Random])


	measure_portf(1143,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1682,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1357,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1100,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1144,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(619,'U',[Shape.General, Properties.Random])


	measure_portf(1663,'L',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(619,'L',[Shape.General, Properties.SPD])


	measure_portf(318,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(823,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1330,'L',[Shape.General, Properties.Random])


	measure_portf(1801,'L',[Shape.General, Properties.SPD])


	measure_portf(1629,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(2167,'U',[Shape.General, Properties.SPD])


	measure_portf(1849,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1635,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1489,'L',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(802,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1287,'L',[Shape.General, Properties.SPD])


	measure_portf(1575,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(637,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1015,'L',[Shape.General, Properties.SPD])


	measure_portf(1636,'L',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1137,'U',[Shape.General, Properties.Random])


	measure_portf(99,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(70,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(287,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1864,'U',[Shape.General, Properties.SPD])


	measure_portf(832,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(1143,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(1780,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(2415,'U',[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_portf(960,'U',[Shape.UpperTriangular, Properties.Random])


	measure_portf(338,'L',[Shape.General, Properties.SPD])


	measure_portf(1732,'U',[Shape.Symmetric, Properties.Random(-5, 5)])


	measure_portf(1200,'L',[Shape.UpperTriangular, Properties.Random])


@printf "Completed 500/500
" 

end

main()
