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

	
	measure_gemm(113,961,961,968,113,961,968,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1113,939,1113,78,939,1113,78,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(86,307,86,412,307,86,412,'T','N',0.4435522559293926,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(707,846,846,1419,707,846,1419,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1366,576,948,576,1366,576,948,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(753,1371,1371,1328,753,1371,1328,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1066,82,82,1306,1066,82,1306,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(99,89,1210,99,89,99,1210,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(55,968,968,832,55,968,832,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(362,59,81,59,362,59,81,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(596,1164,596,117,1164,596,117,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(436,273,273,638,436,273,638,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(442,546,546,65,442,546,65,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1329,222,438,1329,222,1329,438,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(156,78,78,59,156,78,59,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1178,418,418,1151,1178,418,1151,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1496,57,1496,1071,57,1496,1071,'T','N',0.7292679471246778,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(217,718,551,718,217,718,551,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1280,871,871,113,1280,871,113,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1111,816,1111,1085,816,1111,1085,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(70,207,1346,70,207,70,1346,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(996,1257,1130,1257,996,1257,1130,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(86,1400,86,210,1400,86,210,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(85,526,85,872,526,85,872,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(563,1300,724,1300,563,1300,724,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1325,706,1325,1348,706,1325,1348,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(68,991,991,1214,68,991,1214,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(69,1126,1126,359,69,1126,359,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(803,1267,803,67,1267,803,67,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(74,1219,1486,1219,74,1219,1486,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(198,58,61,198,58,198,61,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(76,784,1099,76,784,76,1099,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1212,1406,1406,768,1212,1406,768,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1368,395,749,395,1368,395,749,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(51,1461,1461,58,51,1461,58,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(706,1308,1308,1221,706,1308,1221,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(337,1394,1355,1394,337,1394,1355,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1211,805,1211,114,805,1211,114,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1265,70,70,399,1265,70,399,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(727,66,66,274,727,66,274,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(813,747,186,747,813,747,186,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(89,1213,1213,83,89,1213,83,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(693,1236,62,693,1236,693,62,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(706,662,706,487,662,706,487,'T','N',0.2901300517896128,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(71,1459,71,375,1459,71,375,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1235,1303,1235,941,1303,1235,941,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(661,85,661,50,85,661,50,'T','N',0.25054340369390404,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1153,1352,1352,71,1153,1352,71,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(651,75,92,75,651,75,92,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(772,729,729,79,772,729,79,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


@printf "Completed 50/700
" 

	measure_gemm(53,69,69,524,53,69,524,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(631,1482,1264,1482,631,1482,1264,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(79,1004,70,1004,79,1004,70,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1387,1149,1149,1042,1387,1149,1042,'N','N',0.34192054573038033,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1244,622,622,321,1244,622,321,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(155,799,799,624,155,799,624,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(81,1061,1061,100,81,1061,100,'N','N',0.6878897538100297,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(273,196,651,196,273,196,651,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1296,720,1296,354,720,1296,354,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(830,1280,830,582,1280,830,582,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(195,463,463,862,195,463,862,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(66,61,61,1309,66,61,1309,'N','N',0.9491460151851749,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(258,56,258,268,56,258,268,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1404,80,1469,1404,80,1404,1469,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(838,72,153,72,838,72,153,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(58,812,96,812,58,812,96,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(763,86,993,763,86,763,993,'T','T',0.8107893236709216,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(710,1319,1319,79,710,1319,79,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(168,986,986,1275,168,986,1275,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1386,363,923,363,1386,363,923,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(89,947,947,1468,89,947,1468,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(946,837,837,1476,946,837,1476,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(78,1277,1443,1277,78,1277,1443,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(78,1155,78,1460,1155,78,1460,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(596,315,596,946,315,596,946,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(75,92,711,92,75,92,711,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(98,537,98,56,537,98,56,'T','N',0.7484088955511915,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(683,344,683,1294,344,683,1294,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(55,1215,73,55,1215,55,73,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(51,1265,104,1265,51,1265,104,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1084,948,948,155,1084,948,155,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(79,1353,1353,116,79,1353,116,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1065,319,1065,1016,319,1065,1016,'T','N',0.028126305195743884,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1406,1167,1167,1225,1406,1167,1225,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1016,1060,1060,155,1016,1060,155,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(759,358,190,358,759,358,190,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(573,577,95,577,573,577,95,'N','T',0.12178989017653052,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(955,62,557,955,62,955,557,'T','T',0.9844995204963521,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1405,927,1405,97,927,1405,97,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(600,282,282,78,600,282,78,'N','N',0.7874989409268086,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(940,1303,1303,64,940,1303,64,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(80,535,535,88,80,535,88,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1491,248,248,719,1491,248,719,'N','N',0.1186292653590526,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(698,79,698,747,79,698,747,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(75,885,68,885,75,885,68,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1239,790,1229,1239,790,1239,1229,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1472,610,1117,1472,610,1472,1117,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1169,1264,1169,438,1264,1169,438,'T','N',0.3897917571851238,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(237,1135,89,237,1135,237,89,'T','T',0.16965221010110876,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1188,61,61,1254,1188,61,1254,'N','N',0.8296746061123962,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


@printf "Completed 100/700
" 

	measure_gemm(66,828,828,1265,66,828,1265,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(993,308,993,1232,308,993,1232,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(65,716,65,68,716,65,68,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1430,91,91,1410,1430,91,1410,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1433,1169,1433,70,1169,1433,70,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(207,93,207,185,93,207,185,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(984,716,716,819,984,716,819,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1215,168,80,168,1215,168,80,'N','T',0.1738003378089077,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1223,1403,1403,1278,1223,1403,1278,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1344,1457,1457,1214,1344,1457,1214,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1177,1409,1409,56,1177,1409,56,'N','N',0.5630726712408023,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(94,50,1362,50,94,50,1362,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(95,98,54,95,98,95,54,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(56,548,548,1286,56,548,1286,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1260,1216,73,1216,1260,1216,73,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(553,1306,1306,532,553,1306,532,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(823,596,596,1283,823,596,1283,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1136,193,1136,443,193,1136,443,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1248,1489,666,1489,1248,1489,666,'N','T',0.40805487340497293,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(504,965,504,72,965,504,72,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(550,539,539,539,550,539,539,'N','N',0.2506270285843061,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(517,68,724,68,517,68,724,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1063,800,523,800,1063,800,523,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(609,1285,1285,869,609,1285,869,'N','N',0.9974888514285818,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1384,78,54,78,1384,78,54,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(612,1213,83,1213,612,1213,83,'N','T',0.7701283099174089,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1350,74,1350,128,74,1350,128,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(135,66,66,803,135,66,803,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(839,1390,1390,1296,839,1390,1296,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(746,80,80,93,746,80,93,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1176,68,68,53,1176,68,53,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1174,91,1174,172,91,1174,172,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(213,1249,690,213,1249,213,690,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1460,67,1460,1478,67,1460,1478,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(92,57,57,1379,92,57,1379,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(935,374,374,579,935,374,579,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(894,380,380,365,894,380,365,'N','N',0.3407827963531689,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(78,1465,964,1465,78,1465,964,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(730,794,573,794,730,794,573,'N','T',0.7414545723215977,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(968,838,1146,968,838,968,1146,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1238,409,409,1216,1238,409,1216,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1485,1145,1485,1016,1145,1485,1016,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1037,814,99,814,1037,814,99,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(87,1064,1064,677,87,1064,677,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(513,72,72,65,513,72,65,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1403,1494,1494,361,1403,1494,361,'N','N',0.6905078314604022,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1200,57,57,1244,1200,57,1244,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(432,272,432,1220,272,432,1220,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(462,835,462,765,835,462,765,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1403,78,78,668,1403,78,668,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


@printf "Completed 150/700
" 

	measure_gemm(1466,56,1279,56,1466,56,1279,'N','T',0.46729236088966286,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(812,91,91,369,812,91,369,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(452,1418,452,389,1418,452,389,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(426,1069,212,426,1069,426,212,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(80,95,1386,95,80,95,1386,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1473,67,70,67,1473,67,70,'N','T',6.032994035898298e-05,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1127,98,1449,98,1127,98,1449,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1429,269,82,269,1429,269,82,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(72,68,68,1006,72,68,1006,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(757,78,78,50,757,78,50,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1432,76,76,1422,1432,76,1422,'N','N',0.6015743834308842,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(532,1291,532,434,1291,532,434,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1021,845,845,399,1021,845,399,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1145,1290,1290,1121,1145,1290,1121,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(75,187,75,80,187,75,80,'T','N',0.6682182192103892,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(95,51,58,51,95,51,58,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(106,88,362,88,106,88,362,'N','T',0.6011753792738124,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(73,239,73,79,239,73,79,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(739,706,706,1108,739,706,1108,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1474,1130,1130,521,1474,1130,521,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(696,81,501,81,696,81,501,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1468,934,934,132,1468,934,132,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1296,69,69,700,1296,69,700,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(58,730,781,58,730,58,781,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(569,1103,569,985,1103,569,985,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1353,1000,1336,1000,1353,1000,1336,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1205,562,562,76,1205,562,76,'N','N',0.9330276245383934,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(530,1478,1161,530,1478,530,1161,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(75,148,75,171,148,75,171,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(56,1225,1225,51,56,1225,51,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(788,487,487,1338,788,487,1338,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(59,1488,1488,840,59,1488,840,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1294,732,732,995,1294,732,995,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(506,353,353,121,506,353,121,'N','N',0.003882313433732243,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(865,66,82,66,865,66,82,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1326,1440,289,1440,1326,1440,289,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(70,555,393,555,70,555,393,'N','T',0.2595686828256899,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1464,91,91,632,1464,91,632,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(655,63,63,523,655,63,523,'N','N',0.8555161453093079,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(469,1393,541,469,1393,469,541,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1384,89,1384,1492,89,1384,1492,'T','N',0.7402010837107009,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(66,600,600,960,66,600,960,'N','N',0.5567073672782172,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(966,88,1254,88,966,88,1254,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(823,398,91,823,398,823,91,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(444,130,444,663,130,444,663,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(369,833,833,790,369,833,790,'N','N',0.5739469061094581,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1069,72,72,1002,1069,72,1002,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(927,113,1332,113,927,113,1332,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(457,741,82,457,741,457,82,'T','T',0.6704145956080327,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(847,1031,847,1381,1031,847,1381,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


@printf "Completed 200/700
" 

	measure_gemm(195,79,908,195,79,195,908,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(64,654,1056,654,64,654,1056,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(988,1004,1004,193,988,1004,193,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1417,831,867,1417,831,1417,867,'T','T',0.23332083908635215,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(260,1102,1102,88,260,1102,88,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(949,1243,949,362,1243,949,362,'T','N',0.17303256216039709,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(858,912,858,83,912,858,83,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(922,1041,1041,68,922,1041,68,'N','N',0.6197600586351998,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1487,66,66,64,1487,66,64,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(50,572,50,139,572,50,139,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(825,50,187,50,825,50,187,'N','T',0.007835953823862374,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1339,1070,1339,145,1070,1339,145,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1259,1183,1183,63,1259,1183,63,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(157,218,218,1417,157,218,1417,'N','N',0.8689724668705869,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1330,92,92,319,1330,92,319,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(593,1460,1460,1498,593,1460,1498,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(67,1485,56,67,1485,67,56,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1313,203,63,203,1313,203,63,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(63,554,1497,554,63,554,1497,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(74,1362,74,1217,1362,74,1217,'T','N',0.6499527674762244,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1434,1011,1075,1434,1011,1434,1075,'T','T',0.37822446640345164,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1201,61,61,713,1201,61,713,'N','N',0.8697697853635064,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1430,339,339,211,1430,339,211,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1362,1352,1352,752,1362,1352,752,'N','N',0.6186260558628752,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(58,50,50,1378,58,50,1378,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(882,156,84,156,882,156,84,'N','T',0.9073134462621857,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(923,440,440,95,923,440,95,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(75,1239,1239,1001,75,1239,1001,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1469,1378,1330,1378,1469,1378,1330,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(191,1063,1063,893,191,1063,893,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(189,53,53,1369,189,53,1369,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1033,1489,1489,728,1033,1489,728,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(66,1360,1360,102,66,1360,102,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(605,1082,1082,755,605,1082,755,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(66,128,66,55,128,66,55,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1411,56,647,56,1411,56,647,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1316,238,1316,1386,238,1316,1386,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1161,80,80,653,1161,80,653,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(940,1457,1457,988,940,1457,988,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(755,250,1387,755,250,755,1387,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(99,1380,1380,70,99,1380,70,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1282,1428,1282,96,1428,1282,96,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(566,613,613,111,566,613,111,'N','N',0.5321533827683831,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(287,75,287,52,75,287,52,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(967,97,97,852,967,97,852,'N','N',0.9513448420276764,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1482,1271,1482,1022,1271,1482,1022,'T','N',0.5199070145642626,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1410,63,1025,63,1410,63,1025,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1479,66,736,66,1479,66,736,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1425,1298,76,1298,1425,1298,76,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1335,1494,1335,52,1494,1335,52,'T','N',0.9713039367101822,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


@printf "Completed 250/700
" 

	measure_gemm(923,837,837,1259,923,837,1259,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1471,86,86,1153,1471,86,1153,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1291,1329,1491,1329,1291,1329,1491,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(86,904,86,233,904,86,233,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1031,1468,891,1468,1031,1468,891,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(316,1167,374,1167,316,1167,374,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1027,1260,1027,68,1260,1027,68,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(467,90,90,1012,467,90,1012,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(794,94,94,1332,794,94,1332,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(924,344,924,1269,344,924,1269,'T','N',0.5039136017367075,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(962,742,721,742,962,742,721,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(710,555,1405,555,710,555,1405,'N','T',0.019586187564903823,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(840,61,782,840,61,840,782,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1217,1201,1201,806,1217,1201,806,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1435,648,648,1490,1435,648,1490,'N','N',0.4909484341044046,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(628,864,284,628,864,628,284,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(64,566,566,71,64,566,71,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(89,54,54,708,89,54,708,'N','N',0.4671207831282975,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1363,372,1425,372,1363,372,1425,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1237,1298,1237,1482,1298,1237,1482,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(99,95,99,901,95,99,901,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1057,641,641,1289,1057,641,1289,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1200,483,303,483,1200,483,303,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(84,940,940,1275,84,940,1275,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(876,1021,664,876,1021,876,664,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(81,327,327,1470,81,327,1470,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1336,865,865,717,1336,865,717,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(60,56,87,56,60,56,87,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1417,904,1454,904,1417,904,1454,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(67,287,287,89,67,287,89,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(55,531,57,55,531,55,57,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(80,799,799,384,80,799,384,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1490,964,964,310,1490,964,310,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(59,82,82,50,59,82,50,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(78,58,58,826,78,58,826,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(366,1433,1192,366,1433,366,1192,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1367,1364,1364,89,1367,1364,89,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(604,321,321,51,604,321,51,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1192,79,79,122,1192,79,122,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(928,50,928,1271,50,928,1271,'T','N',0.2807424506184121,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1298,340,340,96,1298,340,96,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(92,672,672,1370,92,672,1370,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(388,749,1455,749,388,749,1455,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(72,781,781,82,72,781,82,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1476,466,1476,1440,466,1476,1440,'T','N',0.9488133113581705,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(74,814,814,858,74,814,858,'N','N',0.46989972292791005,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(689,52,52,1486,689,52,1486,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(51,81,81,63,51,81,63,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(536,73,934,73,536,73,934,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1266,1165,1165,85,1266,1165,85,'N','N',0.28689628632530273,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


@printf "Completed 300/700
" 

	measure_gemm(189,75,75,181,189,75,181,'N','N',0.14962406727843314,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(129,717,717,55,129,717,55,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1256,603,603,1276,1256,603,1276,'N','N',0.3002544440405519,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1206,1320,1206,351,1320,1206,351,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(523,979,447,979,523,979,447,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1490,1499,1499,71,1490,1499,71,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(524,110,1031,110,524,110,1031,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1263,91,1263,1443,91,1263,1443,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(76,1210,1210,1126,76,1210,1126,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1211,57,57,57,1211,57,57,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1271,1442,1271,91,1442,1271,91,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(67,1410,67,1094,1410,67,1094,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(265,1265,1265,383,265,1265,383,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1431,718,1472,1431,718,1431,1472,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1454,59,59,67,1454,59,67,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1305,725,725,1336,1305,725,1336,'N','N',0.7665865460823936,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(86,58,1493,58,86,58,1493,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1315,1116,1116,51,1315,1116,51,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1024,746,1024,380,746,1024,380,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1487,78,78,1241,1487,78,1241,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(618,524,1276,618,524,618,1276,'T','T',0.6066994473077101,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(456,64,64,1335,456,64,1335,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(278,237,237,56,278,237,56,'N','N',0.4449762050465995,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(50,729,50,446,729,50,446,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1202,1272,1272,648,1202,1272,648,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1189,61,61,1007,1189,61,1007,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(67,1277,1277,1211,67,1277,1211,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(455,413,413,776,455,413,776,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(764,75,75,806,764,75,806,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1063,231,231,59,1063,231,59,'N','N',0.07584394300192643,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1495,854,1495,782,854,1495,782,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(97,436,97,912,436,97,912,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(465,165,165,61,465,165,61,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1155,79,295,79,1155,79,295,'N','T',0.24134813095328533,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(50,67,348,67,50,67,348,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1211,787,787,96,1211,787,96,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1348,88,88,1382,1348,88,1382,'N','N',0.6572927688706448,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(77,92,77,109,92,77,109,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(334,74,334,1170,74,334,1170,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(965,622,622,1320,965,622,1320,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1049,1477,1049,976,1477,1049,976,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1400,1152,1400,395,1152,1400,395,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(441,1143,1143,1412,441,1143,1412,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(68,63,690,63,68,63,690,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1309,94,266,94,1309,94,266,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(964,592,592,988,964,592,988,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1471,363,1471,841,363,1471,841,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(54,1454,1454,1471,54,1454,1471,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(718,1339,72,1339,718,1339,72,'N','T',0.30148458411803425,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(79,71,71,975,79,71,975,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


@printf "Completed 350/700
" 

	measure_gemm(609,777,777,1159,609,777,1159,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(53,1170,1170,55,53,1170,55,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1257,1189,1257,87,1189,1257,87,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(137,1034,1034,95,137,1034,95,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(68,76,68,87,76,68,87,'T','N',0.9770708769040404,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1378,1366,67,1378,1366,1378,67,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(86,54,86,652,54,86,652,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1402,101,1402,480,101,1402,480,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(507,1083,507,66,1083,507,66,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(976,893,893,1442,976,893,1442,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(458,93,64,93,458,93,64,'N','T',0.5969628802264562,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(216,1204,1204,1477,216,1204,1477,'N','N',0.9457922678029533,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1208,1056,920,1056,1208,1056,920,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(75,684,1272,684,75,684,1272,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(57,1367,1367,1110,57,1367,1110,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(817,269,269,685,817,269,685,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(156,1482,1482,933,156,1482,933,'N','N',0.38887477765522493,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(833,959,833,1472,959,833,1472,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1395,1061,1061,1077,1395,1061,1077,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(76,819,65,819,76,819,65,'N','T',0.41297838091062955,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1339,967,967,1466,1339,967,1466,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(64,1278,66,64,1278,64,66,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1131,84,84,760,1131,84,760,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(746,1184,746,58,1184,746,58,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(337,1402,1402,735,337,1402,735,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1369,999,999,87,1369,999,87,'N','N',0.30030104385100764,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(987,985,987,733,985,987,733,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(151,1484,1484,1283,151,1484,1283,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(839,91,839,1422,91,839,1422,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1416,1268,1268,306,1416,1268,306,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(78,700,78,1392,700,78,1392,'T','N',0.08804778416237624,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(61,663,663,317,61,663,317,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(89,1474,1155,89,1474,89,1155,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1298,808,69,808,1298,808,69,'N','T',0.8007757472042238,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1288,67,1288,1352,67,1288,1352,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1008,1452,1452,1481,1008,1452,1481,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1393,1245,1245,1033,1393,1245,1033,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(358,1359,633,1359,358,1359,633,'N','T',0.9145992790224516,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(672,56,56,1322,672,56,1322,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1255,1234,1234,794,1255,1234,794,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(75,506,75,915,506,75,915,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(664,638,638,1053,664,638,1053,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1300,640,640,68,1300,640,68,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1424,1221,1221,1294,1424,1221,1294,'N','N',0.6965019758519272,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(71,1055,1385,71,1055,71,1385,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(792,234,72,792,234,792,72,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(57,1146,539,1146,57,1146,539,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1034,95,1034,297,95,1034,297,'T','N',0.8869284267932279,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1258,82,83,1258,82,1258,83,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(346,558,558,464,346,558,464,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


@printf "Completed 400/700
" 

	measure_gemm(1489,179,899,179,1489,179,899,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(144,950,144,1300,950,144,1300,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(87,1268,71,1268,87,1268,71,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1484,69,69,1156,1484,69,1156,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1148,298,1391,1148,298,1148,1391,'T','T',0.9366930647105441,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(76,56,76,260,56,76,260,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(399,1247,1247,883,399,1247,883,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(321,219,793,219,321,219,793,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(88,272,272,74,88,272,74,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(358,61,358,275,61,358,275,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(933,70,70,96,933,70,96,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1398,953,953,1243,1398,953,1243,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(84,58,58,1101,84,58,1101,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1420,82,1420,781,82,1420,781,'T','N',0.4131350570558221,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(85,1355,728,1355,85,1355,728,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1437,1123,1437,1287,1123,1437,1287,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1274,979,979,905,1274,979,905,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1082,539,1078,539,1082,539,1078,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(177,910,58,910,177,910,58,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1472,884,884,72,1472,884,72,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(197,935,935,1404,197,935,1404,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(76,341,341,1494,76,341,1494,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(86,60,1066,60,86,60,1066,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(123,62,62,950,123,62,950,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(700,257,257,537,700,257,537,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(106,1480,1480,1447,106,1480,1447,'N','N',0.5619221456771182,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1339,96,96,186,1339,96,186,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(208,66,208,889,66,208,889,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1269,1200,1269,1366,1200,1269,1366,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(252,93,93,1186,252,93,1186,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1432,1480,579,1480,1432,1480,579,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(873,68,722,873,68,873,722,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1297,1253,1297,68,1253,1297,68,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1408,1338,1330,1338,1408,1338,1330,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(54,99,54,292,99,54,292,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(50,1256,1256,663,50,1256,663,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(960,51,960,1291,51,960,1291,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(79,862,79,53,862,79,53,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(91,1004,1004,190,91,1004,190,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(75,691,691,1054,75,691,1054,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1336,202,1336,58,202,1336,58,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1455,92,92,535,1455,92,535,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(421,1300,1300,906,421,1300,906,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(643,591,1338,643,591,643,1338,'T','T',0.2037537370807181,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(843,1068,996,1068,843,1068,996,'N','T',0.4645495329627367,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(175,431,1208,175,431,175,1208,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(525,87,87,1424,525,87,1424,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(527,800,800,59,527,800,59,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(146,1074,748,1074,146,1074,748,'N','T',0.15494111919409426,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(59,555,555,676,59,555,676,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


@printf "Completed 450/700
" 

	measure_gemm(1017,99,99,767,1017,99,767,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(344,1030,514,1030,344,1030,514,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(473,1264,58,1264,473,1264,58,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(335,1345,1345,374,335,1345,374,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(83,1292,496,1292,83,1292,496,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(878,1326,1430,1326,878,1326,1430,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1059,1410,1410,661,1059,1410,661,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(490,358,358,75,490,358,75,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1315,500,1315,272,500,1315,272,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1251,396,1321,396,1251,396,1321,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(667,1239,667,1033,1239,667,1033,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(867,1135,1135,1429,867,1135,1429,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(398,1275,398,90,1275,398,90,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(473,67,473,138,67,473,138,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(335,1458,1458,1022,335,1458,1022,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(53,780,780,1129,53,780,1129,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(745,190,190,520,745,190,520,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(449,1306,449,1405,1306,449,1405,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1092,517,517,935,1092,517,935,'N','N',0.17821791957957944,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(723,515,59,723,515,723,59,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(897,64,1359,897,64,897,1359,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(93,1375,1375,56,93,1375,56,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(251,54,54,1306,251,54,1306,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(68,270,74,270,68,270,74,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(822,1411,822,448,1411,822,448,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1155,697,1155,763,697,1155,763,'T','N',0.5860905503961131,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(781,1212,1489,781,1212,781,1489,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(947,1165,1165,99,947,1165,99,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1174,1303,443,1303,1174,1303,443,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(108,1006,1006,359,108,1006,359,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1448,942,942,95,1448,942,95,'N','N',0.13056937959249093,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(327,1226,1226,95,327,1226,95,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(375,536,375,1395,536,375,1395,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(72,141,141,725,72,141,725,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1468,72,806,72,1468,72,806,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1192,1389,1389,192,1192,1389,192,'N','N',0.4812779107062859,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(833,331,331,99,833,331,99,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1349,363,242,363,1349,363,242,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1485,349,349,1025,1485,349,1025,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(496,788,788,1356,496,788,1356,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(466,1315,502,466,1315,466,502,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1281,549,1281,66,549,1281,66,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(454,85,454,96,85,454,96,'T','N',0.19177390662319904,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1064,1185,1064,1397,1185,1064,1397,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(585,1291,1291,53,585,1291,53,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(68,86,86,95,68,86,95,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(61,786,786,1284,61,786,1284,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(929,701,929,1371,701,929,1371,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(87,271,271,1487,87,271,1487,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1151,1285,1285,60,1151,1285,60,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


@printf "Completed 500/700
" 

	measure_gemm(1022,117,1022,883,117,1022,883,'T','N',0.3588729321790485,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1164,545,545,1309,1164,545,1309,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(94,298,94,313,298,94,313,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(71,88,88,1381,71,88,1381,'N','N',0.15505467095376158,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(523,945,68,945,523,945,68,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(320,86,86,1458,320,86,1458,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(134,187,134,54,187,134,54,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(664,374,374,1089,664,374,1089,'N','N',0.9956657700840836,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(418,1348,1348,384,418,1348,384,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(55,1007,812,55,1007,55,812,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1333,1116,1304,1116,1333,1116,1304,'N','T',0.7004920113058388,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(91,986,91,1382,986,91,1382,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(793,85,85,65,793,85,65,'N','N',0.42467435693472155,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(852,993,852,1011,993,852,1011,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(71,1473,1473,261,71,1473,261,'N','N',0.941884391833249,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(518,1325,71,1325,518,1325,71,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(73,1431,1431,190,73,1431,190,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1245,1428,1428,563,1245,1428,563,'N','N',0.6568100652449647,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(801,249,249,1259,801,249,1259,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1423,1356,1423,439,1356,1423,439,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(842,72,83,72,842,72,83,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1275,1472,1472,1158,1275,1472,1158,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(987,837,837,1374,987,837,1374,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1194,602,602,725,1194,602,725,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(517,54,54,1338,517,54,1338,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(67,1323,1323,125,67,1323,125,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(81,63,63,1041,81,63,1041,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(67,90,90,684,67,90,684,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(308,191,308,1326,191,308,1326,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(65,147,1378,147,65,147,1378,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(308,633,308,81,633,308,81,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(50,214,214,578,50,214,578,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(73,821,73,1464,821,73,1464,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1199,972,65,972,1199,972,65,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1485,903,903,1421,1485,903,1421,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1298,1387,1389,1298,1387,1298,1389,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1308,560,560,1438,1308,560,1438,'N','N',0.11540897645733106,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1095,83,1095,1051,83,1095,1051,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(949,1400,175,1400,949,1400,175,'N','T',0.4188399394300135,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1416,64,1447,64,1416,64,1447,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1255,448,448,86,1255,448,86,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(50,79,50,1471,79,50,1471,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(482,1122,1122,1481,482,1122,1481,'N','N',0.23178705693537982,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1373,834,834,480,1373,834,480,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1453,1073,1144,1073,1453,1073,1144,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1334,553,553,91,1334,553,91,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(718,1288,1111,1288,718,1288,1111,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(257,87,1366,87,257,87,1366,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(86,78,83,78,86,78,83,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(419,509,509,955,419,509,955,'N','N',0.5994390050641395,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


@printf "Completed 550/700
" 

	measure_gemm(863,681,863,261,681,863,261,'T','N',0.9062448401445446,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(58,1291,1291,635,58,1291,635,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(86,1291,86,1498,1291,86,1498,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(131,178,131,1489,178,131,1489,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(738,934,934,81,738,934,81,'N','N',0.987045098332859,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1399,975,69,1399,975,1399,69,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1056,877,1056,649,877,1056,649,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1055,503,503,933,1055,503,933,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(83,1089,95,1089,83,1089,95,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(80,54,54,784,80,54,784,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(79,542,747,542,79,542,747,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(483,51,58,483,51,483,58,'T','T',0.25069256576602705,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1209,1374,1374,897,1209,1374,897,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(777,563,66,777,563,777,66,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(96,991,991,901,96,991,901,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(798,744,798,876,744,798,876,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1345,87,87,93,1345,87,93,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1061,357,357,1394,1061,357,1394,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1207,1258,1258,1439,1207,1258,1439,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(159,1333,729,1333,159,1333,729,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(534,454,454,1469,534,454,1469,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1077,1136,1077,99,1136,1077,99,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1026,1288,1026,1235,1288,1026,1235,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1367,52,52,1092,1367,52,1092,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(88,731,731,99,88,731,99,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(365,741,365,289,741,365,289,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(845,462,462,75,845,462,75,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(90,99,75,90,99,90,75,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1429,426,426,1202,1429,426,1202,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1198,1203,1044,1198,1203,1198,1044,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1373,1331,1373,860,1331,1373,860,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1075,87,87,367,1075,87,367,'N','N',0.8558969519151017,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(159,86,159,1233,86,159,1233,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(347,298,549,347,298,347,549,'T','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(334,653,97,653,334,653,97,'N','T',0.9687257756727264,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(77,1146,1146,1107,77,1146,1107,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(81,931,931,90,81,931,90,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1388,1448,1448,84,1388,1448,84,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(332,593,332,913,593,332,913,'T','N',0.4073809242343558,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(203,73,203,1046,73,203,1046,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(195,1372,195,1222,1372,195,1222,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(59,1053,1053,1226,59,1053,1226,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(70,1439,1439,70,70,1439,70,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(84,1169,1169,69,84,1169,69,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(50,82,50,64,82,50,64,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1227,1151,1151,855,1227,1151,855,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(551,82,289,82,551,82,289,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1210,423,423,264,1210,423,264,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(256,1365,1365,123,256,1365,123,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1492,77,1492,1103,77,1492,1103,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


@printf "Completed 600/700
" 

	measure_gemm(1092,408,408,800,1092,408,800,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(62,279,252,62,279,62,252,'T','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(556,400,400,266,556,400,266,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(58,386,386,264,58,386,264,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1474,596,1474,87,596,1474,87,'T','N',0.4390205740831983,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(972,91,91,755,972,91,755,'N','N',0.4880049912753557,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(261,1427,67,1427,261,1427,67,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(862,88,393,862,88,862,393,'T','T',0.8665762488419777,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(85,62,62,600,85,62,600,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(448,950,950,456,448,950,456,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(537,1460,537,1315,1460,537,1315,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1229,64,1392,64,1229,64,1392,'N','T',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1125,186,186,87,1125,186,87,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(96,64,64,370,96,64,370,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(503,73,73,872,503,73,872,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1374,77,1374,1448,77,1374,1448,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(572,216,572,530,216,572,530,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(114,785,114,1087,785,114,1087,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(316,1299,1299,1213,316,1299,1213,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(299,233,890,299,233,299,890,'T','T',0.16958737196143692,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1463,538,1463,1265,538,1463,1265,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(53,1381,53,64,1381,53,64,'T','N',0.48301160809836163,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(95,1489,1489,838,95,1489,838,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(81,578,1319,578,81,578,1319,'N','T',0.6566203820438121,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(64,1015,943,1015,64,1015,943,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(505,1276,91,1276,505,1276,91,'N','T',0.23986305427891175,0.0,[Shape.General, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(80,664,664,580,80,664,580,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(986,1136,986,1019,1136,986,1019,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1221,78,1221,96,78,1221,96,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(79,82,1359,82,79,82,1359,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1058,1410,1410,186,1058,1410,186,'N','N',0.5703609809035011,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1332,728,728,144,1332,728,144,'N','N',0.48811126263372406,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(112,1465,112,1132,1465,112,1132,'T','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(869,69,69,69,869,69,69,'N','N',1.0,0.0,[Shape.General, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(1133,1336,582,1336,1133,1336,582,'N','T',0.4216546709786736,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1228,1067,1228,1380,1067,1228,1380,'T','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(1204,1226,402,1226,1204,1226,402,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


	measure_gemm(502,848,848,1116,502,848,1116,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(75,1246,69,1246,75,1246,69,'N','T',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.General, Properties.Random])


	measure_gemm(269,1236,1236,389,269,1236,389,'N','N',1.0,0.0,[Shape.LowerTriangular, Properties.Random],[Shape.LowerTriangular, Properties.Random])


end

main()
