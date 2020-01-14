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

function measure_trmm(m,n,side,ul,tA,dA,alpha,property)
  A = generate([n,n],property)
  A = convert(Array{Float64,2},A)
  B = rand(n,m)
  trmm!(side, ul, tA, dA, alpha, A, B)
  A = nothing
  B = nothing

  A = generate([n,n],property)
  A = convert(Array{Float64,2},A)
  B = rand(n,m)
  start = time_ns()
  trmm!(side, ul, tA, dA, alpha, A, B)
  finish = time_ns()
  time = (finish-start)*1e-9
  A = nothing
  B = nothing

  write_times([m,n,side,ul,tA,dA,alpha,property,time])
  GC.gc()
end


function main()

	
	measure_trmm(443,1428,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1210,1301,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1405,1220,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(924,473,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(999,288,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(78,787,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1473,1209,'L','U','T','N',0.33035797871812056,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(818,1167,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1233,1402,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(273,1310,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(157,1437,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1202,88,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(687,832,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1382,116,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1462,889,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1288,1225,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(379,251,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1084,474,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(72,1291,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(890,146,'L','L','N','N',0.2752480339198483,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(896,90,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1216,50,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1267,107,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1323,1441,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1228,1094,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1366,185,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1449,969,'L','U','T','N',0.24159516983021956,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1445,73,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(80,1472,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(822,1394,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1460,696,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(74,1378,'L','U','N','N',0.04886578754233839,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(66,1043,'L','L','T','N',0.7235420314864004,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(52,1218,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1188,105,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1304,893,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(90,1277,'L','U','N','N',0.7784764386777523,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(260,1134,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(844,85,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(888,1125,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1388,1487,'L','L','T','N',0.33452902771391935,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(159,375,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(891,740,'L','U','N','N',0.705126702874457,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(961,329,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(757,1428,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(59,1433,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(724,721,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(834,205,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1383,1151,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(956,893,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 50/500
" 

	measure_trmm(1333,1456,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1382,1298,'L','U','T','N',0.3672244515214602,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1162,713,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(966,895,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(446,1455,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1399,849,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(405,1485,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1495,955,'L','L','N','N',0.5867611954991812,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(230,1214,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(265,451,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1081,669,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1010,1264,'L','L','T','N',0.9482283781150562,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1060,1413,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1080,990,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(965,1436,'L','L','N','N',0.0017859779945378351,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(664,1438,'L','L','N','N',0.6731454334230352,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(878,90,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(293,77,'L','U','T','N',0.8171704173049951,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1140,67,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(815,64,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1257,203,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1305,1495,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(694,1346,'L','L','N','N',0.4853863622405644,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1382,371,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(347,1188,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1016,1378,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(67,494,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(77,1241,'L','L','N','N',0.5674657867968267,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1331,1222,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1102,1308,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(783,1400,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(71,1121,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1294,1240,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(64,1105,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1363,456,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(88,1036,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1382,1325,'L','U','T','N',0.15055363510197217,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(649,1407,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1203,259,'L','U','N','N',0.37996096102423094,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(111,1333,'L','L','T','N',0.3049060611083899,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(92,1264,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1306,1315,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1409,1269,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1329,1252,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1351,1026,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1453,237,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1351,65,'L','U','N','N',0.3788856894864294,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1492,99,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1424,176,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(612,63,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 100/500
" 

	measure_trmm(880,299,'L','U','N','N',0.26735259944185663,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(416,1061,'L','U','N','N',0.15735841400725248,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1011,1436,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1384,80,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1417,78,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(712,852,'L','L','N','N',0.5798130372920498,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(84,551,'L','U','N','N',0.6442818130792827,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1043,1395,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(718,60,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1413,72,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(95,1433,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(851,1280,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1357,1494,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(413,99,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(77,295,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(554,595,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(540,1388,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1320,60,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(881,1499,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1317,142,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1080,782,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1431,1354,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(68,704,'L','L','N','N',0.17720196431943558,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(909,1290,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(405,1286,'L','U','T','N',0.12768757446898138,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1170,416,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1417,1093,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1450,770,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(698,1463,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1190,1325,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1287,1331,'L','L','N','N',0.5848725450413524,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(130,763,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(53,759,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(71,1285,'L','L','T','N',0.3209690532202968,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(800,751,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1014,1389,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1165,1473,'L','U','T','N',0.5072566333523422,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1217,621,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(326,152,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(322,291,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(462,1220,'L','L','T','N',0.32305006078940224,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1067,1442,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(603,1305,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1392,1276,'L','L','T','N',0.9813622397305385,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1226,1320,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(172,1028,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(77,569,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(161,1354,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1496,917,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1230,830,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


@printf "Completed 150/500
" 

	measure_trmm(1356,1425,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1481,502,'L','U','T','N',0.8242061943340334,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(88,1313,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1427,819,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(713,786,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(494,1438,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(63,1014,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(108,538,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1000,834,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1192,92,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1206,527,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(984,1290,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1361,79,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(65,1452,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(262,761,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(122,1294,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(587,92,'L','L','T','N',0.09746817445654932,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1211,1242,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1311,238,'L','L','T','N',0.11534124284392022,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1376,190,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(641,1330,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(766,239,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(400,137,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1491,1283,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(98,1303,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1193,879,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1335,99,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1119,1073,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1200,1132,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(931,1335,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(67,79,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(63,896,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(964,526,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1362,1248,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(863,891,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(281,492,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1234,80,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(469,1059,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1248,697,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(831,360,'L','U','T','N',0.7620470770175884,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1338,700,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1445,278,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1439,67,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1361,836,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(91,92,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1302,266,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(458,270,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1041,960,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(837,53,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1176,836,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


@printf "Completed 200/500
" 

	measure_trmm(938,54,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(703,88,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1357,549,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1359,804,'L','U','N','N',0.8294945049135569,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(50,976,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(336,1088,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(993,203,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(870,1309,'L','U','T','N',0.43319932044652476,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(128,697,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1047,1343,'L','U','N','N',0.9961782821638039,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(205,1111,'L','L','N','N',0.4093469886372624,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(320,799,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1328,892,'L','U','N','N',0.637796947141073,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(919,1013,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1370,1245,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1419,1447,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(973,1058,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(446,817,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1467,299,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(971,60,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1458,1314,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1476,1132,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(826,1205,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1495,1184,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(877,572,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(88,1206,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1217,1228,'L','U','N','N',0.36329294603434403,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(479,894,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1217,61,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1414,227,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(51,1255,'L','U','T','N',0.5423120263036744,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1021,1035,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(737,514,'L','L','N','N',0.8357082721983311,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(556,991,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(820,554,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1353,472,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(63,840,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(112,1427,'L','L','N','N',0.042781011622951004,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(70,1279,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1289,90,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(622,1497,'L','L','N','N',0.20787829825634785,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1298,320,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1207,1258,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1331,1216,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1188,1437,'L','U','T','N',0.0039762375806742245,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(156,831,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(844,1102,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(575,444,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1152,1237,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1063,285,'L','U','N','N',0.8468739126227072,[Shape.UpperTriangular, Properties.Constant(3.0)])


@printf "Completed 250/500
" 

	measure_trmm(393,1480,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(789,1241,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1311,1474,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1257,429,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(144,896,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(186,972,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(220,860,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1281,844,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(164,304,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1261,925,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(350,752,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1475,1308,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1344,51,'L','L','N','N',0.7875810691560834,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1077,1493,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1405,881,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1430,742,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(67,1275,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1439,1486,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(92,523,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(62,1347,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1057,160,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1110,781,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1403,392,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1273,883,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1373,811,'L','L','N','N',0.14244916461613144,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(407,1075,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(566,768,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1334,1098,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(480,1318,'L','U','N','N',0.6037828250199891,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1268,1127,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1181,912,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(72,991,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1318,1172,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1456,65,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1279,138,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(811,1387,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1250,67,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(936,1103,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1315,980,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(185,809,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1147,50,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1393,967,'L','L','N','N',0.15484940532358538,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1271,967,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(498,1139,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(942,1243,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(820,1240,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1316,97,'L','U','N','N',0.42043228326416526,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(240,1458,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(73,1367,'L','L','T','N',0.8935795813666886,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(66,1294,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


@printf "Completed 300/500
" 

	measure_trmm(297,1499,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(91,1105,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(87,1306,'L','L','N','N',0.4374304239196576,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1340,1294,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1413,82,'L','U','T','N',0.20318325616133204,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1263,1046,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(66,72,'L','U','T','N',0.260363251113791,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(156,79,'L','U','T','N',0.659426370830917,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1185,265,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1330,1074,'L','U','N','N',0.8215204453429354,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(782,1133,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(98,1466,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1195,51,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1257,81,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(204,724,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(185,461,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1201,1242,'L','L','N','N',0.39827350646713366,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1476,72,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(885,153,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(957,242,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(787,1414,'L','U','T','N',0.620690733266124,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(449,1171,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1408,1360,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1466,1404,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(54,421,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1114,1454,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1496,1332,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(842,1243,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(701,965,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(713,1028,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(333,1267,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(924,903,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1246,69,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(629,1483,'L','L','T','N',0.7682830617411283,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1492,1477,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1443,74,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1245,794,'L','L','N','N',0.9633522714259045,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(757,345,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(69,774,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1287,368,'L','L','N','N',0.2250597536851514,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1360,846,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(99,1250,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(64,1245,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1270,1039,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(677,193,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1140,80,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1320,54,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(51,1390,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1382,794,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1358,63,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


@printf "Completed 350/500
" 

	measure_trmm(755,67,'L','L','N','N',0.4570509079631768,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1304,1002,'L','L','T','N',0.1709002279477705,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(321,1235,'L','L','T','N',0.8626217673861373,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(77,728,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(429,1353,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1453,1227,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(768,786,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1441,73,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(986,1385,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(96,908,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1297,1156,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1498,901,'L','U','N','N',0.919627927460976,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(52,1214,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1238,80,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1243,566,'L','L','N','N',0.35055824563603033,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(733,308,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(343,169,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1221,1250,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(93,1386,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(400,1301,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(747,724,'L','L','N','N',0.4323854810790927,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(732,1468,'L','L','N','N',0.872449482635784,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(90,1352,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1488,1250,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(790,986,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(618,94,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1053,836,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1089,1323,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(714,1439,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(929,208,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1333,1488,'L','U','N','N',0.921762548984976,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(51,539,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1341,575,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(131,941,'L','L','T','N',0.4624528690518126,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1077,60,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(55,954,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1476,1326,'L','L','T','N',0.6680479428525624,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(91,630,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1405,1068,'L','U','T','N',0.0061176751458011935,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1407,127,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(851,61,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1468,1424,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(950,55,'L','L','N','N',0.921427795028352,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1212,1025,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(733,1395,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(51,1368,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1307,90,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1351,1354,'L','U','T','N',0.08722388585516783,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(426,52,'L','U','T','N',0.7100517538257981,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(77,868,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 400/500
" 

	measure_trmm(1026,1268,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(770,953,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(777,1110,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(87,1234,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(677,222,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1392,208,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1246,1099,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1240,1229,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1229,1259,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(701,1144,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(888,1342,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(978,1444,'L','U','T','N',0.8444455145813777,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1261,841,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(750,60,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(595,60,'L','L','N','N',0.8427121837386198,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(408,1281,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1274,748,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(984,93,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(893,144,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1281,83,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(889,1067,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(902,1371,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(878,1233,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1082,512,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1098,69,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1355,145,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1332,853,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(580,1488,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1252,1487,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(903,884,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(689,1155,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1423,1337,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1317,1472,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(792,1462,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(94,460,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(900,1261,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1342,128,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(71,198,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1077,1083,'L','U','T','N',0.045069723259277494,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(641,1326,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1221,1462,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(144,1360,'L','L','N','N',0.422923407475431,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1140,1461,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(474,750,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(469,214,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(845,973,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(79,760,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(878,1184,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(743,1462,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(106,1490,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 450/500
" 

	measure_trmm(1364,776,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1274,86,'L','U','T','N',0.7487471091276777,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1235,422,'L','U','T','N',0.40349126091483145,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(287,1438,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(58,1038,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(675,1225,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1165,74,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1014,250,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(212,860,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(875,1498,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(93,787,'L','L','T','N',0.2984056438640731,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1279,1280,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1428,1296,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1247,601,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(78,1262,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1460,817,'L','L','T','N',0.11872245403564385,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1336,56,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1059,1480,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(653,53,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(797,708,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1396,1384,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1496,1498,'L','L','T','N',0.8614427501579217,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1485,1132,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(784,97,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1489,671,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(304,1293,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1436,1447,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(845,1419,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1236,681,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1184,573,'L','L','T','N',0.9302121606304296,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(769,567,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1043,1419,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1418,1380,'L','L','T','N',0.7850941840309057,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1053,1356,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(50,1167,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(87,1044,'L','U','N','N',0.7772026042242275,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(83,1467,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(551,86,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1221,720,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1497,1363,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1472,277,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(413,1301,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(244,1004,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


end

main()
