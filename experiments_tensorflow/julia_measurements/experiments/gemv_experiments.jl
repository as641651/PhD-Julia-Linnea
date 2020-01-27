using LinearAlgebra.BLAS
using LinearAlgebra
using MatrixGenerator
using Printf

BLAS.set_num_threads(8)

f = open("/home/user/experiments_tensorflow/julia_measurements/measurements_data/gemv_out.txt","w")

function write_times(args)
  s = ""
  for k in args
    s = s*string(k)*"\t"
  end
  s = s*"\n"
  write(f,s)
end

function measure_gemv(a1,a2,m,n,tA,alpha,beta,propertyA)
  A = generate([a1,a2],propertyA)
  A = convert(Array{Float64,2},A)
  b = rand(n)
  y = rand(m)
  gemv!(tA,alpha,A,b,beta,y)
  A = nothing
  b = nothing
  y = nothing

  A = generate([a1,a2],propertyA)
  A = convert(Array{Float64,2},A)
  b = rand(n)
  y = rand(m)
  start = time_ns()
  gemv!(tA,alpha,A,b,beta,y)
  finish = time_ns()
  time = (finish-start)*1e-9
  A = nothing
  b = nothing
  y = nothing

  write_times([m,n,tA,alpha,beta,propertyA,time])
  GC.gc()
end


function main()

	
	measure_gemv(1210,897,1210,897,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1126,902,1126,902,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1284,984,1284,984,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(372,1313,1313,372,'T',0.03363140632997663,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(333,378,378,333,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1485,72,72,1485,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(73,68,68,73,'T',0.6707578688048168,0.0,[Shape.General, Properties.Random])


	measure_gemv(126,1206,126,1206,'N',0.8108789027886198,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(324,65,324,65,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(938,89,89,938,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(827,195,827,195,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(768,788,768,788,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(776,574,574,776,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(820,585,820,585,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(640,1366,640,1366,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(519,746,746,519,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(54,1156,1156,54,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1032,112,1032,112,'N',0.8852871825425108,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(488,786,488,786,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1309,546,1309,546,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1481,893,1481,893,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(324,896,896,324,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(58,964,58,964,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1233,556,556,1233,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(956,183,183,956,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1481,998,998,1481,'T',0.18493054975096268,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1159,435,435,1159,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1389,382,382,1389,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1138,918,918,1138,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1169,1043,1043,1169,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(551,706,551,706,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1470,1304,1304,1470,'T',0.6947294905233731,0.0,[Shape.General, Properties.Random])


	measure_gemv(75,375,75,375,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(59,195,195,59,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(71,65,65,71,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(205,84,84,205,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(187,1122,187,1122,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1497,731,731,1497,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1464,396,1464,396,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1366,66,1366,66,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(91,78,78,91,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(463,74,463,74,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(121,618,121,618,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(95,68,95,68,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(910,52,52,910,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1342,1264,1264,1342,'T',0.18348534406231132,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1260,402,402,1260,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1088,90,1088,90,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1256,1440,1440,1256,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(96,1203,96,1203,'N',1.0,0.0,[Shape.General, Properties.Random])


@printf "Completed 50/500
" 

	measure_gemv(729,68,729,68,'N',0.8455798758123678,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1183,1220,1183,1220,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1366,60,60,1366,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(71,850,71,850,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(54,1428,54,1428,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(71,471,471,71,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(85,337,85,337,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1356,61,61,1356,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(98,1360,1360,98,'T',0.7553053996133327,0.0,[Shape.General, Properties.Random])


	measure_gemv(1209,1415,1415,1209,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1183,312,1183,312,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(54,882,54,882,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(75,1306,75,1306,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1256,1335,1335,1256,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(384,88,384,88,'N',0.4053523458245347,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(70,1245,1245,70,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1103,1317,1317,1103,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(393,1002,1002,393,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1256,70,1256,70,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(211,1389,1389,211,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(64,1041,1041,64,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1365,806,1365,806,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1412,1035,1035,1412,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(904,96,904,96,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1303,1259,1259,1303,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1497,62,62,1497,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(794,1496,1496,794,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(713,1240,1240,713,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1488,96,1488,96,'N',0.6527074808948506,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(78,50,50,78,'T',0.4809271998528264,0.0,[Shape.General, Properties.Random])


	measure_gemv(57,1445,1445,57,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1220,439,1220,439,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(586,654,586,654,'N',0.09142569329821204,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1184,847,847,1184,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(956,178,178,956,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1003,1217,1217,1003,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1447,884,884,1447,'T',0.42192312304230517,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(91,60,91,60,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(281,73,281,73,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1273,1356,1273,1356,'N',0.07261114007613123,0.0,[Shape.General, Properties.Random])


	measure_gemv(74,967,967,74,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(779,62,62,779,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1413,308,308,1413,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1030,712,712,1030,'T',0.07125301620978686,0.0,[Shape.General, Properties.Random])


	measure_gemv(52,1140,1140,52,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(954,1328,954,1328,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1195,1398,1195,1398,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1106,56,56,1106,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(486,1357,1357,486,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(441,1426,1426,441,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 100/500
" 

	measure_gemv(1390,82,82,1390,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(890,280,890,280,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(52,829,52,829,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(798,86,798,86,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(563,80,80,563,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(79,1240,1240,79,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(244,88,88,244,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(88,1478,88,1478,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(84,931,931,84,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(276,1134,276,1134,'N',0.5861161208845743,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(738,1282,738,1282,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1435,1382,1382,1435,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1040,1378,1378,1040,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(92,1299,1299,92,'T',0.032545551542009665,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(763,67,67,763,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1302,436,436,1302,'T',0.5509908449282162,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(56,477,56,477,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(138,200,138,200,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(801,158,158,801,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1366,96,1366,96,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(80,1474,80,1474,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(768,809,768,809,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1200,1184,1200,1184,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1299,931,931,1299,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(865,58,865,58,'N',0.7368552166453766,0.0,[Shape.General, Properties.Random])


	measure_gemv(77,884,884,77,'T',0.3383812602467643,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1485,431,431,1485,'T',0.8418332104436324,0.0,[Shape.General, Properties.Random])


	measure_gemv(490,365,490,365,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1348,1299,1299,1348,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1269,368,1269,368,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(57,266,57,266,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1041,1244,1041,1244,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1039,1078,1039,1078,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(65,1408,1408,65,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(58,67,67,58,'T',0.4327963705228972,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(570,92,92,570,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1373,1065,1065,1373,'T',0.016458833113930593,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(488,94,488,94,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(92,1333,92,1333,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1432,399,399,1432,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1159,1025,1025,1159,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(684,408,408,684,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(153,87,87,153,'T',0.3468865800869745,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1395,95,95,1395,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1317,1376,1376,1317,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(658,1468,1468,658,'T',0.5720348658593787,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1017,705,1017,705,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(58,181,181,58,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(231,351,231,351,'N',0.2786526685335342,0.0,[Shape.General, Properties.Random])


	measure_gemv(659,86,86,659,'T',0.16654918131026253,0.0,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 150/500
" 

	measure_gemv(1217,271,1217,271,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1212,714,714,1212,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(492,98,98,492,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(471,67,471,67,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1428,139,139,1428,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(86,68,86,68,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1304,88,88,1304,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(89,555,555,89,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(628,62,628,62,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1328,80,1328,80,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(960,1336,1336,960,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(624,60,624,60,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1007,1497,1007,1497,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(235,121,121,235,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1389,1236,1389,1236,'N',0.07058140058980789,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(820,1489,1489,820,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(557,1027,557,1027,'N',0.2988501061943044,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(75,1276,1276,75,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(900,1175,1175,900,'T',0.7425663954515394,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(65,67,65,67,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(717,87,717,87,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(717,1430,717,1430,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1019,1467,1019,1467,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(74,400,74,400,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(220,609,220,609,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1019,122,122,1019,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(53,1321,1321,53,'T',0.6641666726803542,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(83,84,84,83,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1456,1448,1448,1456,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1498,552,1498,552,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(52,489,489,52,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(138,592,138,592,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1298,1485,1485,1298,'T',0.6392922706917988,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1306,681,1306,681,'N',0.5837354602760926,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(306,1161,1161,306,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(69,159,159,69,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1204,1284,1204,1284,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1325,78,78,1325,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1139,1435,1139,1435,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1414,1156,1414,1156,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1142,60,1142,60,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(196,1364,1364,196,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(108,377,108,377,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1236,649,649,1236,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(79,812,812,79,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(669,1272,669,1272,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(57,753,57,753,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(232,52,52,232,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1169,1298,1298,1169,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1240,161,1240,161,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 200/500
" 

	measure_gemv(82,1070,1070,82,'T',0.48605675432053397,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(76,1445,76,1445,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(867,1380,867,1380,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1487,732,1487,732,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(89,1443,1443,89,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1491,74,1491,74,'N',0.3740929039534755,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1334,316,316,1334,'T',0.7558083743729895,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(145,63,63,145,'T',0.5013659501173114,0.0,[Shape.General, Properties.Random])


	measure_gemv(99,81,81,99,'T',0.5387887012025366,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(674,64,64,674,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(731,543,543,731,'T',0.41501333831063747,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1441,893,1441,893,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(949,1365,949,1365,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(111,95,111,95,'N',0.1494581238335866,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(743,934,934,743,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1380,618,618,1380,'T',0.5342969718933965,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1372,314,314,1372,'T',0.6255873402314716,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1135,827,1135,827,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(590,1427,590,1427,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(72,97,97,72,'T',0.31503892967888303,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1051,855,855,1051,'T',0.6686718342914453,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1324,58,1324,58,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1079,348,348,1079,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(462,170,462,170,'N',0.1793072253897987,0.0,[Shape.General, Properties.Random])


	measure_gemv(1407,529,529,1407,'T',0.12472239334710589,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1438,427,427,1438,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1144,53,53,1144,'T',0.19483748894837905,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1016,93,93,1016,'T',0.19949723379263784,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(91,208,208,91,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(679,66,66,679,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(994,78,994,78,'N',0.07744633682036861,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1102,83,1102,83,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1372,403,403,1372,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(816,742,816,742,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1044,1403,1403,1044,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1272,1023,1272,1023,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(75,1237,75,1237,'N',0.17676484628315292,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1244,70,70,1244,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1253,1488,1253,1488,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(74,357,74,357,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(804,1228,1228,804,'T',0.5079056287785232,0.0,[Shape.General, Properties.Random])


	measure_gemv(369,853,853,369,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1397,50,50,1397,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(764,1043,764,1043,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(925,1013,1013,925,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(900,690,900,690,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1241,453,453,1241,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(54,1463,54,1463,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1289,1442,1442,1289,'T',0.7640948396318226,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(740,510,510,740,'T',1.0,0.0,[Shape.General, Properties.Random])


@printf "Completed 250/500
" 

	measure_gemv(1399,1433,1433,1399,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1106,1381,1381,1106,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(442,58,442,58,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1269,99,1269,99,'N',0.7382136067286565,0.0,[Shape.General, Properties.Random])


	measure_gemv(1048,1282,1048,1282,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(86,72,72,86,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(59,827,59,827,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1035,1439,1439,1035,'T',0.45744733461527665,0.0,[Shape.General, Properties.Random])


	measure_gemv(55,239,55,239,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1231,79,79,1231,'T',0.380857083504054,0.0,[Shape.General, Properties.Random])


	measure_gemv(92,1191,92,1191,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(666,1026,666,1026,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(549,1213,1213,549,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(199,1043,199,1043,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1350,119,1350,119,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(979,261,261,979,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(883,237,237,883,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1218,1473,1218,1473,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(64,1225,64,1225,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1153,441,1153,441,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(264,446,264,446,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(761,1197,761,1197,'N',0.6468832747286319,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(801,1345,801,1345,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(859,69,69,859,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(451,284,284,451,'T',0.20963205229111026,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1197,95,95,1197,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(779,1198,1198,779,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(592,1355,1355,592,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(64,62,64,62,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(833,302,833,302,'N',0.71694713393189,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(411,194,411,194,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(674,463,463,674,'T',0.19567501528341325,0.0,[Shape.General, Properties.Random])


	measure_gemv(87,1132,1132,87,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(61,1318,61,1318,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(65,61,65,61,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(355,53,355,53,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(385,88,385,88,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(434,1029,1029,434,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(82,91,91,82,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(746,1339,746,1339,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1224,215,1224,215,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(876,1260,1260,876,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(475,72,475,72,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(251,717,717,251,'T',0.487633402941721,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(343,558,343,558,'N',0.49555713203917306,0.0,[Shape.General, Properties.Random])


	measure_gemv(1237,91,91,1237,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(56,883,883,56,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(832,624,832,624,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(816,58,58,816,'T',0.9832722617809838,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(73,337,73,337,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 300/500
" 

	measure_gemv(266,221,221,266,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(839,838,838,839,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(266,443,266,443,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1205,204,1205,204,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(70,494,70,494,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(65,79,65,79,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(371,466,466,371,'T',0.04420678298653857,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(57,1290,1290,57,'T',0.3252719548381301,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1473,799,799,1473,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1230,63,1230,63,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1182,959,959,1182,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1063,1383,1383,1063,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(56,819,56,819,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(287,1218,287,1218,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1293,1143,1293,1143,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(453,1020,1020,453,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(860,97,860,97,'N',0.5172564891756631,0.0,[Shape.General, Properties.Random])


	measure_gemv(1120,427,1120,427,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(389,801,389,801,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(59,802,802,59,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(234,1056,1056,234,'T',0.1525925823727723,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(609,1477,1477,609,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1251,912,1251,912,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1205,177,1205,177,'N',0.17635037720439395,0.0,[Shape.General, Properties.Random])


	measure_gemv(276,56,276,56,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1347,197,1347,197,'N',0.45455675412576757,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(225,1205,1205,225,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1401,68,68,1401,'T',0.20994483597849123,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(308,1356,1356,308,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1036,1373,1036,1373,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1321,88,1321,88,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(93,95,95,93,'T',0.16019170902259738,0.0,[Shape.General, Properties.Random])


	measure_gemv(357,73,357,73,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1229,1383,1229,1383,'N',0.04393628199636812,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(423,351,351,423,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(66,65,65,66,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1192,66,1192,66,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(65,1250,65,1250,'N',0.7918272348985305,0.0,[Shape.General, Properties.Random])


	measure_gemv(274,968,968,274,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1329,1420,1420,1329,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(81,1449,81,1449,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(87,633,87,633,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(267,1092,267,1092,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(717,800,800,717,'T',0.8633772427545617,0.0,[Shape.General, Properties.Random])


	measure_gemv(906,1296,906,1296,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(682,1433,682,1433,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(279,96,279,96,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(476,1219,476,1219,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1209,1389,1209,1389,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(87,90,87,90,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 350/500
" 

	measure_gemv(1247,1238,1247,1238,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1466,1332,1332,1466,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1401,588,588,1401,'T',0.2701193562783384,0.0,[Shape.General, Properties.Random])


	measure_gemv(1244,235,235,1244,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(702,435,435,702,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(116,457,457,116,'T',0.3956886714013569,0.0,[Shape.General, Properties.Random])


	measure_gemv(996,1396,996,1396,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(436,440,440,436,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(97,59,97,59,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1102,1342,1102,1342,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(99,812,812,99,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(611,1387,611,1387,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(980,93,93,980,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1130,50,50,1130,'T',0.06377533879846964,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(82,1166,1166,82,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(179,281,281,179,'T',0.3644012019884174,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(67,1492,1492,67,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(94,222,94,222,'N',0.7879325426717674,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1315,257,1315,257,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(84,59,59,84,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(759,72,72,759,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(72,1198,72,1198,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1115,312,1115,312,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(846,1484,1484,846,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(803,1294,1294,803,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1342,311,1342,311,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(53,72,53,72,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(81,1181,1181,81,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1209,1279,1209,1279,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1009,1352,1009,1352,'N',0.6402933276220554,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(127,176,176,127,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1437,567,567,1437,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(91,1418,91,1418,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(950,1390,950,1390,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(59,1386,1386,59,'T',0.7049705217277259,0.0,[Shape.General, Properties.Random])


	measure_gemv(1060,1013,1060,1013,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(483,826,826,483,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(75,1336,75,1336,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(92,1178,1178,92,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(61,391,61,391,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(770,1120,770,1120,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(452,726,452,726,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(80,1482,1482,80,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(388,1204,388,1204,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(76,98,98,76,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(99,159,99,159,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(79,91,91,79,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1235,1274,1274,1235,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(851,89,89,851,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(931,93,93,931,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 400/500
" 

	measure_gemv(1243,647,647,1243,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(73,1434,1434,73,'T',0.08187957458854889,0.0,[Shape.General, Properties.Random])


	measure_gemv(61,59,61,59,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(68,730,68,730,'N',0.04325113557470217,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1343,444,444,1343,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(56,89,89,56,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(825,735,735,825,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1089,313,313,1089,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(563,937,937,563,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(51,68,51,68,'N',0.6922410070366574,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1225,459,1225,459,'N',0.38177576178024286,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(305,316,305,316,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(133,1141,133,1141,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1391,1276,1391,1276,'N',0.8004355938907667,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1426,1245,1245,1426,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(70,345,70,345,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1240,94,1240,94,'N',0.8420950032214455,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(72,670,72,670,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(91,565,91,565,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(875,74,74,875,'T',0.5043704479685021,0.0,[Shape.General, Properties.Random])


	measure_gemv(86,1227,1227,86,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(319,625,319,625,'N',0.46926690447181174,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(82,54,82,54,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(445,637,637,445,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(58,1490,1490,58,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(318,79,79,318,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1223,742,1223,742,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(997,881,997,881,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(66,969,969,66,'T',0.7629900177529432,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1009,85,85,1009,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(80,1016,1016,80,'T',0.5263816238074703,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(831,294,294,831,'T',0.8201061610212578,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1452,1487,1487,1452,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(449,866,866,449,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(175,1199,1199,175,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(975,1250,975,1250,'N',0.9193672060154707,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(645,802,645,802,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(834,1019,1019,834,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(597,64,597,64,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(50,1196,1196,50,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(148,844,844,148,'T',0.004517747054625043,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(246,947,246,947,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(251,53,53,251,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(76,124,124,76,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1024,89,89,1024,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(493,81,493,81,'N',0.9785531100107697,0.0,[Shape.General, Properties.Random])


	measure_gemv(1338,1423,1338,1423,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(613,59,613,59,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(294,1450,1450,294,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(63,274,63,274,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 450/500
" 

	measure_gemv(99,421,421,99,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(90,398,398,90,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(342,1263,1263,342,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(397,1131,1131,397,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(179,93,179,93,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1209,74,1209,74,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(843,1304,1304,843,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(729,724,724,729,'T',0.6918012429971016,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(596,914,596,914,'N',0.03549556721380154,0.0,[Shape.General, Properties.Random])


	measure_gemv(1065,512,512,1065,'T',0.07916800609876562,0.0,[Shape.General, Properties.Random])


	measure_gemv(99,823,99,823,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(712,1142,712,1142,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(387,1008,1008,387,'T',0.7486822931629074,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1459,54,1459,54,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1179,466,1179,466,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(517,860,860,517,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(56,1467,56,1467,'N',0.7150189837075037,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1021,1347,1347,1021,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(75,1174,75,1174,'N',0.22524367913975596,0.0,[Shape.General, Properties.Random])


	measure_gemv(347,97,97,347,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(819,559,819,559,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(540,567,567,540,'T',0.3214270753271976,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(54,730,730,54,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(59,706,59,706,'N',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(493,576,493,576,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(923,83,923,83,'N',0.9972039407703776,0.0,[Shape.General, Properties.Random])


	measure_gemv(919,1189,1189,919,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(92,82,92,82,'N',0.9193380424023561,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(85,81,85,81,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(977,1211,977,1211,'N',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(886,883,883,886,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1336,1000,1336,1000,'N',0.3573531969109769,0.0,[Shape.General, Properties.Random])


	measure_gemv(901,471,471,901,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1374,87,87,1374,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1306,325,325,1306,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(88,621,621,88,'T',0.4508112895482842,0.0,[Shape.General, Properties.Random])


	measure_gemv(1229,523,1229,523,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(1440,440,1440,440,'N',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(89,1248,1248,89,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1349,1462,1462,1349,'T',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(154,1029,154,1029,'N',1.0,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(84,1468,1468,84,'T',1.0,0.0,[Shape.General, Properties.Random])


	measure_gemv(1482,1459,1482,1459,'N',0.6203479281875457,0.0,[Shape.LowerTriangular, Properties.Random])


	measure_gemv(603,496,496,603,'T',0.11973356570026983,0.0,[Shape.General, Properties.Constant(3.0)])


	measure_gemv(1482,730,730,1482,'T',1.0,0.0,[Shape.UpperTriangular, Properties.Random])


	measure_gemv(1235,76,76,1235,'T',1.0,0.0,[Shape.General, Properties.Constant(3.0)])


end

main()
