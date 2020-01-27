using LinearAlgebra.BLAS
using LinearAlgebra
using MatrixGenerator
using Printf

BLAS.set_num_threads(8)

f = open("/home/user/experiments_tensorflow/julia_measurements/measurements_data/symm_out.txt","w")

function write_times(args)
  s = ""
  for k in args
    s = s*string(k)*"\t"
  end
  s = s*"\n"
  write(f,s)
end

function measure_symm(m,n,side,ul,alpha,beta,propertyB)
  property = [Shape.Symmetric,Properties.Random]
  A = generate([n,n],property)
  A = convert(Array{Float64,2},A)
  B = generate([n,m],propertyB)
  B = convert(Array{Float64,2},B)
  symm!(side, ul, alpha, A, B,beta,B)
  A = nothing
  B = nothing

  A = generate([n,n],property)
  A = convert(Array{Float64,2},A)
  B = generate([n,m],propertyB)
  B = convert(Array{Float64,2},B)
  start = time_ns()
  symm!(side, ul, alpha, A, B,beta,B)
  finish = time_ns()
  time = (finish-start)*1e-9
  A = nothing
  B = nothing

  write_times([m,n,side,ul,alpha,beta,propertyB,time])
  GC.gc()
end


function main()

	
	measure_symm(1082,83,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(775,51,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(796,1324,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1433,986,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(756,99,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(806,809,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(156,1160,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1272,897,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(303,820,'L','U',0.2577082371446163,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(337,1251,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1217,1426,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1165,166,'L','L',0.15074796344041963,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1445,815,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(470,1363,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(78,759,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(639,734,'L','L',0.41325632199435813,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(764,912,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(52,83,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1477,1388,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1405,117,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1270,506,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1398,194,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(99,1405,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1233,1098,'L','L',0.10422766193361244,0.0,[Shape.General, Properties.Random])


	measure_symm(78,1224,'L','U',0.3652172590909911,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(51,426,'L','L',0.018018582114783244,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(299,1150,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1299,423,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1345,344,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1271,196,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1080,928,'L','U',0.671480780038531,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1468,200,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1186,1113,'L','U',0.8248645333123547,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(307,567,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(82,1245,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(199,248,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1253,52,'L','L',0.5067552806167231,0.0,[Shape.General, Properties.Random])


	measure_symm(1292,1405,'L','U',0.6424424397449533,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(90,1185,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(705,1352,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1484,1255,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(865,79,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1176,998,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1483,77,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1102,90,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1437,934,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(900,523,'L','U',0.8930536514842728,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1246,86,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1409,1226,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1353,1340,'L','L',0.1447057004184773,0.0,[Shape.General, Properties.Random])


@printf "Completed 50/500
" 

	measure_symm(401,1250,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1054,521,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(52,584,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1435,1433,'L','U',0.6045068112616633,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1210,315,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1458,90,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1166,1275,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(708,1361,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1162,1125,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(348,1389,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1169,1145,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(798,1275,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1417,348,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1341,593,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(605,1421,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(806,462,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(951,1237,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(63,1481,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1416,192,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(217,1405,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(637,1458,'L','L',0.9176265033319745,0.0,[Shape.General, Properties.Random])


	measure_symm(69,70,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1016,316,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1289,922,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1212,1474,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(84,1208,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1423,118,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(917,1259,'L','L',0.0616442615757935,0.0,[Shape.General, Properties.Random])


	measure_symm(1179,351,'L','U',0.6825731573635118,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1359,51,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(80,529,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(65,1366,'L','L',0.8352831846285081,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(76,1219,'L','L',0.973746507885759,0.0,[Shape.General, Properties.Random])


	measure_symm(221,1448,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(862,97,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(53,1354,'L','L',0.20116705735284823,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(63,1352,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1078,1097,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1346,1069,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1330,1432,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(765,1091,'L','U',0.8213225274173394,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1400,71,'L','L',0.43425528862834406,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1469,195,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(603,229,'L','L',0.5009071663897006,0.0,[Shape.General, Properties.Random])


	measure_symm(1339,396,'L','U',0.861649908705919,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1379,1339,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1391,707,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1413,84,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1300,1409,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(340,1411,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 100/500
" 

	measure_symm(1208,839,'L','U',0.40145023371695576,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(985,1389,'L','L',0.17661750582808322,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1340,869,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(88,1183,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1441,63,'L','U',0.28259276028526137,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1280,1291,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(799,1393,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1043,1190,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(971,81,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1282,1168,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(390,765,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1206,1403,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1200,1263,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(190,1489,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1221,1269,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(475,165,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(94,893,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(65,859,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1214,1042,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(66,881,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1469,1102,'L','L',0.394939051002833,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1453,392,'L','U',0.6451442455985975,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(89,954,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(848,251,'L','U',0.5503714607979733,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(268,148,'L','U',0.9525697448261028,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(51,1341,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1478,748,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(763,1436,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1247,72,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1066,1255,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(64,1260,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(66,1357,'L','L',0.323647029046612,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(476,1440,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(146,1440,'L','U',0.9544841919520566,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1235,247,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1437,931,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(326,1040,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(215,1125,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1264,513,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(74,665,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1471,1146,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(82,1426,'L','L',0.47184606118127825,0.0,[Shape.General, Properties.Random])


	measure_symm(608,594,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1129,61,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(920,906,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1187,96,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(855,1441,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(72,1175,'L','L',0.0825736914604458,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1497,1467,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(986,1444,'L','L',1.0,0.0,[Shape.General, Properties.Random])


@printf "Completed 150/500
" 

	measure_symm(1285,869,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1486,384,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1474,1327,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1289,86,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1246,78,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(723,367,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1402,1228,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(94,1472,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(992,1218,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(249,834,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1294,70,'L','U',0.9282993896786836,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(618,330,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1453,1491,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(504,585,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1217,68,'L','L',0.11078722641305216,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(97,1239,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1132,1255,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(507,335,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1387,913,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(51,732,'L','U',0.48697767731390007,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(169,1245,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1483,1469,'L','L',0.00611572435344121,0.0,[Shape.General, Properties.Random])


	measure_symm(1218,90,'L','U',0.30161605555725,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(638,864,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(839,1307,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1301,428,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(228,64,'L','U',0.8779296039535393,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(930,1282,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(69,1195,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1432,453,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1288,75,'L','L',0.12792899499637678,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1146,1183,'L','L',0.15876189654773265,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(521,1213,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1417,1021,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(748,814,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(785,193,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1454,1232,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(196,1328,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1360,1222,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1457,1130,'L','L',0.7669253816650927,0.0,[Shape.General, Properties.Random])


	measure_symm(313,903,'L','U',0.6211491789924893,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1402,801,'L','L',0.1449386294185605,0.0,[Shape.General, Properties.Random])


	measure_symm(1038,842,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1006,1275,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(328,948,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1027,64,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(762,297,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1165,1088,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1064,792,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1002,376,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 200/500
" 

	measure_symm(1199,243,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(880,1436,'L','L',0.48841067058313137,0.0,[Shape.General, Properties.Random])


	measure_symm(777,376,'L','L',0.007092542273454461,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(547,788,'L','L',0.8471889037938793,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1358,246,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(546,496,'L','L',0.9297504315316496,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(138,1393,'L','L',0.28809612028025644,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(437,1375,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(735,81,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1343,368,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(845,802,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1412,1276,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(346,1013,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(248,762,'L','U',0.2433758374949374,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(818,451,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1480,1314,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1279,72,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(341,92,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(250,1293,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(96,1441,'L','L',0.15928193572653238,0.0,[Shape.General, Properties.Random])


	measure_symm(818,549,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1115,386,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(164,673,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1413,704,'L','L',0.5013994007505045,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(688,1211,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(796,847,'L','L',0.8558268090914863,0.0,[Shape.General, Properties.Random])


	measure_symm(310,1285,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(71,301,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1268,1488,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1191,1410,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(711,238,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(448,1133,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1134,1280,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(933,1341,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(891,784,'L','L',0.8691865709614227,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1056,502,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1318,684,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1382,79,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(73,1389,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(862,1320,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1389,715,'L','L',0.8646661465453189,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(379,1110,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(986,92,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(237,771,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(713,969,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1242,74,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1413,745,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(716,1161,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1332,990,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(837,873,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 250/500
" 

	measure_symm(1320,72,'L','L',0.2328355156672286,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(269,734,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1462,964,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1295,1051,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1470,64,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1254,1498,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1238,1324,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1311,395,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(78,1078,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(202,1392,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1229,821,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(609,50,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(630,1253,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(374,1119,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(82,821,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(670,80,'L','L',0.428431008245549,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1358,79,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1381,1261,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1203,1024,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1213,81,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(74,1446,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(892,1286,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1353,90,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1096,1161,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1455,550,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(928,1351,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(68,1441,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(842,1484,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1417,1412,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1022,1368,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(905,461,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1038,1170,'L','L',0.08678675487916254,0.0,[Shape.General, Properties.Random])


	measure_symm(96,1417,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1403,1418,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1480,514,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1472,1448,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(82,118,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(234,1000,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(704,1281,'L','L',0.6349382968334789,0.0,[Shape.General, Properties.Random])


	measure_symm(1159,1376,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(245,836,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1018,1285,'L','L',0.47901115599091615,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(773,53,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(892,1131,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(863,1446,'L','U',0.013204741490992156,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(469,915,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(53,770,'L','L',0.9806305166144037,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(897,1382,'L','U',0.2258382395740981,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1105,1431,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1250,406,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 300/500
" 

	measure_symm(232,1354,'L','U',0.06825774785778216,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1179,632,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1303,799,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1219,251,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1324,1084,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(61,968,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(998,862,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(91,775,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(716,1460,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(76,1132,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(63,1090,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1215,762,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1496,1259,'L','U',0.9597344165628143,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(60,1113,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1242,756,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(708,564,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(721,170,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(50,1080,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(363,546,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(94,1415,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(572,1256,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1363,1077,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1163,1123,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1400,1401,'L','L',0.9924290087368791,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(968,54,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1397,708,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1093,1422,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(714,1145,'L','L',0.09156275574263995,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(61,386,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1181,1485,'L','L',0.9614886033489584,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(54,599,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1449,97,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(938,63,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1349,1283,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(258,762,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(918,1483,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1345,1454,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1344,1228,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1375,716,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1312,796,'L','L',0.4438091097139435,0.0,[Shape.General, Properties.Random])


	measure_symm(1133,97,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1151,1264,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(943,739,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(978,934,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1057,1319,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(575,1270,'L','L',0.5539580807912861,0.0,[Shape.General, Properties.Random])


	measure_symm(340,350,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(820,1005,'L','U',0.9516013255693994,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(207,1231,'L','U',0.2637365681722682,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(371,151,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 350/500
" 

	measure_symm(1058,86,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(97,536,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(61,1271,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1250,1475,'L','L',0.09637046195570564,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1143,1023,'L','U',0.6131808112056165,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1357,757,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(315,1241,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1222,826,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(960,685,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1303,547,'L','U',0.43871844949691274,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1267,1351,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(467,953,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(570,1492,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(64,1203,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1248,665,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(71,1467,'L','L',0.42514361167459325,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(68,1498,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(840,93,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1474,1052,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1427,1369,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1431,81,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(553,66,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1207,1273,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(972,1406,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1303,1392,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(101,1224,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1383,600,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(86,1238,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1357,1238,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1144,469,'L','L',0.03708969644988169,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1489,1322,'L','U',0.9837481710745339,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(547,1374,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1406,1442,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1383,1371,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(932,1107,'L','U',0.12886904288305878,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1314,770,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1215,97,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1459,949,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(52,62,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1445,1273,'L','U',0.7449367966462253,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(957,1437,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(150,51,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1351,75,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(277,1195,'L','L',0.754386099838938,0.0,[Shape.General, Properties.Random])


	measure_symm(422,645,'L','U',0.8914797186965356,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1339,192,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(291,1287,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1301,620,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1228,346,'L','L',0.8369374802489571,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(907,1323,'L','L',1.0,0.0,[Shape.General, Properties.Random])


@printf "Completed 400/500
" 

	measure_symm(674,1391,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(207,85,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1498,1348,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(151,98,'L','L',0.5707784063179615,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1441,453,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1307,914,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1389,873,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1095,70,'L','U',0.5495703754800336,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1439,1280,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1304,1497,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(387,327,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(218,1201,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(425,1415,'L','L',0.6985743309302035,0.0,[Shape.General, Properties.Random])


	measure_symm(90,1066,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1445,1167,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1280,769,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(803,381,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1379,1271,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(948,81,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(99,1066,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1403,243,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1351,1272,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1315,272,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(242,62,'L','L',0.05662351523104048,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(265,1486,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(927,983,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1423,490,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1456,79,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1497,721,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1158,868,'L','L',0.2807308248891006,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1005,157,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1433,83,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1299,611,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(757,1260,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(93,1426,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(714,222,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1105,1225,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(78,1353,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1216,1498,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(211,1133,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1402,77,'L','L',0.8487526807444721,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1055,1147,'L','U',0.5974943217713449,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(512,683,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(878,1262,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(581,77,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(618,1016,'L','U',0.6131515871543137,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(884,64,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(57,912,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1256,848,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(938,1482,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 450/500
" 

	measure_symm(1299,1486,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(662,1401,'L','L',0.9775510702917473,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(336,1441,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1417,90,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(97,1410,'L','L',0.7346429755594768,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1061,1391,'L','L',0.2571821152595315,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(958,664,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(912,1284,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1212,1167,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1185,1372,'L','L',0.012100494651740457,0.0,[Shape.General, Properties.Random])


	measure_symm(959,84,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1432,1219,'L','U',0.43581177724276543,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1063,1030,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1145,1461,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1111,1445,'L','L',0.6902350077201452,0.0,[Shape.General, Properties.Random])


	measure_symm(189,1000,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(212,948,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(74,486,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1381,1269,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(99,1298,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(555,1336,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1344,56,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1113,622,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(90,1292,'L','L',0.2496678666889215,0.0,[Shape.General, Properties.Random])


	measure_symm(1289,1160,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1342,1055,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(349,301,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(950,1087,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(525,1381,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1384,1394,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(66,1390,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1282,1376,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(99,804,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1079,744,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1257,1384,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1359,1272,'L','L',0.5798255560816887,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(284,771,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1006,955,'L','L',0.012454966143768398,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(713,845,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(764,51,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1169,404,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1013,1159,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1312,1391,'L','L',1.0,0.0,[Shape.General, Properties.Random])


end

main()
