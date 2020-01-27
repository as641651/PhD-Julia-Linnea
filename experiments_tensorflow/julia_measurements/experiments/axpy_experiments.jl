using LinearAlgebra.BLAS
using LinearAlgebra
using MatrixGenerator
using Printf

BLAS.set_num_threads(8)

f = open("/home/user/experiments_tensorflow/julia_measurements/measurements_data/axpy_out.txt","w")

function write_times(args)
  s = ""
  for k in args
    s = s*string(k)*"\t"
  end
  s = s*"\n"
  write(f,s)
end

function measure_axpy(m,n,alpha,propertyA)
  propertyB = [Shape.General,Properties.Random]
  A = generate([n,m],propertyA)
  A = convert(Array{Float64,2},A)
  B = generate([n,m],propertyB)
  B = convert(Array{Float64,2},B)
  axpy!(alpha,A,B)
  A = nothing
  B = nothing

  A = generate([n,m],propertyA)
  A = convert(Array{Float64,2},A)
  B = generate([n,m],propertyB)
  B = convert(Array{Float64,2},B)
  start = time_ns()
  axpy!(alpha,A,B)
  finish = time_ns()
  time = (finish-start)*1e-9
  A = nothing
  B = nothing

  write_times([m,n,alpha,propertyA,time])
  GC.gc()
end


function main()

	
	measure_axpy(122,80,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1359,1031,0.7765481551127003,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1407,1370,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1428,1357,0.16967931757556431,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1039,1462,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1446,430,1.0,[Shape.General, Properties.Random])


	measure_axpy(68,209,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(51,308,0.16278543037679305,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(720,666,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1295,1439,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(900,742,1.0,[Shape.General, Properties.Random])


	measure_axpy(1305,1298,1.0,[Shape.General, Properties.Random])


	measure_axpy(723,59,0.15229276523826918,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1422,682,1.0,[Shape.General, Properties.Random])


	measure_axpy(1209,53,1.0,[Shape.General, Properties.Random])


	measure_axpy(843,255,0.2860219010270375,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(161,1157,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(69,75,1.0,[Shape.General, Properties.Random])


	measure_axpy(99,52,1.0,[Shape.General, Properties.Random])


	measure_axpy(220,815,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(646,864,1.0,[Shape.General, Properties.Random])


	measure_axpy(91,425,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(93,416,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(298,941,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(64,1338,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(814,909,1.0,[Shape.General, Properties.Random])


	measure_axpy(90,255,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1016,86,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(50,1202,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(505,1441,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(54,91,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(127,438,1.0,[Shape.General, Properties.Random])


	measure_axpy(1292,188,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(85,1058,0.37165236252810974,[Shape.General, Properties.Random])


	measure_axpy(1075,286,1.0,[Shape.General, Properties.Random])


	measure_axpy(943,889,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(69,223,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(966,75,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(444,629,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(600,742,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(902,72,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1263,1153,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(74,1415,1.0,[Shape.General, Properties.Random])


	measure_axpy(1091,97,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1042,1328,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(84,1237,0.8593702717855464,[Shape.General, Properties.Random])


	measure_axpy(362,842,1.0,[Shape.General, Properties.Random])


	measure_axpy(1195,660,0.3758329663247464,[Shape.General, Properties.Random])


	measure_axpy(648,86,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1448,1454,0.6564682520184422,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 50/500
" 

	measure_axpy(233,507,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(576,89,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(71,1307,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(145,1398,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(838,903,0.7300554800806851,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1283,1273,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1268,71,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(97,89,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1194,1314,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1426,432,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(109,55,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(714,597,1.0,[Shape.General, Properties.Random])


	measure_axpy(90,77,0.6206305427327429,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(678,712,0.10901955885440995,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(830,725,1.0,[Shape.General, Properties.Random])


	measure_axpy(62,1379,1.0,[Shape.General, Properties.Random])


	measure_axpy(1206,98,0.6977666865160334,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(686,84,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(695,1307,1.0,[Shape.General, Properties.Random])


	measure_axpy(1145,96,1.0,[Shape.General, Properties.Random])


	measure_axpy(121,90,1.0,[Shape.General, Properties.Random])


	measure_axpy(96,85,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(471,608,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1283,57,1.0,[Shape.General, Properties.Random])


	measure_axpy(457,860,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(89,989,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(67,1400,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(62,293,1.0,[Shape.General, Properties.Random])


	measure_axpy(1407,658,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(801,1157,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(538,1464,0.18155109862808505,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(57,1218,1.0,[Shape.General, Properties.Random])


	measure_axpy(1423,1325,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(989,56,0.7030884120240999,[Shape.General, Properties.Random])


	measure_axpy(342,1437,0.9752478298140554,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(97,1438,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(762,62,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(91,87,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1114,57,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(345,1046,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(66,262,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(50,1444,0.13787631324453797,[Shape.General, Properties.Random])


	measure_axpy(1195,282,1.0,[Shape.General, Properties.Random])


	measure_axpy(76,1063,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(63,1461,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1200,72,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1325,59,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1439,853,1.0,[Shape.General, Properties.Random])


	measure_axpy(62,1179,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1268,665,1.0,[Shape.General, Properties.Random])


@printf "Completed 100/500
" 

	measure_axpy(696,491,0.7601111459362361,[Shape.General, Properties.Random])


	measure_axpy(516,78,0.6835109742640264,[Shape.General, Properties.Random])


	measure_axpy(1489,1292,0.1517413662936089,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(59,81,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1491,56,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(329,440,0.9926840925617518,[Shape.General, Properties.Random])


	measure_axpy(1352,1033,0.1539802341882739,[Shape.General, Properties.Random])


	measure_axpy(1126,1187,0.6721327308343952,[Shape.General, Properties.Random])


	measure_axpy(376,981,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1274,563,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(82,713,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1078,1029,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1384,1088,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(573,632,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(118,1420,0.1595410839571365,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(638,62,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(57,1274,0.5622810169567387,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(776,1227,0.8461149059672184,[Shape.General, Properties.Random])


	measure_axpy(1325,942,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(84,1391,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(569,61,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(109,1203,0.29961608472041557,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(85,459,1.0,[Shape.General, Properties.Random])


	measure_axpy(976,723,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(78,514,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(787,1417,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(79,435,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(73,251,1.0,[Shape.General, Properties.Random])


	measure_axpy(745,929,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1481,1135,0.9159078626789365,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(83,380,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1434,1141,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(909,1182,1.0,[Shape.General, Properties.Random])


	measure_axpy(1293,78,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1241,979,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(446,833,0.40377770486415343,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(500,555,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1386,1444,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1288,61,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1106,502,0.013867114755604204,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(785,1254,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1297,50,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(981,818,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1329,69,1.0,[Shape.General, Properties.Random])


	measure_axpy(319,1290,1.0,[Shape.General, Properties.Random])


	measure_axpy(1493,1012,1.0,[Shape.General, Properties.Random])


	measure_axpy(77,99,0.7635517786967758,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1458,1181,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1339,1255,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(73,1119,0.8001035493141491,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 150/500
" 

	measure_axpy(1094,84,1.0,[Shape.General, Properties.Random])


	measure_axpy(542,803,0.9010432317919387,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1243,626,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(55,1408,1.0,[Shape.General, Properties.Random])


	measure_axpy(216,404,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1006,80,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1482,86,1.0,[Shape.General, Properties.Random])


	measure_axpy(1295,259,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1061,57,0.2998970507415252,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1411,1448,0.9143545655346971,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(56,148,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(959,1038,0.2626804104022591,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(510,54,1.0,[Shape.General, Properties.Random])


	measure_axpy(1471,1022,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(891,361,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(93,70,1.0,[Shape.General, Properties.Random])


	measure_axpy(923,1411,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(60,426,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1397,523,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1110,72,0.7419813491328762,[Shape.General, Properties.Random])


	measure_axpy(239,954,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(666,631,0.7724092964926283,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1309,828,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1328,1487,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(88,99,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1290,65,0.7982272251030126,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(66,1048,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(54,116,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(67,688,1.0,[Shape.General, Properties.Random])


	measure_axpy(1410,810,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1043,147,1.0,[Shape.General, Properties.Random])


	measure_axpy(996,1031,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1140,1219,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(238,60,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(828,86,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(71,1352,1.0,[Shape.General, Properties.Random])


	measure_axpy(62,85,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1486,62,1.0,[Shape.General, Properties.Random])


	measure_axpy(1258,1279,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1402,197,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(799,1033,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1106,71,0.755907711839837,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(114,802,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(63,488,1.0,[Shape.General, Properties.Random])


	measure_axpy(1230,85,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(71,403,1.0,[Shape.General, Properties.Random])


	measure_axpy(1075,455,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1159,1348,1.0,[Shape.General, Properties.Random])


	measure_axpy(927,728,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1397,1391,1.0,[Shape.General, Properties.Random])


@printf "Completed 200/500
" 

	measure_axpy(77,818,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1320,1241,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(526,895,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1142,1167,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1242,1080,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(55,1265,0.6807101011205122,[Shape.General, Properties.Random])


	measure_axpy(1485,735,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(830,1284,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(585,859,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(60,1347,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1219,476,0.9142540165603771,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(472,1137,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(515,461,1.0,[Shape.General, Properties.Random])


	measure_axpy(1296,780,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(93,73,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1008,794,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(535,131,0.7802494155472111,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(82,1190,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(70,794,0.2547670952023313,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1466,1248,1.0,[Shape.General, Properties.Random])


	measure_axpy(1261,560,1.0,[Shape.General, Properties.Random])


	measure_axpy(75,1223,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(440,1359,1.0,[Shape.General, Properties.Random])


	measure_axpy(99,1286,1.0,[Shape.General, Properties.Random])


	measure_axpy(585,1278,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1423,898,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1278,1458,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(219,375,1.0,[Shape.General, Properties.Random])


	measure_axpy(496,72,1.0,[Shape.General, Properties.Random])


	measure_axpy(399,968,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(574,800,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1478,1428,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(401,276,0.8520539481566742,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(180,1320,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(153,221,1.0,[Shape.General, Properties.Random])


	measure_axpy(1193,978,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(356,1467,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(94,64,1.0,[Shape.General, Properties.Random])


	measure_axpy(1256,1104,1.0,[Shape.General, Properties.Random])


	measure_axpy(241,1202,1.0,[Shape.General, Properties.Random])


	measure_axpy(91,735,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(416,1235,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(384,1249,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(73,617,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1122,768,0.6816091037759527,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1287,900,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1209,392,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1328,71,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(56,1001,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1157,704,1.0,[Shape.General, Properties.Constant(3.0)])


@printf "Completed 250/500
" 

	measure_axpy(400,70,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1226,1218,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(658,81,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(84,1063,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(73,698,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(921,1297,1.0,[Shape.General, Properties.Random])


	measure_axpy(927,130,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(821,1333,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(50,1080,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1290,102,0.13862643451317136,[Shape.General, Properties.Random])


	measure_axpy(1483,94,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(184,1403,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1365,489,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(83,98,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1050,1322,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(359,80,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(856,416,0.16553157414224406,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1372,890,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(446,93,1.0,[Shape.General, Properties.Random])


	measure_axpy(1210,60,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1108,1483,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1473,1195,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(802,694,0.2756854948190156,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(68,1398,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(92,1008,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(90,66,0.057503683896851676,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1052,476,0.9163020689550324,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(179,777,0.3971415930780616,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(65,747,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(527,203,0.2289614436408327,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(80,438,1.0,[Shape.General, Properties.Random])


	measure_axpy(1447,1296,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(691,1428,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1281,71,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(119,644,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1414,563,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(795,797,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(565,62,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1358,734,0.5816624583354614,[Shape.General, Properties.Random])


	measure_axpy(73,1482,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1433,1386,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(61,54,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1134,788,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(268,96,1.0,[Shape.General, Properties.Random])


	measure_axpy(1205,1337,0.9856472632387904,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(367,797,0.5964107455350048,[Shape.General, Properties.Random])


	measure_axpy(309,59,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(78,893,0.6013696315931208,[Shape.General, Properties.Random])


	measure_axpy(1362,88,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(969,197,1.0,[Shape.General, Properties.Random])


@printf "Completed 300/500
" 

	measure_axpy(1447,1498,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(79,1452,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(69,93,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(86,626,0.9338834938346614,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1296,511,0.706602902169648,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1301,1477,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(343,275,0.7063166022402952,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(222,247,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1305,62,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(54,777,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1484,1173,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(254,129,0.3507856043343057,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(576,73,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(704,1236,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1356,925,0.1115538690766621,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1317,63,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(420,1353,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1025,1414,1.0,[Shape.General, Properties.Random])


	measure_axpy(1058,859,1.0,[Shape.General, Properties.Random])


	measure_axpy(58,451,0.5355433054318445,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1172,1295,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1000,175,0.0771638537261915,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(80,757,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(893,54,0.9584643906524832,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1389,90,1.0,[Shape.General, Properties.Random])


	measure_axpy(912,73,1.0,[Shape.General, Properties.Random])


	measure_axpy(66,1227,0.6609559195839478,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1137,87,1.0,[Shape.General, Properties.Random])


	measure_axpy(63,103,0.8234734141600771,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(52,1232,0.35636219312277795,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(536,1442,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(518,1266,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1361,98,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1139,686,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1076,90,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1392,1022,0.9212236897186367,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(864,1241,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(966,224,0.32090235705218917,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(96,863,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(736,1452,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(229,503,0.34815670669520604,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1352,716,0.14366835337249173,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(142,84,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1139,877,1.0,[Shape.General, Properties.Random])


	measure_axpy(1018,558,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(977,1474,1.0,[Shape.General, Properties.Random])


	measure_axpy(1218,365,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(925,184,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(746,1484,0.7750116778245126,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(905,58,1.0,[Shape.General, Properties.Random])


@printf "Completed 350/500
" 

	measure_axpy(248,1232,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(78,64,1.0,[Shape.General, Properties.Random])


	measure_axpy(82,60,0.1034519104002315,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(599,194,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(698,803,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(472,111,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1040,517,0.3210361085415251,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1495,64,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1141,1328,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(652,686,0.2744533126839346,[Shape.General, Properties.Random])


	measure_axpy(72,1174,0.06052534869658399,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(64,1462,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(123,325,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1078,272,1.0,[Shape.General, Properties.Random])


	measure_axpy(279,665,0.2145106562871305,[Shape.General, Properties.Random])


	measure_axpy(1438,692,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1021,55,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(676,1240,0.25382023272422716,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1402,1394,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1141,96,0.6019731663254555,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(813,1249,1.0,[Shape.General, Properties.Random])


	measure_axpy(80,67,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(56,1123,0.8531901385324084,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1141,1242,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1176,85,0.8818969677003948,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(56,62,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1349,465,1.0,[Shape.General, Properties.Random])


	measure_axpy(1146,1142,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(96,526,0.7956501890815177,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(298,1121,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1414,80,1.0,[Shape.General, Properties.Random])


	measure_axpy(1388,1482,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1302,372,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(88,77,0.5023580153143228,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(972,424,1.0,[Shape.General, Properties.Random])


	measure_axpy(829,1418,1.0,[Shape.General, Properties.Random])


	measure_axpy(688,88,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(63,278,0.8979130719906089,[Shape.General, Properties.Random])


	measure_axpy(425,312,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(929,409,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(643,1409,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1011,81,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1300,1491,0.2731323958655115,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1176,77,0.3626503428600891,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(86,1043,1.0,[Shape.General, Properties.Random])


	measure_axpy(99,1089,0.060736726034949506,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(550,58,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(159,1248,1.0,[Shape.General, Properties.Random])


	measure_axpy(1268,1455,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(82,95,1.0,[Shape.LowerTriangular, Properties.Random])


@printf "Completed 400/500
" 

	measure_axpy(458,76,1.0,[Shape.General, Properties.Random])


	measure_axpy(481,89,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(83,76,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1296,665,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1331,706,1.0,[Shape.General, Properties.Random])


	measure_axpy(273,54,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1335,1494,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1486,90,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1413,989,0.2627894907825167,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(96,1355,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1116,713,0.36910427558245507,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(759,1240,0.2292450634026254,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(64,1293,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1160,1482,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(424,980,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(73,349,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(88,59,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1302,598,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(835,57,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(488,74,0.7265312383569938,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(97,1257,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(82,1061,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(469,1226,1.0,[Shape.General, Properties.Random])


	measure_axpy(53,1071,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(323,1251,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(209,56,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1126,937,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(62,759,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(847,73,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(658,1115,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1018,912,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(139,676,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(444,1442,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1283,835,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1098,75,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(66,654,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(914,89,1.0,[Shape.General, Properties.Random])


	measure_axpy(894,546,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(73,1247,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(58,57,0.7066799309830802,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1067,59,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(288,1486,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(862,604,0.3026216367179143,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(55,615,1.0,[Shape.General, Properties.Random])


	measure_axpy(722,312,0.9794870292815102,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(63,73,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(64,677,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(940,1325,1.0,[Shape.General, Properties.Random])


	measure_axpy(70,1000,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(74,1063,1.0,[Shape.General, Properties.Random])


@printf "Completed 450/500
" 

	measure_axpy(297,1227,1.0,[Shape.General, Properties.Random])


	measure_axpy(1178,1498,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1270,688,1.0,[Shape.General, Properties.Random])


	measure_axpy(849,865,1.0,[Shape.General, Properties.Random])


	measure_axpy(440,749,1.0,[Shape.General, Properties.Random])


	measure_axpy(57,1311,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(288,896,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1382,1451,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(593,855,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1407,71,1.0,[Shape.General, Properties.Random])


	measure_axpy(61,1196,1.0,[Shape.General, Properties.Random])


	measure_axpy(58,58,1.0,[Shape.General, Properties.Random])


	measure_axpy(1260,1247,0.03508479659000019,[Shape.General, Properties.Random])


	measure_axpy(965,1302,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(240,119,0.7494490723811469,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1371,481,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(60,1207,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(294,80,1.0,[Shape.General, Properties.Random])


	measure_axpy(1005,80,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1311,54,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1200,572,1.0,[Shape.General, Properties.Random])


	measure_axpy(886,373,0.39356234036066706,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(98,991,0.9252706168804066,[Shape.General, Properties.Random])


	measure_axpy(1085,113,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(109,61,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(956,365,0.44529944429364476,[Shape.General, Properties.Random])


	measure_axpy(820,666,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(59,58,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1031,821,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(406,1011,1.0,[Shape.General, Properties.Random])


	measure_axpy(1397,554,0.2476977426622179,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1346,950,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1425,424,0.49324302365272277,[Shape.General, Properties.Random])


	measure_axpy(382,527,1.0,[Shape.General, Properties.Random])


	measure_axpy(1388,613,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(269,1082,1.0,[Shape.General, Properties.Constant(3.0)])


	measure_axpy(1435,216,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(634,396,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(503,939,1.0,[Shape.General, Properties.Random])


	measure_axpy(697,1335,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(1411,56,1.0,[Shape.General, Properties.Random])


	measure_axpy(927,1368,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(1258,93,1.0,[Shape.LowerTriangular, Properties.Random])


	measure_axpy(365,51,1.0,[Shape.General, Properties.Random])


	measure_axpy(696,1498,1.0,[Shape.UpperTriangular, Properties.Random])


	measure_axpy(75,54,1.0,[Shape.UpperTriangular, Properties.Random])


end

main()
