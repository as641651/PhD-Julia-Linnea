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

	
	measure_symm(218,54,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1241,681,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(87,1370,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(65,565,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(72,1446,'L','L',0.1273960716660042,0.0,[Shape.General, Properties.Random])


	measure_symm(1255,216,'L','L',0.12272183846828122,0.0,[Shape.General, Properties.Random])


	measure_symm(94,1205,'L','L',0.7241783403256331,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1242,1198,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1200,354,'L','L',0.894873344317025,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(545,843,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(756,1211,'L','U',0.8987628970315383,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(647,1286,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(778,1326,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(106,1391,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(53,1385,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1243,76,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1273,1149,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(770,1428,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1069,68,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1384,1188,'L','L',0.32789884862918184,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1466,925,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1329,1200,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1329,1014,'L','U',0.08522198168744188,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1287,1494,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1207,56,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(852,1477,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(168,1301,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(806,1130,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(520,1336,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1225,1120,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1484,1281,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1255,365,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1422,605,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1286,1382,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(73,753,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1088,86,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1090,71,'L','U',0.7348895331429234,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(266,822,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(492,621,'L','L',0.06627562926000685,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1106,190,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(92,1372,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1259,979,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1459,98,'L','U',0.380842823939739,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1278,76,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(511,1224,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1328,82,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1346,56,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(930,1307,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(755,1301,'L','L',0.07346247678645401,0.0,[Shape.General, Properties.Random])


	measure_symm(1206,1411,'L','L',1.0,0.0,[Shape.General, Properties.Random])


@printf "Completed 50/500
" 

	measure_symm(552,1359,'L','L',0.9374542001513682,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(90,143,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(311,1351,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1398,56,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1356,1279,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(713,1142,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(827,1476,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1471,1180,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1222,572,'L','L',0.36410081860100707,0.0,[Shape.General, Properties.Random])


	measure_symm(115,1108,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1014,1219,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(172,826,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1237,997,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(89,238,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(608,50,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1495,900,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1078,836,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1098,1332,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(60,1462,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1258,844,'L','L',0.7074039902137075,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1331,1497,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1196,519,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1052,98,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(94,735,'L','L',0.6843995983708073,0.0,[Shape.General, Properties.Random])


	measure_symm(895,1411,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1291,292,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(883,1081,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1255,446,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(86,1131,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(804,166,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1230,1210,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1281,92,'L','U',0.9452623148353264,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1022,1284,'L','L',0.03690555143963814,0.0,[Shape.General, Properties.Random])


	measure_symm(903,935,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(863,1155,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1150,1409,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(664,1426,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1335,1215,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(190,1213,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(98,1396,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(471,1232,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1406,1099,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1427,742,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1199,1379,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1339,1356,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(137,1128,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(920,399,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1472,885,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1273,483,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1311,1497,'L','L',0.04391319795995108,0.0,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 100/500
" 

	measure_symm(1261,420,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1013,70,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1208,1394,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(79,1467,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(785,667,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1205,1187,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1436,262,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(84,99,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1353,1375,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(57,551,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(938,1209,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(894,89,'L','L',0.11212049007302449,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(296,67,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(943,915,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(941,1169,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(822,117,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1345,221,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(158,1080,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(868,280,'L','L',0.6745407071690016,0.0,[Shape.General, Properties.Random])


	measure_symm(1051,804,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1374,1173,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1291,763,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(611,1397,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(851,980,'L','U',0.29790439477750064,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1365,619,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1399,777,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(270,923,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(300,839,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1365,1427,'L','L',0.03412626425336396,0.0,[Shape.General, Properties.Random])


	measure_symm(1213,305,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1338,718,'L','U',0.27372727357019255,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(97,805,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1243,435,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(255,872,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(55,1395,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1189,1119,'L','L',0.16570840584843083,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1426,1098,'L','U',0.014246445628719573,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1111,51,'L','L',0.37923125165659244,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(327,1201,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1408,911,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1350,1283,'L','L',0.7560875028853347,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(121,1250,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1171,1088,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(588,1302,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(386,957,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1293,1399,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1236,1460,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(76,1012,'L','U',0.6189764348892691,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1339,81,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(836,1431,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


@printf "Completed 150/500
" 

	measure_symm(79,1114,'L','L',0.5800587042002453,0.0,[Shape.General, Properties.Random])


	measure_symm(210,1463,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1392,1278,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1489,1279,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1292,85,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1264,1450,'L','L',0.2678401617027497,0.0,[Shape.General, Properties.Random])


	measure_symm(1399,840,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1495,1364,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1212,1278,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(202,899,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1186,98,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1468,65,'L','L',0.6223053397689535,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(90,1303,'L','L',0.8490681725318459,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1379,63,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(193,892,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(938,263,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(918,1443,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(682,795,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(753,397,'L','L',0.7636522785195358,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(526,318,'L','L',0.915223281367936,0.0,[Shape.General, Properties.Random])


	measure_symm(1268,439,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(337,358,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1006,776,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(755,1311,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(555,1364,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(414,199,'L','U',0.4062232119450987,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(840,989,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(387,465,'L','L',0.658938045414049,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(881,1202,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(89,1232,'L','U',0.689094202896101,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1076,765,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1054,201,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(794,1223,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(982,503,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1258,1239,'L','L',0.4269654630013088,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(865,1102,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1467,1300,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1438,1449,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1275,1484,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(394,986,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1110,1331,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(802,1411,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(362,75,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1454,1206,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1230,67,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(58,1479,'L','L',0.9677514434491947,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1267,89,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(91,1385,'L','U',0.9596247468257475,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(980,547,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1285,1478,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 200/500
" 

	measure_symm(352,1396,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(62,746,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1091,1306,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1185,1490,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(53,713,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(227,1276,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1273,98,'L','L',0.9718796861773193,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1343,754,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1440,1350,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(609,461,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(95,1452,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(471,1248,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1425,291,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1070,94,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1154,1377,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(376,1107,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1259,950,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(515,872,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1251,92,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1058,758,'L','U',0.3434434863729948,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(954,860,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(425,919,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(315,60,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(334,582,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(537,1452,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(85,1438,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1463,707,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1379,87,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(808,1183,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(65,544,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(895,1131,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1213,961,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1376,58,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1457,1282,'L','L',0.4055931954431502,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1468,71,'L','U',0.9209355402257783,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1312,742,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(801,1313,'L','L',0.4061712162195925,0.0,[Shape.General, Properties.Random])


	measure_symm(78,1335,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1060,52,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1335,1424,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1089,66,'L','L',0.9603687132282911,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1448,1493,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1425,450,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1274,329,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1382,214,'L','L',0.9947740831165887,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(887,1204,'L','U',0.3035806670871317,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(62,1306,'L','U',0.5400938453766589,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(215,1301,'L','L',0.4539668407497328,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(662,767,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1314,1422,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 250/500
" 

	measure_symm(733,387,'L','U',0.762333593606775,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1460,934,'L','L',0.45350566502713885,0.0,[Shape.General, Properties.Random])


	measure_symm(431,727,'L','L',0.6020190531323405,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1467,73,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1248,1355,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(337,1106,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(68,652,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(570,1266,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1090,1122,'L','L',0.5008313606761386,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(280,1012,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(73,458,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1240,1304,'L','L',0.13060453312899334,0.0,[Shape.General, Properties.Random])


	measure_symm(575,334,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1177,1031,'L','L',0.9260083628408821,0.0,[Shape.General, Properties.Random])


	measure_symm(1150,1336,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(859,1248,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(952,488,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1019,287,'L','U',0.8381801018004014,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1109,947,'L','L',0.8257270842092423,0.0,[Shape.General, Properties.Random])


	measure_symm(453,1464,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(688,164,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(857,1483,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(208,671,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1477,1427,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(712,69,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(656,55,'L','L',0.7410625611315974,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1086,1280,'L','L',0.27435317981278284,0.0,[Shape.General, Properties.Random])


	measure_symm(1139,1262,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1228,1488,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1394,1058,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(98,113,'L','U',0.3647199700091962,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(388,1397,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1221,1427,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1382,934,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(921,1342,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(461,1478,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1281,1202,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(82,796,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(93,1446,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1280,63,'L','L',0.8442388506249741,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1050,71,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1499,846,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1346,753,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(82,728,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1325,1489,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1043,338,'L','L',0.9581927049324195,0.0,[Shape.General, Properties.Random])


	measure_symm(1413,845,'L','L',0.6396956023673722,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1374,1358,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1303,1374,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(380,1129,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


@printf "Completed 300/500
" 

	measure_symm(1336,60,'L','L',0.22072939660793445,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(61,1280,'L','L',0.39560564086846883,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1444,69,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(272,1248,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(80,1082,'L','L',0.24720707780915885,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(51,1408,'L','L',0.2525572175201989,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1019,1267,'L','L',0.35548554556607537,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(855,1403,'L','U',0.1453149787823177,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1094,69,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1199,1319,'L','U',0.1316094566366076,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(970,701,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1436,425,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1091,1157,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1332,52,'L','L',0.37111831344325374,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(56,97,'L','L',0.9207685797925013,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(50,1094,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(469,1348,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(586,88,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1083,859,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(132,978,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1230,1269,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1055,839,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1151,728,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1446,1092,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1224,531,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1417,1210,'L','L',0.0009915458428262358,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1347,1487,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1253,712,'L','U',0.014774208167335545,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1412,1388,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(150,165,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1188,835,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1478,92,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(789,130,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1441,53,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(96,1490,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1325,97,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1260,1324,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1379,1282,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1236,1238,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1247,91,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(60,1067,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(749,523,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(987,1253,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(95,1111,'L','U',0.0019991598848868586,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1275,1331,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1453,462,'L','U',0.2626626269832233,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(938,1288,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(655,1303,'L','U',0.9434688159400232,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1141,1179,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(949,1343,'L','L',1.0,0.0,[Shape.General, Properties.Random])


@printf "Completed 350/500
" 

	measure_symm(951,57,'L','U',0.5187168024654422,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1487,1360,'L','L',0.3984761105676313,0.0,[Shape.General, Properties.Random])


	measure_symm(50,1344,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(61,1192,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(438,1174,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1291,526,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1221,1311,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1314,1358,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1189,1199,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1344,156,'L','L',0.15681359442038034,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1448,1263,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1478,435,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(351,1497,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(60,1492,'L','U',0.4841916790815427,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(591,1313,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1447,284,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1448,1361,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1047,490,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1408,74,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1385,678,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(585,815,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(64,1149,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(70,927,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1301,384,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(776,71,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(778,1281,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1243,1390,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1129,1449,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1347,184,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(330,61,'L','L',0.08966721146424272,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(133,1147,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1311,601,'L','L',0.9682108984918066,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1149,1114,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(938,1244,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(419,102,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(401,636,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(64,1272,'L','L',0.9664154494517188,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1369,730,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1221,333,'L','L',0.13083627725459102,0.0,[Shape.General, Properties.Random])


	measure_symm(948,496,'L','L',0.10821449689298512,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1267,1114,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(51,1085,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(80,238,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1458,812,'L','L',0.4379133217757737,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(410,1241,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(869,1210,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1214,760,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1042,76,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(955,1055,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(95,1292,'L','L',0.5177298216327801,0.0,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 400/500
" 

	measure_symm(971,1010,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(679,1480,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1237,896,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1276,705,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(708,405,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1282,918,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1080,1358,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(693,765,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(87,710,'L','L',0.3517756191815937,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1315,1193,'L','L',0.17900925204226137,0.0,[Shape.General, Properties.Random])


	measure_symm(1071,91,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1199,124,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1314,1032,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(750,319,'L','U',0.23954596107709725,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(90,762,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(937,145,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1436,896,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(749,1375,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1339,1292,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(397,1462,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(430,909,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(934,1454,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(438,668,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1119,848,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(72,1432,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(69,1243,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(64,763,'L','L',0.7515100889173398,0.0,[Shape.General, Properties.Random])


	measure_symm(1421,855,'L','U',0.7755908645715365,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(52,750,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(779,293,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(56,1210,'L','L',0.4134170142886795,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(77,528,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1498,1110,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(773,61,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(941,524,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(90,944,'L','L',0.3504796255507524,0.0,[Shape.General, Properties.Random])


	measure_symm(1265,337,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1217,182,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(53,1296,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(411,406,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1172,1078,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(685,1468,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1005,97,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(553,67,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1192,735,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(978,548,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1263,1428,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(76,1228,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1150,1297,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(90,1464,'L','L',1.0,0.0,[Shape.General, Properties.Random])


@printf "Completed 450/500
" 

	measure_symm(909,1123,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1017,1097,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1331,63,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(794,365,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(391,1238,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(425,1076,'L','L',0.5882389189406589,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(86,54,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1249,887,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(690,207,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1324,384,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(79,1221,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1433,599,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1207,446,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(493,1376,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(873,1223,'L','U',0.5696529146573612,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(961,1431,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1454,1222,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(649,1474,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1145,1353,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(988,1234,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1141,456,'L','L',0.14359333603345215,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(700,779,'L','L',0.3426828994141895,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(934,136,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1235,422,'L','L',0.5569611780658442,0.0,[Shape.General, Properties.Random])


	measure_symm(1453,96,'L','L',0.952543702701192,0.0,[Shape.General, Properties.Random])


	measure_symm(1403,688,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(437,1153,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(1480,1188,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1278,1186,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1338,96,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1482,1353,'L','L',0.8796375088401849,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1453,952,'L','L',0.8643517332289119,0.0,[Shape.General, Properties.Random])


	measure_symm(255,162,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(941,855,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(373,1258,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(1076,1066,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(1034,54,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(286,297,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(238,1233,'L','L',1.0,0.0,[Shape.General, Properties.Random])


	measure_symm(822,93,'L','U',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_symm(1083,50,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_symm(787,1419,'L','L',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_symm(331,60,'L','L',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


end

main()
