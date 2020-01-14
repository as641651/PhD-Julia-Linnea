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

	
	measure_trsm(1265,1309,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1460,70,'L','U','T','N',0.943547402957239,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1150,1279,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1141,1421,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1492,70,'L','L','N','N',0.37577340263409487,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1414,1038,'L','L','T','N',0.35717299810511227,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1417,847,'L','L','N','N',0.14375143117583622,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1149,1082,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1200,1284,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1090,1316,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(912,1172,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1428,1257,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(882,1239,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(290,1315,'L','U','T','N',0.8127352326660559,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(617,986,'L','U','N','N',0.7122420617092049,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(293,1040,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(95,710,'L','U','N','N',0.9881955453218428,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(820,363,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(73,1087,'L','L','N','N',0.7824216352224076,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1169,1496,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(326,414,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(814,1237,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(77,373,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1454,772,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(723,237,'L','L','T','N',0.7033791331480322,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1119,1212,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1374,946,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1197,490,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(528,92,'L','L','T','N',0.22973353773370497,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1499,1363,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1377,51,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(446,1373,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1210,1481,'L','U','T','N',0.3044133202182928,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(83,1312,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1033,1098,'L','U','N','N',0.3673982745194395,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1448,73,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(90,891,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(418,91,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(682,1465,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(886,776,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1475,1456,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1498,1109,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(67,900,'L','L','T','N',0.7043172905918448,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(765,933,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1291,1161,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(636,1301,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(115,1383,'L','L','N','N',0.9147482322970494,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(569,97,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1228,243,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(752,1484,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 50/500
" 

	measure_trsm(847,1059,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1419,1083,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1449,84,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(312,942,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1059,400,'L','L','N','N',0.9685880014787556,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1370,953,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1032,868,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1247,440,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1316,403,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(59,1217,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1066,1224,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(296,1385,'L','U','N','N',0.3051937663159069,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(981,229,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1434,1367,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(75,1484,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1051,81,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1306,1363,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1344,256,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1374,421,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(97,1353,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1177,99,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1291,114,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1478,1232,'L','L','N','N',0.27572062452232116,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1333,61,'L','L','N','N',0.19602663798183362,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(440,1359,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(51,745,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1405,717,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(873,803,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1068,846,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1004,193,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(894,1445,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1231,334,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1105,1123,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(284,1251,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1478,1272,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(985,785,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(202,936,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(991,401,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1483,832,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(770,1100,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(86,1221,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1334,329,'L','U','N','N',0.6069219004147813,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(937,1485,'L','U','N','N',0.3336531993208859,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(964,241,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(415,1265,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(79,1260,'L','L','T','N',0.5855996890143225,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1290,374,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1425,1294,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1253,1319,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(83,1407,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 100/500
" 

	measure_trsm(82,1250,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(495,940,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(787,1280,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1270,847,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(87,368,'L','U','N','N',0.815706817074496,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(833,845,'L','U','N','N',0.23306095099267976,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(465,1131,'L','U','N','N',0.5428554465678361,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1299,1343,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1395,70,'L','U','T','N',0.26404070055717954,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1327,134,'L','L','N','N',0.9947337361684568,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(709,507,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1337,1392,'L','U','T','N',0.5914944885216726,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1492,1070,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(342,61,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1480,94,'L','U','T','N',0.12200814064944465,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(67,934,'L','L','T','N',0.11976344425964902,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1125,1260,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1302,51,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1476,79,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(368,1495,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(833,587,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(853,796,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(99,1390,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(844,777,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(462,473,'L','L','N','N',0.8958110433787737,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1166,1378,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(596,1334,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(52,133,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(974,246,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1415,500,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1343,90,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1045,1261,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1109,1294,'L','L','N','N',0.8487930240497964,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(732,831,'L','U','T','N',0.8428540880149133,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(322,1406,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1469,1485,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1243,764,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(909,79,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1343,726,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(631,1212,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(874,444,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1397,1066,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1329,1218,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(50,1476,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(296,634,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(594,1274,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(758,287,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1365,1265,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(150,1191,'L','L','T','N',0.7262090240458153,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(975,1209,'L','U','T','N',0.3481662583232802,[Shape.UpperTriangular, Properties.Constant(3.0)])


@printf "Completed 150/500
" 

	measure_trsm(1313,54,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1308,1389,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(233,1094,'L','L','N','N',0.859242697329081,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1345,710,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(927,65,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1300,573,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1260,1471,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(979,635,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(697,451,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(885,1341,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1441,487,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1264,1408,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(87,104,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1394,1243,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(917,730,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1320,70,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(722,1006,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1211,1335,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1335,72,'L','U','N','N',0.9942575624336849,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(755,713,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1214,1267,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1215,96,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(293,1262,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1277,1408,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1049,155,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(150,1224,'L','L','N','N',0.2970055370328579,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(506,1304,'L','L','N','N',0.9522992375683266,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1094,85,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(667,1310,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1392,1433,'L','L','T','N',0.8327039973472792,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1239,1001,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1348,951,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1246,59,'L','U','T','N',0.7296955699417365,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(77,1077,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(933,1419,'L','L','T','N',0.23975455538493906,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(61,203,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(66,316,'L','U','N','N',0.29553448587630715,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1172,915,'L','L','T','N',0.04387389480303516,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(69,564,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(813,81,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1155,921,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(908,74,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(649,67,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(416,1323,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1096,711,'L','L','T','N',0.04470604449690829,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(65,1426,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(319,1337,'L','U','T','N',0.7011167655336704,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(452,1008,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1254,50,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1371,1109,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


@printf "Completed 200/500
" 

	measure_trsm(1223,618,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1347,1075,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1389,784,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1413,485,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(979,566,'L','U','T','N',0.3568378657236453,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1214,750,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1402,899,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(56,858,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(770,1479,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(282,821,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(62,1468,'L','L','T','N',0.860248340397262,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(162,1157,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(707,1173,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1493,342,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1101,382,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1385,513,'L','U','N','N',0.5331017448599725,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1021,1315,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(64,1480,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(59,1222,'L','L','N','N',0.4045967282613433,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1293,1478,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(998,138,'L','L','N','N',0.1175161204996249,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1207,832,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1059,1485,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1242,1068,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(68,1292,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1058,1391,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1280,1144,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(315,249,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(917,367,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1273,1217,'L','L','T','N',0.93307190699615,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(319,703,'L','U','T','N',0.144436759134701,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(279,836,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(802,345,'L','U','T','N',0.2767962063287063,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1393,74,'L','L','T','N',0.48701390763065155,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(89,1227,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1199,1200,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(804,1307,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(774,1418,'L','U','N','N',0.9854202196341937,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1152,1134,'L','U','T','N',0.2849672452037231,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(410,1150,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1013,1239,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(93,1328,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(705,584,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1252,677,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(520,135,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(494,926,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(642,1265,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1480,479,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(322,1341,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1284,810,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


@printf "Completed 250/500
" 

	measure_trsm(424,1437,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(932,1320,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1046,734,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(65,1288,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1089,56,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(429,1242,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1486,58,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(55,1313,'L','L','T','N',0.6294978244195768,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(61,993,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1293,1384,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1332,577,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(99,976,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(873,220,'L','L','T','N',0.2909611925817356,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(92,642,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1358,98,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1383,350,'L','L','N','N',0.009774629744024654,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(85,744,'L','U','N','N',0.7103607837221767,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1453,375,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1231,480,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1419,1136,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(479,1440,'L','U','T','N',0.37973077681165623,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(89,1374,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1135,685,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(79,1285,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(707,94,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(648,1456,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(69,1368,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1156,1129,'L','L','N','N',0.8351355050182829,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1446,1103,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(455,176,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1377,1259,'L','U','T','N',0.7642844461359032,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1009,1269,'L','U','T','N',0.3374380971289239,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(552,1259,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1390,533,'L','U','N','N',0.9612922769325855,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1215,153,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1015,53,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(121,491,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1277,1108,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1059,63,'L','L','T','N',0.2258954596178332,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(795,464,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(104,779,'L','U','N','N',0.5120308842722281,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(94,755,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1202,1364,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1486,53,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(757,461,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(81,1199,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1228,332,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(886,1181,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1452,418,'L','L','T','N',0.9398958152750467,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1463,1364,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 300/500
" 

	measure_trsm(51,54,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(700,881,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(353,458,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(529,933,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1332,1311,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1132,599,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1065,1130,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(65,855,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(809,1455,'L','U','T','N',0.9828424951740142,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1411,1220,'L','U','N','N',0.12909076273131015,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1445,728,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1360,137,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1211,63,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1423,283,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(901,1296,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1474,1293,'L','U','T','N',0.342341340524818,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(641,228,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(987,1337,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(662,1220,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(402,339,'L','L','N','N',0.2617212288653432,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(290,632,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(258,851,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1405,841,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(754,1462,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(359,71,'L','L','N','N',0.6655181142984167,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(220,65,'L','L','T','N',0.9999775505467715,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(763,735,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(928,955,'L','U','T','N',0.9619080303172696,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1208,1212,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1148,1198,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(317,1273,'L','L','T','N',0.3838155030656969,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(98,1464,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1327,1165,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(935,1414,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1359,829,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(287,492,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1002,1401,'L','L','N','N',0.8527884115502689,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1316,51,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(984,1119,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1102,97,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(510,1358,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1465,1358,'L','U','T','N',0.6909564323310856,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1014,1380,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1436,744,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1390,1238,'L','U','N','N',0.8217290559158454,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(304,1102,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1204,1467,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1377,62,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(70,1484,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(85,643,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


@printf "Completed 350/500
" 

	measure_trsm(1126,550,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(408,942,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1426,934,'L','U','T','N',0.3319158323815481,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(364,90,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1429,66,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(62,1319,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(67,93,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1092,1456,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(81,783,'L','L','N','N',0.08909910101975671,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1419,1372,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1260,1372,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1330,1475,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(745,399,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(264,654,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(581,1179,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1130,84,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(89,1400,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1131,748,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1310,1311,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(83,833,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(953,1431,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1376,892,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1404,1394,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(491,1482,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1463,909,'L','L','T','N',0.7124174589091435,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1245,1144,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1437,665,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1360,1315,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(897,834,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1462,509,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1354,1391,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(851,92,'L','L','T','N',0.4806801991654037,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(644,755,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(109,68,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1285,1279,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(959,1282,'L','U','T','N',0.39598537338192297,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(71,1406,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1355,1066,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(87,1402,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1450,850,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(301,1461,'L','L','N','N',0.9814698363041204,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(210,1193,'L','U','N','N',0.5836382890105922,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(85,745,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1440,1312,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(378,1154,'L','U','T','N',0.6310595225971308,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1423,961,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(79,66,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(134,1271,'L','U','N','N',0.8194402456077549,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1385,59,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1036,67,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 400/500
" 

	measure_trsm(794,1456,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(88,749,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1113,65,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(56,1189,'L','U','N','N',0.7016472690879372,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1350,52,'L','L','T','N',0.04584297018217787,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(132,1156,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1353,581,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(237,1455,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(66,910,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(82,746,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1088,62,'L','L','T','N',0.5804751332105905,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(153,1299,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1342,721,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(711,1415,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1299,1233,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(510,740,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1068,64,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(96,314,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1315,600,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1023,73,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(910,1458,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(813,1304,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1052,488,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(99,774,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1146,1044,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(402,52,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1393,93,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1346,764,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1293,285,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1016,1425,'L','L','N','N',0.19180293168499252,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(936,1446,'L','U','N','N',0.8258011199783136,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1200,1372,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(84,1284,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(786,1229,'L','U','T','N',0.3253391221025951,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(675,1138,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(875,56,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1356,1404,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1348,279,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(539,974,'L','U','T','N',0.24935658270203032,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(892,1080,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(955,358,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(537,1471,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(80,1497,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(510,1259,'L','L','T','N',0.3845925444551992,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(702,1279,'L','L','N','N',0.4330793435287462,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1370,920,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(141,1339,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1453,828,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1181,1474,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1468,1361,'L','U','N','N',0.09513624056738335,[Shape.UpperTriangular, Properties.Constant(3.0)])


@printf "Completed 450/500
" 

	measure_trsm(843,73,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1176,812,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1082,1303,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(71,1272,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1120,705,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1238,319,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1433,67,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1401,1088,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1185,61,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1268,1002,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1364,548,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1422,424,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(617,698,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1362,92,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1463,1208,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1353,1303,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(552,889,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1356,1142,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(86,761,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1448,80,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1072,1323,'L','U','T','N',0.9211195042242695,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1238,1297,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1094,1488,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1330,1047,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1393,1408,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1415,1436,'L','U','N','N',0.5023687915248586,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1350,1484,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1092,764,'L','L','T','N',0.3662372697375872,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1109,980,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(509,1322,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(114,142,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1429,1352,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(1450,61,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(375,455,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1101,58,'L','U','N','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1246,475,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random])


	measure_trsm(63,1270,'L','U','N','N',0.7997297960816981,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(1297,1162,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(885,1079,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Constant(3.0)])


	measure_trsm(1408,1467,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(198,1047,'L','U','T','N',1.0,[Shape.UpperTriangular, Properties.Random])


	measure_trsm(509,182,'L','L','N','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


	measure_trsm(1365,1333,'L','L','T','N',1.0,[Shape.LowerTriangular, Properties.Random(-5, 5)])


end

main()
