using LinearAlgebra.BLAS
using LinearAlgebra
using MatrixGenerator
using Printf

BLAS.set_num_threads(8)

f = open("/home/user/experiments_tensorflow/julia_measurements/measurements_data/trsm_out.txt","w")

function write_times(args)
  s = ""
  for k in args
    s = s*string(k)*"\t"
  end
  s = s*"\n"
  write(f,s)
end

function measure_trsm(m,n,side,ul,tA,dA,alpha,property)
  A = generate([n,n],property)
  A = convert(Array{Float64,2},A)
  B = rand(n,m)
  trsm!(side, ul, tA, dA, alpha, A, B)
  A = nothing
  B = nothing

  A = generate([n,n],property)
  A = convert(Array{Float64,2},A)
  B = rand(n,m)
  start = time_ns()
  trsm!(side, ul, tA, dA, alpha, A, B)
  finish = time_ns()
  time = (finish-start)*1e-9
  A = nothing
  B = nothing

  write_times([m,n,side,ul,tA,dA,alpha,property,time])
  GC.gc()
end


function main()

	
	measure_trsm(1036,72,'L','L','N','N',0.0006056264219310714,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1264,954,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1354,1276,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(794,431,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(790,1480,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(410,932,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(850,253,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1193,67,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1156,63,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1289,1480,'L','U','N','N',0.1372246215489089,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1204,236,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(355,1310,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1228,1288,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(215,996,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(574,1230,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1201,1045,'L','L','N','N',0.6228599481746598,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(53,1358,'L','U','N','N',0.3961009162959708,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(832,853,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1261,761,'L','L','N','N',0.571404693998719,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(576,1479,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1207,1203,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(78,1314,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1414,1005,'L','U','N','N',0.5864127195258445,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1110,1190,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1296,1363,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1042,888,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1495,1476,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1005,50,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1265,1439,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1326,1469,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(87,1347,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(750,1301,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1351,1279,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(459,1102,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1386,66,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(180,1125,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(79,1491,'L','U','N','N',0.9777912089304839,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(697,1417,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1339,197,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(58,217,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(999,1217,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1369,315,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(713,1189,'L','L','N','N',0.9424584319492018,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1343,168,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(86,1305,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(516,925,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1405,626,'L','U','N','N',0.018664760603612107,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(490,1299,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1496,1166,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1346,59,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 50/500
" 

	measure_trsm(1289,1395,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1361,402,'L','L','N','N',0.8206652500284473,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1479,1187,'L','U','N','N',0.22437952036467868,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(100,679,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1341,503,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(919,148,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1437,1319,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(51,887,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1243,88,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1111,1308,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1059,962,'L','U','N','N',0.4239059064669165,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1126,1317,'L','U','T','N',0.15819151476749338,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(969,183,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(54,1264,'L','L','T','N',0.03756378405650562,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1450,219,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(867,384,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1476,734,'L','L','T','N',0.11635109155468315,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1225,715,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1367,1349,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(197,505,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1049,1252,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1379,65,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(993,85,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(890,72,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1094,860,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(231,1281,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(795,407,'L','U','N','N',0.588906695881776,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1239,69,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1337,523,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(886,1456,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(285,1008,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1288,1137,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(72,1289,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(82,1307,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1380,642,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1013,556,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(282,453,'L','U','T','N',0.04648431863551117,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(279,178,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1321,1377,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(765,1385,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(154,809,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1259,135,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(60,1245,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1099,1491,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1471,74,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(348,1334,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1008,1151,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(953,1350,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1471,1274,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(58,665,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


@printf "Completed 100/500
" 

	measure_trsm(1010,422,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(74,126,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(80,1336,'L','L','T','N',0.7217375797445503,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1413,899,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(654,1338,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1335,1373,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1397,742,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1214,51,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(315,966,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1130,1020,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1114,522,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1453,123,'L','U','N','N',0.59786624933594,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(763,1392,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1293,1412,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(68,1120,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(839,1392,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1201,188,'L','U','N','N',0.8698269532140234,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(71,1313,'L','U','N','N',0.3363876678268347,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(93,633,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(959,592,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(697,67,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(99,1460,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(925,94,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1011,1445,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(951,942,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(839,1444,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1336,777,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1096,157,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(84,1141,'L','U','T','N',0.0780911661212591,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(561,727,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1299,85,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(842,1290,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(90,95,'L','U','N','N',0.18441369534136365,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(397,223,'L','U','T','N',0.2540945224709781,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(877,1252,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(70,429,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(942,1233,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(854,333,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(59,1396,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1459,939,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(937,1182,'L','L','T','N',0.289377446687366,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1291,54,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(766,52,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1009,1248,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1475,1448,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1495,1386,'L','L','T','N',0.918638563994078,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(85,956,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1327,789,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1447,408,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1312,916,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


@printf "Completed 150/500
" 

	measure_trsm(1230,1134,'L','U','N','N',0.5216838213484553,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1446,1082,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1307,92,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1285,805,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1233,90,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1291,1148,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1432,90,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(775,1256,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(505,1345,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(61,1457,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1211,1268,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(57,1468,'L','U','N','N',0.6919021239308715,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1354,867,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(280,1305,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1371,1427,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(942,1438,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1171,430,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(59,1395,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(430,1460,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1460,184,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(91,742,'L','L','N','N',0.6695929660728576,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(571,1436,'L','L','N','N',0.10519633719931365,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1207,1297,'L','U','T','N',0.09630912319551332,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(58,868,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1385,748,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(638,1208,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(85,373,'L','U','N','N',0.2696877773466545,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(690,565,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(144,1005,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1007,597,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1153,299,'L','L','T','N',0.5179695883655471,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1393,1415,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(996,78,'L','L','N','N',0.9240702225471239,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(600,1226,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(65,1149,'L','U','T','N',0.0065198518237596925,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(468,648,'L','U','T','N',0.8093262784061289,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(706,888,'L','L','N','N',0.3594364273122549,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(490,707,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(912,1233,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(146,332,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(74,1275,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(118,95,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1362,88,'L','U','T','N',0.647564972565111,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1342,193,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1275,1399,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1397,1308,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(820,206,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1491,1294,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1204,328,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(824,1411,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


@printf "Completed 200/500
" 

	measure_trsm(1461,945,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1281,1168,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1389,1200,'L','U','N','N',0.3810093728447249,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1224,1354,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(55,81,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(61,1380,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(88,1188,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1209,1331,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(626,1203,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(904,1382,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(138,300,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1313,1371,'L','L','T','N',0.9346876515002509,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1144,795,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1499,121,'L','L','N','N',0.4207537164038033,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1396,927,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(77,814,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1415,1381,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1288,205,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(50,872,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(321,212,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1132,841,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(861,925,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1477,1404,'L','L','N','N',0.9484009524840973,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(534,1029,'L','U','N','N',0.1787648994493598,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1191,1185,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(704,592,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(82,1223,'L','U','T','N',0.773909470849376,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1314,59,'L','U','N','N',0.6361913616971867,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1266,1440,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(146,55,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1428,91,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(723,1159,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(85,57,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(908,89,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1425,1275,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1373,1396,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(449,1273,'L','U','N','N',0.9373998207644334,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(926,72,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1270,126,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(875,862,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(94,558,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(81,1115,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(813,1345,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1124,572,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(719,68,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1307,898,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1390,1320,'L','L','N','N',0.7175099123613775,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(190,798,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(272,50,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(703,1294,'L','L','T','N',0.8241429156935317,[Shape.LowerTriangular, Properties.Random(-5, 5)])


@printf "Completed 250/500
" 

	measure_trsm(1375,933,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(786,1371,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(784,94,'L','L','T','N',0.16676776999406973,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1338,1281,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1447,928,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(289,1328,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1477,1001,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1249,619,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1460,1189,'L','U','N','N',0.27109128530738624,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(731,224,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(501,79,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1341,1281,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1186,1471,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1284,1068,'L','U','T','N',0.499020134865356,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(712,386,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(587,1399,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(72,1292,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(62,481,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(72,1086,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(832,1447,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1207,725,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1499,1081,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(79,608,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1313,80,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(709,629,'L','L','T','N',0.44642188630073576,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1058,1175,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(65,751,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(214,1327,'L','L','T','N',0.9553194828067791,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1231,804,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1294,1449,'L','U','N','N',0.5361829785674882,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(602,160,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1329,78,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1026,1099,'L','L','T','N',0.3323174843995643,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1073,1012,'L','U','T','N',0.29293709772460363,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1068,1204,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(944,1411,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(888,1087,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(176,1264,'L','L','N','N',0.13450662841710226,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(145,316,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(783,326,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(894,881,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(839,81,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1378,1269,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1360,367,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1336,1184,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(445,817,'L','L','N','N',0.6134415467707878,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1306,962,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1383,1428,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1224,61,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(867,1497,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


@printf "Completed 300/500
" 

	measure_trsm(58,1455,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(316,1308,'L','L','T','N',0.8680650976920297,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(870,542,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(671,577,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(83,1257,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(926,1341,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1313,478,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1057,775,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(52,1360,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1167,942,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1106,1399,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1347,1191,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(99,1249,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1402,69,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(64,1197,'L','U','N','N',0.5724333121457295,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1495,71,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(779,1207,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1315,1349,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(94,1055,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1214,1363,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(353,1363,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1272,1331,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(459,1392,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(415,864,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(825,586,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1299,231,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(555,1434,'L','L','N','N',0.5564848799378953,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(984,391,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1288,342,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(570,168,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1426,367,'L','L','T','N',0.14701335449121422,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(52,1187,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(65,1414,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(770,1339,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1028,589,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1436,82,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1022,51,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1252,1213,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(75,719,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1464,72,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1277,587,'L','U','N','N',0.5625067909398147,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1067,792,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(719,1446,'L','U','N','N',0.05325500105245129,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(361,65,'L','U','T','N',0.14471744071057002,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1196,1112,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(231,974,'L','L','N','N',0.5684779534741067,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(63,1443,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(767,1135,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1473,272,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1387,94,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


@printf "Completed 350/500
" 

	measure_trsm(1150,766,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1111,1291,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1113,78,'L','L','T','N',0.7777993400583814,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1185,82,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(559,54,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1334,1353,'L','L','N','N',0.464598119887204,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1213,54,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(338,1044,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(423,1147,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1317,1074,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1453,1085,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(695,1444,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1174,228,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1223,1079,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1265,52,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1418,493,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1242,995,'L','L','T','N',0.4023847592326687,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1394,1469,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(167,1270,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(993,98,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1449,532,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(91,837,'L','U','N','N',0.2349017346194605,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1035,1122,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1302,124,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(351,777,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(56,887,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1071,1235,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(791,711,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1130,1319,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(52,1421,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1128,764,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(158,1483,'L','L','N','N',0.9610618935097507,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1426,1422,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1431,959,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1236,1305,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(791,476,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1476,1397,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1358,288,'L','L','T','N',0.7241743998645962,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1010,295,'L','L','N','N',0.6841837561252176,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(810,936,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(218,1441,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1493,955,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(763,1313,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1454,122,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(719,905,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(791,838,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1276,1491,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(291,1216,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(806,66,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(818,802,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 400/500
" 

	measure_trsm(1260,390,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(654,711,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(71,1243,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1203,1464,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(933,892,'L','L','N','N',0.7475356370552362,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(839,423,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1491,1110,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(90,1321,'L','L','T','N',0.9744129940812976,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(596,449,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1440,75,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(900,1339,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1323,838,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(677,1062,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(92,1237,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(717,1014,'L','L','N','N',0.2766929053504339,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1406,85,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(914,743,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(547,1354,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1015,1335,'L','U','T','N',0.8565169920633796,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1222,82,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(179,1485,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1290,197,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(745,1439,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1186,807,'L','L','T','N',0.11197982426209308,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1437,1335,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(867,1394,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1490,1282,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(95,1109,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(189,1335,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(806,975,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1274,173,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(436,1442,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1288,726,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(857,1486,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(87,953,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(495,368,'L','U','N','N',0.8828587290932363,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(927,1415,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1380,1420,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(828,67,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(51,912,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1389,985,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(296,1228,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1385,580,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(394,1189,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1224,1380,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(287,1232,'L','U','T','N',0.25620425061746854,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1365,1149,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(271,896,'L','L','N','N',0.4887695281823037,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1341,262,'L','U','N','N',0.04120225563948132,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1330,1089,'L','U','T','N',0.824052904411553,[Shape.UpperTriangular, Properties.Constant(3.0)])


@printf "Completed 450/500
" 

	measure_trsm(1210,593,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1057,1373,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1362,892,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(524,1402,'L','L','T','N',0.27937670971798145,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1304,82,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1412,56,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(865,1425,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(493,98,'L','L','T','N',0.606730250171748,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(853,1320,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(93,1372,'L','U','T','N',0.09228395014216284,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(326,872,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(60,764,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(216,930,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(987,97,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(162,873,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1044,51,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(597,725,'L','L','N','N',0.2895658428600748,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1464,1030,'L','U','N','N',0.5913791210468184,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1039,1265,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1479,1327,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1236,59,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1098,1170,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(666,1209,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1309,1292,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1269,1233,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(352,814,'L','U','T','N',0.3702588123110625,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(92,1441,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(237,397,'L','U','T','N',0.07360331538882581,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1016,1269,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(94,296,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(249,389,'L','L','N','N',0.4397630265998157,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(865,64,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(425,93,'L','U','T','N',0.6807682400425867,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1223,1311,'L','L','T','N',0.7622284612931697,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(558,985,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1300,1478,'L','U','N','N',0.31159044256002755,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(188,1331,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(589,1335,'L','L','N','N',0.1361074181072086,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(903,904,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1265,68,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(552,50,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(133,1018,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1248,862,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


end

main()
