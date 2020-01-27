using LinearAlgebra.BLAS
using LinearAlgebra
using MatrixGenerator
using Printf

BLAS.set_num_threads(8)

f = open("/home/user/experiments_tensorflow/julia_measurements/measurements_data/gemm_out.txt","w")

function write_times(args)
  s = ""
  for k in args
    s = s*string(k)*"\t"
  end
  s = s*"\n"
  write(f,s)
end

function measure_gemm(a1,a2,b1,b2,m,n,k,tA,tB,alpha,beta,propertyA,propertyB)
  A = generate([a1,a2],propertyA)
  A = convert(Array{Float64,2},A)
  B = generate([b1,b2],propertyB)
  B = convert(Array{Float64,2},B)
  C = Array{Float64}(undef,m,k)
  gemm!(tA,tB,alpha,A,B,beta,C)
  start = time_ns()
  gemm!(tA,tB,alpha,A,B,beta,C)
  finish = time_ns()
  time = (finish-start)*1e-9
  C = nothing
  write_times([m,n,k,tA,tB,alpha,beta,propertyA,propertyB,time])
end


function main()

	
	measure_gemm(957,1064,53,957,1064,957,53,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1070,210,210,416,1070,210,416,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(507,1424,507,1016,1424,507,1016,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1045,1236,1045,1292,1236,1045,1292,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(99,385,385,1293,99,385,1293,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1443,1404,1404,62,1443,1404,62,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(546,555,887,555,546,555,887,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(773,1344,1344,1382,773,1344,1382,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1000,1469,1000,58,1469,1000,58,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1083,1103,1103,1373,1083,1103,1373,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(52,1056,1056,1486,52,1056,1486,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(500,62,62,372,500,62,372,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1453,1322,1322,933,1453,1322,933,'N','N',0.9148999022751964,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1055,1366,1366,1150,1055,1366,1150,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1032,667,1209,1032,667,1032,1209,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(380,1397,723,1397,380,1397,723,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1259,488,488,244,1259,488,244,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1224,603,1435,1224,603,1224,1435,'T','T',0.8062836102565674,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1047,661,66,661,1047,661,66,'N','T',0.6028838314366824,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(129,886,129,1178,886,129,1178,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(273,753,1457,753,273,753,1457,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1374,929,1374,1434,929,1374,1434,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(59,84,84,87,59,84,87,'N','N',0.8220506998103558,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(438,534,518,534,438,534,518,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(97,81,81,879,97,81,879,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(60,1319,1319,684,60,1319,684,'N','N',0.2045757869688194,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(70,1273,70,1334,1273,70,1334,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(80,74,74,1442,80,74,1442,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(879,156,879,1056,156,879,1056,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(304,1285,335,1285,304,1285,335,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1319,69,1319,83,69,1319,83,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1369,923,923,1012,1369,923,1012,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1434,784,784,999,1434,784,999,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1006,70,70,80,1006,70,80,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1166,69,69,1309,1166,69,1309,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(992,60,60,926,992,60,926,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(95,1141,1141,591,95,1141,591,'N','N',0.7331775448339877,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(93,1346,93,1147,1346,93,1147,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(390,1339,1178,1339,390,1339,1178,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(84,524,84,1180,524,84,1180,'T','N',0.5965725336684515,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(209,60,60,1049,209,60,1049,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(826,67,67,1250,826,67,1250,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(65,1275,1275,1338,65,1275,1338,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(64,589,64,65,589,64,65,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1352,432,432,1242,1352,432,1242,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1100,1003,823,1100,1003,1100,823,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1420,201,201,56,1420,201,56,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(87,1381,87,50,1381,87,50,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1224,313,1224,83,313,1224,83,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(298,279,279,1322,298,279,1322,'N','N',0.5586015118777854,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


@printf "Completed 50/500
" 

	measure_gemm(268,1438,1438,1316,268,1438,1316,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(451,1330,1234,451,1330,451,1234,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(288,272,98,288,272,288,98,'T','T',0.19085223082483527,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1330,1460,1330,1361,1460,1330,1361,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1405,525,525,112,1405,525,112,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1102,592,1102,941,592,1102,941,'T','N',0.3737340046703941,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(682,67,67,354,682,67,354,'N','N',0.6064400507674921,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(909,62,960,62,909,62,960,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(407,1478,55,407,1478,407,55,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1248,1215,1215,93,1248,1215,93,'N','N',0.7829328555919568,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(66,1460,66,50,1460,66,50,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(312,1332,312,1418,1332,312,1418,'T','N',0.9012481603912291,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(99,1422,99,74,1422,99,74,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1182,65,322,1182,65,1182,322,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1060,1251,1251,328,1060,1251,328,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(65,736,65,54,736,65,54,'T','N',0.520026758507053,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(79,182,763,182,79,182,763,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(476,86,86,522,476,86,522,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1377,101,101,98,1377,101,98,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1374,986,1160,986,1374,986,1160,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(434,1113,729,1113,434,1113,729,'N','T',0.542976570693044,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1197,1364,1364,89,1197,1364,89,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(98,440,671,440,98,440,671,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1363,62,62,1435,1363,62,1435,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(78,295,295,52,78,295,52,'N','N',0.0454746069984876,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1276,52,52,414,1276,52,414,'N','N',0.8497578030958285,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1464,1083,1234,1083,1464,1083,1234,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1442,1414,1414,1290,1442,1414,1290,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(51,1157,51,633,1157,51,633,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(70,900,1419,900,70,900,1419,'N','T',0.8178670767544393,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(264,709,709,365,264,709,365,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(87,1303,87,675,1303,87,675,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1403,988,988,1359,1403,988,1359,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(60,1327,598,1327,60,1327,598,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(979,1421,979,381,1421,979,381,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(96,1409,1409,783,96,1409,783,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1353,88,88,345,1353,88,345,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(309,57,57,62,309,57,62,'N','N',0.8026530693544173,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1411,1287,1030,1287,1411,1287,1030,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(837,715,837,51,715,837,51,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(63,850,63,1260,850,63,1260,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(61,733,170,733,61,733,170,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1422,51,51,393,1422,51,393,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(641,1186,641,971,1186,641,971,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(628,328,328,760,628,328,760,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1174,373,373,1297,1174,373,1297,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1276,1068,1276,62,1068,1276,62,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1227,1263,1263,63,1227,1263,63,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1000,78,1000,77,78,1000,77,'T','N',0.03845690860876361,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1486,1047,1486,64,1047,1486,64,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


@printf "Completed 100/500
" 

	measure_gemm(176,77,176,1222,77,176,1222,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(958,1177,88,1177,958,1177,88,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(97,1287,97,828,1287,97,828,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(348,1071,1071,1262,348,1071,1262,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(52,853,853,1413,52,853,1413,'N','N',0.587082880517155,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(56,295,295,874,56,295,874,'N','N',0.6800433218123154,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(66,1199,66,1473,1199,66,1473,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(522,94,59,522,94,522,59,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1310,1361,73,1310,1361,1310,73,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(913,1355,1355,1438,913,1355,1438,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(87,78,78,141,87,78,141,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1076,69,60,1076,69,1076,60,'T','T',0.7874073256004943,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1460,1479,1479,1310,1460,1479,1310,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(59,79,165,79,59,79,165,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(761,1247,761,1207,1247,761,1207,'T','N',0.3453721005290272,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1044,88,1044,536,88,1044,536,'T','N',0.26197865786229835,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(256,205,205,1326,256,205,1326,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(61,259,259,96,61,259,96,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1033,1243,1243,1386,1033,1243,1386,'N','N',0.5298443449287022,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(945,371,945,89,371,945,89,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1457,863,863,72,1457,863,72,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1442,52,91,52,1442,52,91,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(881,313,313,1311,881,313,1311,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(66,1403,1403,1093,66,1403,1093,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(89,1149,89,993,1149,89,993,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(427,464,464,56,427,464,56,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1029,231,1029,988,231,1029,988,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(87,95,87,517,95,87,517,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(475,63,1139,475,63,475,1139,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(95,1470,1470,138,95,1470,138,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1264,1303,1303,411,1264,1303,411,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1034,1290,1290,90,1034,1290,90,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(815,629,1480,629,815,629,1480,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1396,1202,1202,1320,1396,1202,1320,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(689,1193,1193,93,689,1193,93,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1388,133,1002,133,1388,133,1002,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(58,73,75,58,73,58,75,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(66,628,1006,66,628,66,1006,'T','T',0.384112372871502,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1477,702,702,481,1477,702,481,'N','N',0.846398974772704,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(153,268,268,587,153,268,587,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(794,92,92,380,794,92,380,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1082,1189,1236,1189,1082,1189,1236,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(925,95,95,475,925,95,475,'N','N',0.8958894216198141,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(52,1432,1432,70,52,1432,70,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(957,1317,957,72,1317,957,72,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(61,562,562,161,61,562,161,'N','N',0.3199269880291721,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(77,93,93,52,77,93,52,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(64,1328,1328,1301,64,1328,1301,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1353,929,1015,929,1353,929,1015,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1162,156,156,925,1162,156,925,'N','N',0.31675582893438026,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


@printf "Completed 150/500
" 

	measure_gemm(158,1178,158,88,1178,158,88,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1442,1209,481,1209,1442,1209,481,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1453,1379,1379,562,1453,1379,562,'N','N',0.5053776162617741,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(74,63,63,1427,74,63,1427,'N','N',0.41029436924021445,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(813,93,93,410,813,93,410,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(204,84,84,76,204,84,76,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1365,54,1365,445,54,1365,445,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(75,134,75,85,134,75,85,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1107,78,314,78,1107,78,314,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(553,389,389,78,553,389,78,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1252,805,1252,56,805,1252,56,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(330,1200,330,67,1200,330,67,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1033,88,1033,995,88,1033,995,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(550,90,90,1492,550,90,1492,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1372,1266,1266,224,1372,1266,224,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1141,50,50,1162,1141,50,1162,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1314,682,682,1357,1314,682,1357,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(717,196,109,717,196,717,109,'T','T',0.4512770201224666,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(423,1243,1243,1217,423,1243,1217,'N','N',0.005782080278807333,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1234,66,178,66,1234,66,178,'N','T',0.6933122687335882,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(939,78,939,855,78,939,855,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(852,1220,85,1220,852,1220,85,'N','T',0.14100449164381657,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(646,1220,646,73,1220,646,73,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(909,1229,1229,1102,909,1229,1102,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(456,1119,1119,1391,456,1119,1391,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1166,370,74,370,1166,370,74,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1098,438,438,1150,1098,438,1150,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1276,357,357,620,1276,357,620,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(562,1438,1438,229,562,1438,229,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(134,71,134,181,71,134,181,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(56,51,51,88,56,51,88,'N','N',0.011912013398676202,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(919,1296,1296,341,919,1296,341,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(84,702,84,1234,702,84,1234,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(70,1285,1285,58,70,1285,58,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(67,1468,67,930,1468,67,930,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(623,1358,205,1358,623,1358,205,'N','T',0.9421018342617677,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(340,491,1386,491,340,491,1386,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1476,830,1476,1156,830,1476,1156,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(671,1054,671,83,1054,671,83,'T','N',0.6883044468266927,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(923,98,923,217,98,923,217,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(402,86,86,420,402,86,420,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1466,1219,1219,1303,1466,1219,1303,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(669,51,51,1360,669,51,1360,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1498,1288,265,1288,1498,1288,265,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(77,97,97,1035,77,97,1035,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(405,1286,1286,95,405,1286,95,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(80,89,89,72,80,89,72,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(748,1012,245,1012,748,1012,245,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(53,517,53,67,517,53,67,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(60,1147,1147,1368,60,1147,1368,'N','N',0.4233037445300225,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


@printf "Completed 200/500
" 

	measure_gemm(56,509,509,389,56,509,389,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1096,535,871,535,1096,535,871,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(97,55,1322,97,55,97,1322,'T','T',0.9988852624172732,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(793,69,793,1274,69,793,1274,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1343,363,1343,886,363,1343,886,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(51,1123,51,1365,1123,51,1365,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1024,1080,1429,1024,1080,1024,1429,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(90,458,458,1237,90,458,1237,'N','N',0.28071960487294256,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(635,1236,635,77,1236,635,77,'T','N',0.0897057117027984,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(89,1391,1288,89,1391,89,1288,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(470,1062,470,174,1062,470,174,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(539,1316,1316,1085,539,1316,1085,'N','N',0.2920991368877175,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(365,1100,379,365,1100,365,379,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(689,1359,93,1359,689,1359,93,'N','T',0.78369074267168,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1211,668,1183,1211,668,1211,1183,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1071,1296,1296,1466,1071,1296,1466,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1321,98,98,1211,1321,98,1211,'N','N',0.732584715840109,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(55,1025,932,55,1025,55,932,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(985,58,985,65,58,985,65,'T','N',0.8036111367204447,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(423,1291,987,1291,423,1291,987,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1403,800,838,800,1403,800,838,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(366,875,875,57,366,875,57,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1142,736,736,545,1142,736,545,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1388,153,153,1143,1388,153,1143,'N','N',0.5268628936858964,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1458,827,827,85,1458,827,85,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(63,436,1478,436,63,436,1478,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1369,97,1222,97,1369,97,1222,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(632,520,520,1389,632,520,1389,'N','N',0.4482257434509621,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1435,1281,1435,98,1281,1435,98,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(424,83,83,85,424,83,85,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(69,523,523,76,69,523,76,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1093,164,164,1282,1093,164,1282,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1210,71,1158,1210,71,1210,1158,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1189,80,730,80,1189,80,730,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(880,71,71,67,880,71,67,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(72,1221,162,1221,72,1221,162,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(96,99,96,980,99,96,980,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1292,51,51,99,1292,51,99,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(53,680,680,1151,53,680,1151,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(562,398,398,514,562,398,514,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(601,910,601,1340,910,601,1340,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(469,253,253,63,469,253,63,'N','N',0.24307563369855723,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1245,312,806,312,1245,312,806,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1194,1178,634,1178,1194,1178,634,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(367,672,672,1306,367,672,1306,'N','N',0.2606898375342491,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(415,830,830,424,415,830,424,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(699,1370,67,1370,699,1370,67,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1047,63,57,63,1047,63,57,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(544,947,947,85,544,947,85,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(990,1290,1290,556,990,1290,556,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


@printf "Completed 250/500
" 

	measure_gemm(61,1443,1443,261,61,1443,261,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(358,1452,358,818,1452,358,818,'T','N',0.43986809133189586,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1413,189,601,1413,189,1413,601,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1469,238,1452,238,1469,238,1452,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(705,1118,1118,969,705,1118,969,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1177,772,1270,1177,772,1177,1270,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(87,1058,1058,88,87,1058,88,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1138,1033,1138,901,1033,1138,901,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1244,1280,1244,541,1280,1244,541,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1109,92,96,92,1109,92,96,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(860,1339,1339,597,860,1339,597,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(870,979,979,762,870,979,762,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1447,1457,1447,72,1457,1447,72,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(451,427,165,451,427,451,165,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(91,1346,1346,51,91,1346,51,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1131,1313,1131,1459,1313,1131,1459,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1454,60,60,1160,1454,60,1160,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(77,58,58,1409,77,58,1409,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(82,896,896,1336,82,896,1336,'N','N',0.8035542745001157,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(327,95,95,1420,327,95,1420,'N','N',0.7198765918467332,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(735,1174,1174,989,735,1174,989,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(113,1448,1448,1219,113,1448,1219,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1214,97,97,66,1214,97,66,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(347,900,900,454,347,900,454,'N','N',0.8359963136805344,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(844,69,56,69,844,69,56,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1327,98,1421,98,1327,98,1421,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(69,1154,1154,1100,69,1154,1100,'N','N',0.7644228132626958,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(72,1280,1281,1280,72,1280,1281,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(63,1332,1332,1480,63,1332,1480,'N','N',0.5253733579591972,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1051,924,924,891,1051,924,891,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(825,1284,825,128,1284,825,128,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(280,1259,1259,1251,280,1259,1251,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(893,610,610,177,893,610,177,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(88,97,991,97,88,97,991,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(834,164,164,602,834,164,602,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1423,600,600,1362,1423,600,1362,'N','N',0.36591567732666697,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(60,564,60,813,564,60,813,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1428,93,1428,746,93,1428,746,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1326,1401,1410,1401,1326,1401,1410,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(64,1236,1236,858,64,1236,858,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(62,1453,99,1453,62,1453,99,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(434,445,445,702,434,445,702,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(754,576,576,1442,754,576,1442,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(53,397,74,397,53,397,74,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1497,65,1497,246,65,1497,246,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1271,805,805,91,1271,805,91,'N','N',0.7848801694391959,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(108,768,768,662,108,768,662,'N','N',0.5164559336786237,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(869,123,123,72,869,123,72,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(648,777,85,777,648,777,85,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(675,64,1230,675,64,675,1230,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


@printf "Completed 300/500
" 

	measure_gemm(237,347,814,347,237,347,814,'N','T',0.8257700771498306,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(93,50,93,363,50,93,363,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1001,918,598,918,1001,918,598,'N','T',0.84803600236231,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(905,1116,500,1116,905,1116,500,'N','T',0.9012120347829344,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(884,1230,1230,1431,884,1230,1431,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1107,1303,485,1107,1303,1107,485,'T','T',0.13905226508303525,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1293,494,494,692,1293,494,692,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(68,1487,1487,955,68,1487,955,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(608,1303,1303,523,608,1303,523,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(58,471,471,579,58,471,579,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1433,599,599,1030,1433,599,1030,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(415,1240,1240,53,415,1240,53,'N','N',0.8237560549346243,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(545,60,545,1249,60,545,1249,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(541,70,1218,70,541,70,1218,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1270,834,1270,457,834,1270,457,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(72,225,1372,72,225,72,1372,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(57,71,71,664,57,71,664,'N','N',0.3133179696198123,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(519,690,690,285,519,690,285,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(730,1212,339,1212,730,1212,339,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(743,61,85,743,61,743,85,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(652,572,572,846,652,572,846,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(591,72,275,72,591,72,275,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(93,1237,1237,78,93,1237,78,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(76,790,447,76,790,76,447,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(330,72,72,1402,330,72,1402,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(91,68,68,914,91,68,914,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(74,1039,1039,256,74,1039,256,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1066,1159,1159,60,1066,1159,60,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1455,135,53,135,1455,135,53,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(356,96,96,731,356,96,731,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(716,1242,1242,435,716,1242,435,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(74,96,96,1433,74,96,1433,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(717,777,1201,717,777,717,1201,'T','T',0.41661669695203263,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(671,1194,671,394,1194,671,394,'T','N',0.21084666028808552,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(53,68,793,68,53,68,793,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1485,90,90,1055,1485,90,1055,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(684,154,684,1201,154,684,1201,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(275,577,577,1265,275,577,1265,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(271,1242,1146,271,1242,271,1146,'T','T',0.10953329266679568,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(748,777,748,77,777,748,77,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(903,1044,1044,1011,903,1044,1011,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(62,1124,559,1124,62,1124,559,'N','T',0.4886301683150529,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(96,1377,96,506,1377,96,506,'T','N',0.9930514954641769,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(233,1238,1238,510,233,1238,510,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(544,658,658,1175,544,658,1175,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1479,1269,69,1479,1269,1479,69,'T','T',0.5453206313745973,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(341,321,321,98,341,321,98,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(987,240,440,987,240,987,440,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1379,1266,1379,846,1266,1379,846,'T','N',0.32008219051268494,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(715,1445,621,715,1445,715,621,'T','T',0.6578689711932323,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


@printf "Completed 350/500
" 

	measure_gemm(975,88,88,95,975,88,95,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1334,74,1250,74,1334,74,1250,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(55,422,1009,55,422,55,1009,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(486,84,486,1217,84,486,1217,'T','N',0.9435659012484171,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(300,862,862,1110,300,862,1110,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1077,1309,1309,1307,1077,1309,1307,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(751,98,751,839,98,751,839,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(334,188,60,188,334,188,60,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(433,455,455,59,433,455,59,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(914,514,514,707,914,514,707,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1277,458,458,1382,1277,458,1382,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(897,1250,897,1222,1250,897,1222,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1013,978,59,978,1013,978,59,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(460,861,861,74,460,861,74,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1486,170,72,1486,170,1486,72,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1052,535,1052,230,535,1052,230,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(97,518,518,96,97,518,96,'N','N',0.4074420648304271,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(77,1450,1450,1488,77,1450,1488,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1023,1364,75,1023,1364,1023,75,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(411,1207,1207,1499,411,1207,1499,'N','N',0.059542578786507705,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(850,668,94,668,850,668,94,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(617,1306,622,1306,617,1306,622,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(220,762,762,1335,220,762,1335,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(59,75,75,58,59,75,58,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(935,89,89,561,935,89,561,'N','N',0.9190644485190923,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1340,712,753,712,1340,712,753,'N','T',0.8147418773076749,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1266,1445,1266,1202,1445,1266,1202,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(951,53,98,951,53,951,98,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(980,1133,326,1133,980,1133,326,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(139,90,548,90,139,90,548,'N','T',0.004622742363262766,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(79,877,877,962,79,877,962,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(408,1268,1138,1268,408,1268,1138,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(73,1035,1002,73,1035,73,1002,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(60,1186,1186,65,60,1186,65,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1393,1396,1396,1181,1393,1396,1181,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(670,1002,52,1002,670,1002,52,'N','T',0.3451023154043187,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1369,1471,950,1471,1369,1471,950,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(77,97,77,100,97,77,100,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(359,83,359,1025,83,359,1025,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1464,602,602,574,1464,602,574,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(759,1442,1442,854,759,1442,854,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1425,70,1425,55,70,1425,55,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1063,286,810,1063,286,1063,810,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(990,1381,1381,796,990,1381,796,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1382,938,1382,1026,938,1382,1026,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(742,97,97,1410,742,97,1410,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1404,744,744,1392,1404,744,1392,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(168,936,936,1381,168,936,1381,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1143,511,511,63,1143,511,63,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(551,1028,1028,1057,551,1028,1057,'N','N',0.8450045852270381,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


@printf "Completed 400/500
" 

	measure_gemm(1469,1429,1469,1069,1429,1469,1069,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(179,50,179,252,50,179,252,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1276,961,64,961,1276,961,64,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1402,76,812,76,1402,76,812,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1251,764,470,764,1251,764,470,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1498,375,375,111,1498,375,111,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(66,698,1119,698,66,698,1119,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(53,291,53,1313,291,53,1313,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(76,769,891,769,76,769,891,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(226,1403,1403,1339,226,1403,1339,'N','N',0.48185726670715623,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(72,93,72,909,93,72,909,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(486,587,486,1097,587,486,1097,'T','N',0.9267944483149921,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(942,1224,1224,74,942,1224,74,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(425,739,739,1260,425,739,1260,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(53,273,180,273,53,273,180,'N','T',0.16108420090382736,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1137,203,203,1429,1137,203,1429,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1435,134,134,383,1435,134,383,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(796,888,888,1373,796,888,1373,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(54,57,57,86,54,57,86,'N','N',0.8573388418042092,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(92,1283,1283,1414,92,1283,1414,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1159,1032,1032,84,1159,1032,84,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(170,1446,71,1446,170,1446,71,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1336,50,50,321,1336,50,321,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(307,55,307,1031,55,307,1031,'T','N',0.8934912728190376,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1379,76,76,79,1379,76,79,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(175,88,175,64,88,175,64,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(538,974,538,441,974,538,441,'T','N',0.662879643894571,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(463,73,86,73,463,73,86,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1458,1065,1065,561,1458,1065,561,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(405,698,392,698,405,698,392,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(65,66,1360,66,65,66,1360,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(53,67,53,1269,67,53,1269,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(396,135,396,340,135,396,340,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(627,98,98,893,627,98,893,'N','N',0.743897281533909,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1218,1325,1325,657,1218,1325,657,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(97,74,625,74,97,74,625,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1071,1201,1201,1057,1071,1201,1057,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(75,996,996,1496,75,996,1496,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1431,1433,1433,983,1431,1433,983,'N','N',0.7650162879182961,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(807,415,1167,415,807,415,1167,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(470,92,434,92,470,92,434,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1439,50,50,1183,1439,50,1183,'N','N',0.9105243865260039,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(743,1026,1026,639,743,1026,639,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(80,1038,1038,1178,80,1038,1178,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(55,1341,1341,1204,55,1341,1204,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1052,786,786,1439,1052,786,1439,'N','N',0.7621650989585024,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1446,67,900,1446,67,1446,900,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1396,921,921,968,1396,921,968,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


end

main()
