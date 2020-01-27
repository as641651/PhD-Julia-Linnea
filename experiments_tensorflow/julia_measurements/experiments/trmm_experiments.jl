using LinearAlgebra.BLAS
using LinearAlgebra
using MatrixGenerator
using Printf

BLAS.set_num_threads(8)

f = open("/home/user/experiments_tensorflow/julia_measurements/measurements_data/trmm_out.txt","w")

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

	
	measure_trmm(734,94,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(62,1480,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1124,737,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1124,1043,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1430,1435,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1328,90,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1412,67,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1042,1243,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1091,1329,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(646,1122,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(469,1253,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(722,1459,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(465,725,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(387,909,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(601,717,'L','L','T','N',0.23057037653176105,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1217,609,'L','U','N','N',0.4837354766455061,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1461,65,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1053,328,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(591,476,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1380,1082,'L','U','T','N',0.7718001899902018,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1191,1473,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(440,412,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1490,191,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1203,70,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1365,1489,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(639,815,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1309,1315,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1444,433,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1460,659,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1296,901,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(95,1071,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(569,1264,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(442,1218,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(81,1367,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1293,1165,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1454,202,'L','U','N','N',0.08732466154935659,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(527,99,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1201,1186,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(95,1298,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(565,756,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(581,1410,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(845,1340,'L','L','N','N',0.08922510033219466,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(591,151,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(858,530,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(708,1344,'L','L','T','N',0.798699393931184,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(51,591,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1189,468,'L','L','N','N',0.9740810162924939,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1123,127,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(479,277,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(711,1487,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 50/500
" 

	measure_trmm(1297,182,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1378,1407,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1218,89,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(93,868,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(90,266,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(266,1247,'L','U','T','N',0.265002085180584,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1398,1429,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1051,783,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(446,1347,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1271,1098,'L','U','T','N',0.47282810610312176,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(348,455,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1011,1425,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(218,213,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(129,1206,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(550,815,'L','L','N','N',0.4758392330053244,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1424,69,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1450,1110,'L','U','N','N',0.5823404676729648,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1048,290,'L','L','T','N',0.5439415147615428,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1418,817,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1158,140,'L','U','N','N',0.8421487447456067,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1417,1233,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(956,621,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(871,1409,'L','U','T','N',0.38592977922384875,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(401,130,'L','U','N','N',0.31240181872378137,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(566,453,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1243,1385,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1487,978,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1495,55,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(68,877,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1296,778,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1247,1132,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1217,1166,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(823,1407,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1384,1492,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(990,1203,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(772,722,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1275,1378,'L','L','N','N',0.11232857818001363,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(758,775,'L','U','T','N',0.39688491242570767,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1086,1189,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(567,762,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1040,1070,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(807,1349,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1285,1241,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(55,1134,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1217,771,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(60,505,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(53,712,'L','U','T','N',0.7399276872818559,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(827,1028,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(561,951,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1354,93,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 100/500
" 

	measure_trmm(262,868,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1158,1069,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(898,1419,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(687,755,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(95,192,'L','U','N','N',0.5756510271491044,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(60,1208,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(675,81,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(971,418,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(921,1384,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(62,1345,'L','L','T','N',0.3819325685835647,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(64,1443,'L','U','N','N',0.3114387090862065,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1449,94,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1165,1493,'L','L','N','N',0.08171561807251959,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1154,1294,'L','U','N','N',0.8103485874095793,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(470,87,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(726,68,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(926,1489,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1407,1288,'L','U','T','N',0.15969832464079603,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(652,1245,'L','L','T','N',0.9481915100798766,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1124,1035,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1195,1400,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1232,84,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1334,953,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(607,560,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1492,1022,'L','U','N','N',0.700175828080743,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1001,64,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1364,58,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1469,470,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(62,641,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(878,678,'L','U','N','N',0.7691198938679134,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(102,1449,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(94,848,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1466,1443,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1241,155,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1226,64,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1039,1226,'L','L','T','N',0.37628482189881307,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(967,1391,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1462,1379,'L','U','N','N',0.10744565527740035,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(78,1119,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(179,1244,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(944,900,'L','L','N','N',0.9946070739303856,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1210,930,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1451,1452,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(725,284,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1468,932,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1340,1493,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1341,1201,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1237,556,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(876,1236,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1197,69,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 150/500
" 

	measure_trmm(315,1437,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1141,1326,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1421,51,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(904,163,'L','L','T','N',0.45701035510259336,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1295,221,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1394,927,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1201,1237,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1299,281,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(771,703,'L','L','N','N',0.2684202933159786,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1442,1257,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1344,1371,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1191,1455,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1329,1445,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(79,1012,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(366,1189,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1311,84,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1436,1460,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1458,866,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1475,130,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1217,1373,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1301,1428,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(817,1400,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1371,97,'L','U','T','N',0.8744324053270485,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1286,111,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1156,94,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1385,512,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(61,1034,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(761,227,'L','U','T','N',0.9624590789871132,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(53,1253,'L','L','N','N',0.18744536257711486,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(411,91,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1460,66,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1036,802,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1466,374,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1037,513,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1409,1278,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(790,1305,'L','L','T','N',0.3647530155921985,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1278,864,'L','U','T','N',0.6131578785458363,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(710,52,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1419,1208,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1370,67,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(77,1401,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1253,491,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(820,75,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1487,1404,'L','L','N','N',0.7759182513528031,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1457,618,'L','L','N','N',0.6355879480768587,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(86,887,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(235,94,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1278,1403,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1208,1090,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(86,549,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 200/500
" 

	measure_trmm(1091,1080,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(51,884,'L','L','N','N',0.8143883523205119,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(262,333,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(518,779,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1074,1021,'L','U','N','N',0.869359355769448,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1038,1328,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(57,842,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1486,511,'L','L','N','N',0.21853994320675585,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(796,950,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(75,1336,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1357,820,'L','L','N','N',0.8037489811722025,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1060,96,'L','L','T','N',0.5757707571167638,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(843,1131,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(245,81,'L','U','N','N',0.7255241389861931,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(492,1384,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(95,1473,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1384,1288,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(718,1357,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1058,87,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1282,1400,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(207,1488,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1311,596,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(201,1157,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(544,1343,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1260,1189,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(51,1455,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(853,207,'L','L','T','N',0.046011123853209934,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(84,1265,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(217,1415,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(54,1448,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(68,1402,'L','L','T','N',0.7305761684976986,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(73,900,'L','U','T','N',0.13531945072799345,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(56,1456,'L','L','N','N',0.9493198637853636,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1185,924,'L','L','N','N',0.7176548451011694,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(93,875,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(473,1111,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(204,1265,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(839,997,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(196,1196,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1277,1278,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(643,1224,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(903,78,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1096,549,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1440,721,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(66,52,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(574,678,'L','L','N','N',0.856603193460539,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(551,1213,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(247,1448,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1301,1103,'L','L','N','N',0.17970442186933555,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(895,55,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


@printf "Completed 250/500
" 

	measure_trmm(1336,1346,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1341,1365,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1305,78,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(662,1080,'L','U','T','N',0.5881884348520423,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1237,1339,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(898,1426,'L','U','T','N',0.6787420063333959,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1431,332,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(95,1294,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1384,1321,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1092,325,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(91,1388,'L','L','T','N',0.9674562472252737,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(594,1316,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(51,444,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1295,1440,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(524,1292,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1404,569,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1143,1448,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1212,1276,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(88,1272,'L','L','N','N',0.07554505751223262,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(686,93,'L','U','T','N',0.9013177472073761,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(256,1394,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1479,1383,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1253,1455,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1073,1495,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1085,73,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1446,1222,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(91,351,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1336,1123,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1336,723,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(445,1446,'L','U','T','N',0.019696071534899273,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(56,599,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1369,1182,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1021,342,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(736,72,'L','L','N','N',0.720993272679347,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1495,270,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1200,89,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1344,65,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1206,52,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(94,843,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1288,977,'L','U','T','N',0.5987043950628906,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1241,1252,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1257,1278,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(993,63,'L','U','N','N',0.4042747630894411,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(494,592,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1441,475,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(120,1147,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1170,966,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1342,1045,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(66,943,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(706,1038,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


@printf "Completed 300/500
" 

	measure_trmm(75,1388,'L','L','N','N',0.26280421475685134,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1357,59,'L','L','N','N',0.059712751183973345,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1020,892,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1385,791,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(69,1202,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(90,1246,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(929,88,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1425,1432,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1188,628,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1064,1446,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(889,694,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1465,1201,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(80,724,'L','U','N','N',0.27090906217721067,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1499,87,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1253,838,'L','L','T','N',0.5281776186108099,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(923,1468,'L','U','N','N',0.6005429373624764,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1278,1267,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(576,672,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(874,928,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(58,1116,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1222,1149,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(841,520,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(707,856,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(571,1254,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1011,624,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1432,162,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(69,1362,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(579,945,'L','L','N','N',0.530825126029484,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1069,1141,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(79,1378,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1425,737,'L','L','N','N',0.13905096065434508,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(63,1356,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1401,1381,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(852,228,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1482,960,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(991,56,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(780,1401,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(95,1275,'L','L','T','N',0.2905626300551022,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(54,1455,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(672,1277,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(71,1412,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1309,54,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1102,1447,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(738,1476,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1248,379,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(166,1266,'L','L','N','N',0.8772554438665826,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1128,1427,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(824,1176,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(610,1224,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1470,155,'L','U','N','N',0.9047525916252165,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 350/500
" 

	measure_trmm(206,1206,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1393,1076,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1384,161,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(864,71,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(729,634,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(779,90,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(462,1195,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(339,1231,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1463,1219,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1437,94,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(759,1190,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(786,827,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1081,1405,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1192,93,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(76,52,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(375,1203,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(607,1421,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(61,1404,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(794,1289,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(763,1198,'L','U','N','N',0.39869623427311085,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(355,64,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1350,1408,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1284,1332,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(52,1317,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1497,81,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1287,496,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1329,965,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(790,1021,'L','L','N','N',0.5621807495111848,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1076,1093,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1300,318,'L','U','T','N',0.7328037960837687,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1336,392,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1470,163,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1397,1275,'L','U','T','N',0.0010030899297955864,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(402,1404,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(826,1469,'L','U','N','N',0.006255759022158247,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1440,79,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(928,867,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1433,122,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1275,734,'L','U','N','N',0.7160359572156418,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(710,367,'L','L','T','N',0.6909652346511382,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1309,1048,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1267,1234,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1378,1300,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1459,1286,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1218,1288,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(958,1444,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1241,189,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(812,1425,'L','U','N','N',0.811841648455191,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1267,863,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(151,1000,'L','L','N','N',0.4404544476451957,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 400/500
" 

	measure_trmm(801,525,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1252,1290,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1301,103,'L','L','T','N',0.5619946654396424,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1268,1353,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(940,1495,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(502,898,'L','U','N','N',0.8674840376270075,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(963,1071,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1003,796,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(57,63,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(91,597,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1244,1180,'L','U','N','N',0.4680497582118588,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1362,865,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(938,115,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1290,750,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(71,808,'L','U','N','N',0.862292223543851,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1371,212,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(189,1158,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1347,156,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(79,1290,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1116,575,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1273,1413,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(292,1083,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(309,1381,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1337,544,'L','L','T','N',0.27445663359928163,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(125,1334,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(73,1271,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1231,88,'L','L','N','N',0.5134215063620303,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(726,710,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(71,974,'L','U','N','N',0.33979500159354037,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(50,941,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(838,987,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1451,62,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1260,1029,'L','U','N','N',0.004494737590343134,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1315,738,'L','L','T','N',0.9878069819677349,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1290,95,'L','L','T','N',0.753399847371697,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(698,1333,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1291,388,'L','L','N','N',0.14884690985318427,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1228,905,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(467,1388,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1434,188,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1145,1312,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1044,1078,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(870,958,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(113,1001,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1263,1037,'L','L','N','N',0.7438137628915784,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(290,347,'L','L','T','N',0.4317020396209045,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1380,806,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1027,70,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1448,56,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1120,1196,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 450/500
" 

	measure_trmm(1112,1468,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(1345,1410,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1313,1472,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(754,197,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(582,693,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1214,843,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1376,1078,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1031,1393,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(281,1346,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(730,1399,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(593,388,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(793,1396,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(878,107,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1484,82,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(268,1478,'L','L','N','N',0.2463222234301249,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(103,166,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(66,1449,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(83,762,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(666,188,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(1062,1460,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1328,1373,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1465,1435,'L','L','T','N',0.22841474173542875,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(839,901,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trmm(409,1155,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1031,1486,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(352,709,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(156,919,'L','L','N','N',0.7447408755403933,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(466,757,'L','L','N','N',0.5835487722055441,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(809,52,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(606,1203,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(353,837,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1062,1479,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1088,1131,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1454,1091,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1484,798,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(885,70,'L','L','T','N',0.750429244802255,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(65,1137,'L','U','N','N',0.39021970257577776,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trmm(1049,1346,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(466,75,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(284,53,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(789,123,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trmm(1036,998,'L','L','T','N',0.27038526863787404,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trmm(812,96,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


end

main()
