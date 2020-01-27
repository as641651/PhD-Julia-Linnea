using LinearAlgebra.BLAS
using LinearAlgebra
using MatrixGenerator
using Printf

BLAS.set_num_threads(8)

f = open("/home/user/experiments_tensorflow/julia_measurements/measurements_data/qr_out.txt","w")

function write_times(args)
  s = ""
  for k in args
    s = s*string(k)*"\t"
  end
  s = s*"\n"
  write(f,s)
end

function measure_qr(m,n,property)
  A = generate([m,n],property)
  A = convert(Array{Float64,2},A)
  qr!(A)
  A = nothing

  A = generate([m,n],property)
  A = convert(Array{Float64,2},A)
  start = time_ns()
  qr!(A)
  finish = time_ns()
  time = (finish-start)*1e-9
  A = nothing

  write_times([m,n,property,time])
  GC.gc()
end


function main()

	
	measure_qr(81,1344,[Shape.General, Properties.Random])


	measure_qr(1164,1380,[Shape.UpperTriangular, Properties.Random])


	measure_qr(795,1208,[Shape.General, Properties.Constant(3.0)])


	measure_qr(92,940,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1211,1018,[Shape.General, Properties.Random])


	measure_qr(984,64,[Shape.General, Properties.Constant(3.0)])


	measure_qr(792,870,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1435,358,[Shape.UpperTriangular, Properties.Random])


	measure_qr(808,1103,[Shape.General, Properties.Constant(3.0)])


	measure_qr(60,1025,[Shape.General, Properties.Random])


	measure_qr(74,1417,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1264,301,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1306,71,[Shape.General, Properties.Random])


	measure_qr(82,1188,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1024,1198,[Shape.UpperTriangular, Properties.Random])


	measure_qr(539,843,[Shape.UpperTriangular, Properties.Random])


	measure_qr(500,574,[Shape.General, Properties.Random])


	measure_qr(59,398,[Shape.UpperTriangular, Properties.Random])


	measure_qr(390,1400,[Shape.General, Properties.Random])


	measure_qr(1393,1486,[Shape.UpperTriangular, Properties.Random])


	measure_qr(463,1054,[Shape.UpperTriangular, Properties.Random])


	measure_qr(63,106,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1485,547,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1331,1304,[Shape.General, Properties.Random])


	measure_qr(54,725,[Shape.UpperTriangular, Properties.Random])


	measure_qr(195,591,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1323,1127,[Shape.General, Properties.Random])


	measure_qr(1457,661,[Shape.General, Properties.Random])


	measure_qr(309,1246,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1403,702,[Shape.General, Properties.Random])


	measure_qr(1335,943,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1386,1341,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1452,56,[Shape.General, Properties.Random])


	measure_qr(1435,60,[Shape.General, Properties.Constant(3.0)])


	measure_qr(475,1215,[Shape.General, Properties.Random])


	measure_qr(456,309,[Shape.UpperTriangular, Properties.Random])


	measure_qr(974,905,[Shape.General, Properties.Random])


	measure_qr(80,186,[Shape.General, Properties.Random])


	measure_qr(54,1310,[Shape.General, Properties.Random])


	measure_qr(1478,662,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1364,1298,[Shape.General, Properties.Constant(3.0)])


	measure_qr(64,73,[Shape.General, Properties.Random])


	measure_qr(805,52,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1183,772,[Shape.General, Properties.Random])


	measure_qr(874,1495,[Shape.General, Properties.Random])


	measure_qr(788,588,[Shape.General, Properties.Random])


	measure_qr(55,394,[Shape.General, Properties.Random])


	measure_qr(1263,286,[Shape.General, Properties.Constant(3.0)])


	measure_qr(674,1412,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1210,1470,[Shape.General, Properties.Constant(3.0)])


@printf "Completed 50/500
" 

	measure_qr(76,477,[Shape.General, Properties.Constant(3.0)])


	measure_qr(73,70,[Shape.General, Properties.Random])


	measure_qr(1216,1008,[Shape.UpperTriangular, Properties.Random])


	measure_qr(192,185,[Shape.General, Properties.Constant(3.0)])


	measure_qr(828,1230,[Shape.General, Properties.Random])


	measure_qr(1458,913,[Shape.General, Properties.Constant(3.0)])


	measure_qr(161,1116,[Shape.General, Properties.Random])


	measure_qr(713,859,[Shape.General, Properties.Random])


	measure_qr(90,286,[Shape.General, Properties.Random])


	measure_qr(50,138,[Shape.UpperTriangular, Properties.Random])


	measure_qr(750,503,[Shape.General, Properties.Random])


	measure_qr(1468,93,[Shape.General, Properties.Random])


	measure_qr(763,83,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1242,464,[Shape.General, Properties.Constant(3.0)])


	measure_qr(773,110,[Shape.UpperTriangular, Properties.Random])


	measure_qr(82,79,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1258,1055,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1431,73,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1236,1226,[Shape.General, Properties.Random])


	measure_qr(1166,1312,[Shape.General, Properties.Constant(3.0)])


	measure_qr(61,87,[Shape.General, Properties.Random])


	measure_qr(61,353,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1429,934,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1080,1043,[Shape.General, Properties.Constant(3.0)])


	measure_qr(864,857,[Shape.General, Properties.Random])


	measure_qr(676,705,[Shape.UpperTriangular, Properties.Random])


	measure_qr(816,404,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1245,782,[Shape.UpperTriangular, Properties.Random])


	measure_qr(89,1452,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1309,191,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1116,248,[Shape.General, Properties.Random])


	measure_qr(636,71,[Shape.General, Properties.Random])


	measure_qr(1275,339,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1318,94,[Shape.General, Properties.Random])


	measure_qr(715,1231,[Shape.UpperTriangular, Properties.Random])


	measure_qr(423,1235,[Shape.UpperTriangular, Properties.Random])


	measure_qr(263,991,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1451,1474,[Shape.General, Properties.Random])


	measure_qr(58,1001,[Shape.General, Properties.Random])


	measure_qr(64,941,[Shape.General, Properties.Constant(3.0)])


	measure_qr(698,1485,[Shape.General, Properties.Constant(3.0)])


	measure_qr(64,87,[Shape.UpperTriangular, Properties.Random])


	measure_qr(374,161,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1272,1289,[Shape.UpperTriangular, Properties.Random])


	measure_qr(90,1164,[Shape.UpperTriangular, Properties.Random])


	measure_qr(85,1426,[Shape.UpperTriangular, Properties.Random])


	measure_qr(531,1235,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1387,154,[Shape.UpperTriangular, Properties.Random])


	measure_qr(224,497,[Shape.General, Properties.Random])


	measure_qr(638,772,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 100/500
" 

	measure_qr(1269,1463,[Shape.General, Properties.Constant(3.0)])


	measure_qr(483,1448,[Shape.General, Properties.Random])


	measure_qr(1214,766,[Shape.UpperTriangular, Properties.Random])


	measure_qr(62,81,[Shape.UpperTriangular, Properties.Random])


	measure_qr(811,50,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1378,615,[Shape.UpperTriangular, Properties.Random])


	measure_qr(365,54,[Shape.General, Properties.Random])


	measure_qr(551,1481,[Shape.UpperTriangular, Properties.Random])


	measure_qr(53,150,[Shape.General, Properties.Random])


	measure_qr(1284,1089,[Shape.General, Properties.Random])


	measure_qr(177,941,[Shape.UpperTriangular, Properties.Random])


	measure_qr(68,53,[Shape.UpperTriangular, Properties.Random])


	measure_qr(431,1112,[Shape.General, Properties.Random])


	measure_qr(746,1301,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1383,80,[Shape.UpperTriangular, Properties.Random])


	measure_qr(77,54,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1355,805,[Shape.General, Properties.Constant(3.0)])


	measure_qr(518,732,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1216,55,[Shape.UpperTriangular, Properties.Random])


	measure_qr(87,977,[Shape.UpperTriangular, Properties.Random])


	measure_qr(93,1206,[Shape.UpperTriangular, Properties.Random])


	measure_qr(53,1169,[Shape.General, Properties.Random])


	measure_qr(1389,58,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1038,1157,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1207,97,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1344,987,[Shape.UpperTriangular, Properties.Random])


	measure_qr(860,63,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1482,64,[Shape.General, Properties.Random])


	measure_qr(97,1210,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1216,98,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1170,50,[Shape.General, Properties.Constant(3.0)])


	measure_qr(523,68,[Shape.General, Properties.Constant(3.0)])


	measure_qr(243,847,[Shape.UpperTriangular, Properties.Random])


	measure_qr(54,1270,[Shape.General, Properties.Constant(3.0)])


	measure_qr(80,1048,[Shape.General, Properties.Constant(3.0)])


	measure_qr(73,914,[Shape.General, Properties.Constant(3.0)])


	measure_qr(62,1199,[Shape.General, Properties.Random])


	measure_qr(813,68,[Shape.General, Properties.Random])


	measure_qr(231,63,[Shape.General, Properties.Random])


	measure_qr(1398,1459,[Shape.UpperTriangular, Properties.Random])


	measure_qr(736,87,[Shape.General, Properties.Random])


	measure_qr(1158,56,[Shape.General, Properties.Random])


	measure_qr(1203,858,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1164,1407,[Shape.General, Properties.Constant(3.0)])


	measure_qr(979,984,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1233,1498,[Shape.General, Properties.Random])


	measure_qr(81,251,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1142,495,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1083,63,[Shape.General, Properties.Random])


	measure_qr(1216,1302,[Shape.General, Properties.Random])


@printf "Completed 150/500
" 

	measure_qr(503,1402,[Shape.UpperTriangular, Properties.Random])


	measure_qr(336,767,[Shape.General, Properties.Constant(3.0)])


	measure_qr(640,571,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1040,471,[Shape.General, Properties.Constant(3.0)])


	measure_qr(62,449,[Shape.UpperTriangular, Properties.Random])


	measure_qr(63,78,[Shape.General, Properties.Constant(3.0)])


	measure_qr(95,57,[Shape.General, Properties.Random])


	measure_qr(94,520,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1392,75,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1158,674,[Shape.UpperTriangular, Properties.Random])


	measure_qr(502,958,[Shape.General, Properties.Random])


	measure_qr(97,54,[Shape.General, Properties.Constant(3.0)])


	measure_qr(61,1216,[Shape.General, Properties.Constant(3.0)])


	measure_qr(422,1289,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1303,56,[Shape.UpperTriangular, Properties.Random])


	measure_qr(183,1362,[Shape.General, Properties.Random])


	measure_qr(1497,1140,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1374,1273,[Shape.General, Properties.Random])


	measure_qr(505,1178,[Shape.General, Properties.Random])


	measure_qr(51,1434,[Shape.General, Properties.Random])


	measure_qr(63,1295,[Shape.General, Properties.Constant(3.0)])


	measure_qr(302,924,[Shape.General, Properties.Random])


	measure_qr(326,74,[Shape.General, Properties.Random])


	measure_qr(93,1456,[Shape.UpperTriangular, Properties.Random])


	measure_qr(88,256,[Shape.General, Properties.Random])


	measure_qr(97,691,[Shape.General, Properties.Random])


	measure_qr(714,96,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1153,579,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1260,82,[Shape.UpperTriangular, Properties.Random])


	measure_qr(71,495,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1376,646,[Shape.UpperTriangular, Properties.Random])


	measure_qr(282,678,[Shape.General, Properties.Random])


	measure_qr(934,1139,[Shape.UpperTriangular, Properties.Random])


	measure_qr(220,1231,[Shape.General, Properties.Constant(3.0)])


	measure_qr(58,84,[Shape.General, Properties.Random])


	measure_qr(71,1428,[Shape.General, Properties.Random])


	measure_qr(1436,1031,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1444,98,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1095,1461,[Shape.General, Properties.Random])


	measure_qr(94,112,[Shape.General, Properties.Random])


	measure_qr(1324,1428,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1425,85,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1115,75,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1162,807,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1346,1267,[Shape.UpperTriangular, Properties.Random])


	measure_qr(856,939,[Shape.General, Properties.Constant(3.0)])


	measure_qr(237,98,[Shape.General, Properties.Constant(3.0)])


	measure_qr(384,1281,[Shape.General, Properties.Constant(3.0)])


	measure_qr(803,385,[Shape.General, Properties.Constant(3.0)])


	measure_qr(560,73,[Shape.General, Properties.Random])


@printf "Completed 200/500
" 

	measure_qr(416,1432,[Shape.General, Properties.Constant(3.0)])


	measure_qr(77,1161,[Shape.UpperTriangular, Properties.Random])


	measure_qr(84,1378,[Shape.General, Properties.Random])


	measure_qr(727,854,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1460,674,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1066,374,[Shape.UpperTriangular, Properties.Random])


	measure_qr(787,871,[Shape.General, Properties.Random])


	measure_qr(1081,883,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1137,565,[Shape.General, Properties.Constant(3.0)])


	measure_qr(109,67,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1326,75,[Shape.General, Properties.Random])


	measure_qr(912,1451,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1283,365,[Shape.UpperTriangular, Properties.Random])


	measure_qr(170,245,[Shape.General, Properties.Random])


	measure_qr(66,1308,[Shape.General, Properties.Random])


	measure_qr(1291,1368,[Shape.General, Properties.Random])


	measure_qr(60,50,[Shape.General, Properties.Random])


	measure_qr(264,1246,[Shape.UpperTriangular, Properties.Random])


	measure_qr(524,902,[Shape.UpperTriangular, Properties.Random])


	measure_qr(75,866,[Shape.UpperTriangular, Properties.Random])


	measure_qr(731,161,[Shape.General, Properties.Constant(3.0)])


	measure_qr(688,98,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1348,519,[Shape.General, Properties.Random])


	measure_qr(757,503,[Shape.General, Properties.Random])


	measure_qr(559,240,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1467,303,[Shape.General, Properties.Random])


	measure_qr(1450,192,[Shape.General, Properties.Random])


	measure_qr(1239,51,[Shape.General, Properties.Constant(3.0)])


	measure_qr(262,363,[Shape.UpperTriangular, Properties.Random])


	measure_qr(61,1255,[Shape.General, Properties.Random])


	measure_qr(360,53,[Shape.UpperTriangular, Properties.Random])


	measure_qr(335,78,[Shape.UpperTriangular, Properties.Random])


	measure_qr(803,936,[Shape.General, Properties.Random])


	measure_qr(51,50,[Shape.General, Properties.Random])


	measure_qr(1370,68,[Shape.General, Properties.Random])


	measure_qr(901,918,[Shape.General, Properties.Random])


	measure_qr(225,698,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1235,1115,[Shape.General, Properties.Random])


	measure_qr(946,1456,[Shape.General, Properties.Random])


	measure_qr(1382,102,[Shape.UpperTriangular, Properties.Random])


	measure_qr(405,1029,[Shape.General, Properties.Constant(3.0)])


	measure_qr(96,1276,[Shape.General, Properties.Random])


	measure_qr(1449,1302,[Shape.General, Properties.Random])


	measure_qr(809,761,[Shape.General, Properties.Random])


	measure_qr(661,58,[Shape.General, Properties.Random])


	measure_qr(128,1384,[Shape.UpperTriangular, Properties.Random])


	measure_qr(846,1368,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1125,242,[Shape.General, Properties.Constant(3.0)])


	measure_qr(89,943,[Shape.UpperTriangular, Properties.Random])


	measure_qr(90,91,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 250/500
" 

	measure_qr(799,58,[Shape.UpperTriangular, Properties.Random])


	measure_qr(577,1243,[Shape.General, Properties.Constant(3.0)])


	measure_qr(52,1414,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1251,1171,[Shape.General, Properties.Random])


	measure_qr(369,1452,[Shape.UpperTriangular, Properties.Random])


	measure_qr(610,1350,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1105,1284,[Shape.General, Properties.Random])


	measure_qr(1197,226,[Shape.General, Properties.Random])


	measure_qr(672,84,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1247,83,[Shape.General, Properties.Random])


	measure_qr(94,311,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1240,1244,[Shape.General, Properties.Constant(3.0)])


	measure_qr(834,51,[Shape.General, Properties.Random])


	measure_qr(558,1237,[Shape.General, Properties.Random])


	measure_qr(657,756,[Shape.UpperTriangular, Properties.Random])


	measure_qr(589,515,[Shape.UpperTriangular, Properties.Random])


	measure_qr(261,1021,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1383,1485,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1324,1211,[Shape.General, Properties.Random])


	measure_qr(272,55,[Shape.UpperTriangular, Properties.Random])


	measure_qr(71,1188,[Shape.General, Properties.Random])


	measure_qr(59,1243,[Shape.General, Properties.Random])


	measure_qr(1109,1338,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1119,697,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1151,564,[Shape.UpperTriangular, Properties.Random])


	measure_qr(380,1145,[Shape.General, Properties.Constant(3.0)])


	measure_qr(908,77,[Shape.UpperTriangular, Properties.Random])


	measure_qr(537,95,[Shape.UpperTriangular, Properties.Random])


	measure_qr(309,249,[Shape.General, Properties.Random])


	measure_qr(1331,55,[Shape.General, Properties.Random])


	measure_qr(70,352,[Shape.General, Properties.Random])


	measure_qr(1213,1459,[Shape.General, Properties.Constant(3.0)])


	measure_qr(329,1199,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1339,1386,[Shape.General, Properties.Constant(3.0)])


	measure_qr(340,911,[Shape.General, Properties.Constant(3.0)])


	measure_qr(53,1411,[Shape.General, Properties.Random])


	measure_qr(1435,885,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1177,1400,[Shape.General, Properties.Random])


	measure_qr(189,514,[Shape.General, Properties.Random])


	measure_qr(1215,1031,[Shape.General, Properties.Random])


	measure_qr(55,634,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1330,54,[Shape.General, Properties.Constant(3.0)])


	measure_qr(209,1323,[Shape.UpperTriangular, Properties.Random])


	measure_qr(56,1164,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1162,422,[Shape.UpperTriangular, Properties.Random])


	measure_qr(599,1467,[Shape.General, Properties.Random])


	measure_qr(974,211,[Shape.General, Properties.Constant(3.0)])


	measure_qr(757,61,[Shape.General, Properties.Random])


	measure_qr(1162,1451,[Shape.General, Properties.Constant(3.0)])


	measure_qr(74,55,[Shape.General, Properties.Constant(3.0)])


@printf "Completed 300/500
" 

	measure_qr(416,1236,[Shape.General, Properties.Constant(3.0)])


	measure_qr(68,690,[Shape.General, Properties.Constant(3.0)])


	measure_qr(737,1299,[Shape.General, Properties.Random])


	measure_qr(777,77,[Shape.General, Properties.Random])


	measure_qr(1407,1143,[Shape.General, Properties.Constant(3.0)])


	measure_qr(87,1129,[Shape.General, Properties.Random])


	measure_qr(676,560,[Shape.UpperTriangular, Properties.Random])


	measure_qr(148,1211,[Shape.General, Properties.Random])


	measure_qr(1010,1108,[Shape.General, Properties.Random])


	measure_qr(745,51,[Shape.UpperTriangular, Properties.Random])


	measure_qr(288,1162,[Shape.UpperTriangular, Properties.Random])


	measure_qr(58,1347,[Shape.General, Properties.Random])


	measure_qr(1362,1442,[Shape.General, Properties.Random])


	measure_qr(90,90,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1379,74,[Shape.UpperTriangular, Properties.Random])


	measure_qr(706,774,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1159,599,[Shape.General, Properties.Random])


	measure_qr(94,608,[Shape.UpperTriangular, Properties.Random])


	measure_qr(919,81,[Shape.General, Properties.Random])


	measure_qr(523,66,[Shape.General, Properties.Random])


	measure_qr(1174,1485,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1185,1344,[Shape.General, Properties.Random])


	measure_qr(762,63,[Shape.UpperTriangular, Properties.Random])


	measure_qr(437,831,[Shape.General, Properties.Constant(3.0)])


	measure_qr(66,95,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1252,1498,[Shape.General, Properties.Random])


	measure_qr(86,1088,[Shape.General, Properties.Random])


	measure_qr(186,144,[Shape.General, Properties.Random])


	measure_qr(80,316,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1387,57,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1260,1415,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1463,680,[Shape.General, Properties.Constant(3.0)])


	measure_qr(812,1182,[Shape.General, Properties.Random])


	measure_qr(1292,1191,[Shape.General, Properties.Random])


	measure_qr(66,52,[Shape.General, Properties.Random])


	measure_qr(1491,308,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1324,1190,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1282,293,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1027,253,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1361,1378,[Shape.General, Properties.Random])


	measure_qr(916,85,[Shape.General, Properties.Random])


	measure_qr(565,97,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1349,80,[Shape.General, Properties.Random])


	measure_qr(646,584,[Shape.General, Properties.Random])


	measure_qr(79,695,[Shape.General, Properties.Random])


	measure_qr(889,880,[Shape.General, Properties.Constant(3.0)])


	measure_qr(360,1459,[Shape.UpperTriangular, Properties.Random])


	measure_qr(55,1225,[Shape.UpperTriangular, Properties.Random])


	measure_qr(670,579,[Shape.General, Properties.Random])


	measure_qr(395,681,[Shape.General, Properties.Random])


@printf "Completed 350/500
" 

	measure_qr(871,65,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1334,1247,[Shape.General, Properties.Random])


	measure_qr(1486,1092,[Shape.General, Properties.Constant(3.0)])


	measure_qr(261,632,[Shape.UpperTriangular, Properties.Random])


	measure_qr(961,60,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1301,1465,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1450,1444,[Shape.UpperTriangular, Properties.Random])


	measure_qr(54,92,[Shape.General, Properties.Constant(3.0)])


	measure_qr(71,920,[Shape.General, Properties.Constant(3.0)])


	measure_qr(97,50,[Shape.General, Properties.Random])


	measure_qr(1377,824,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1088,70,[Shape.General, Properties.Constant(3.0)])


	measure_qr(68,140,[Shape.General, Properties.Random])


	measure_qr(1033,1495,[Shape.UpperTriangular, Properties.Random])


	measure_qr(88,685,[Shape.General, Properties.Random])


	measure_qr(197,1312,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1376,62,[Shape.General, Properties.Constant(3.0)])


	measure_qr(894,68,[Shape.General, Properties.Random])


	measure_qr(1353,877,[Shape.General, Properties.Random])


	measure_qr(68,939,[Shape.General, Properties.Random])


	measure_qr(651,1406,[Shape.General, Properties.Random])


	measure_qr(1102,1444,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1439,1071,[Shape.General, Properties.Random])


	measure_qr(897,1362,[Shape.General, Properties.Random])


	measure_qr(65,1241,[Shape.General, Properties.Random])


	measure_qr(90,98,[Shape.General, Properties.Random])


	measure_qr(467,58,[Shape.General, Properties.Constant(3.0)])


	measure_qr(756,397,[Shape.General, Properties.Constant(3.0)])


	measure_qr(56,294,[Shape.General, Properties.Constant(3.0)])


	measure_qr(57,736,[Shape.General, Properties.Random])


	measure_qr(910,657,[Shape.UpperTriangular, Properties.Random])


	measure_qr(950,81,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1231,1085,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1002,1164,[Shape.UpperTriangular, Properties.Random])


	measure_qr(971,77,[Shape.General, Properties.Random])


	measure_qr(65,485,[Shape.General, Properties.Constant(3.0)])


	measure_qr(80,868,[Shape.General, Properties.Constant(3.0)])


	measure_qr(779,1111,[Shape.UpperTriangular, Properties.Random])


	measure_qr(50,92,[Shape.General, Properties.Random])


	measure_qr(394,634,[Shape.General, Properties.Constant(3.0)])


	measure_qr(471,1465,[Shape.General, Properties.Random])


	measure_qr(615,66,[Shape.General, Properties.Random])


	measure_qr(530,95,[Shape.UpperTriangular, Properties.Random])


	measure_qr(271,389,[Shape.General, Properties.Constant(3.0)])


	measure_qr(71,999,[Shape.UpperTriangular, Properties.Random])


	measure_qr(70,95,[Shape.UpperTriangular, Properties.Random])


	measure_qr(94,66,[Shape.UpperTriangular, Properties.Random])


	measure_qr(750,1202,[Shape.General, Properties.Constant(3.0)])


	measure_qr(62,1314,[Shape.General, Properties.Random])


	measure_qr(549,929,[Shape.General, Properties.Random])


@printf "Completed 400/500
" 

	measure_qr(373,292,[Shape.General, Properties.Constant(3.0)])


	measure_qr(90,1342,[Shape.General, Properties.Random])


	measure_qr(62,1475,[Shape.General, Properties.Constant(3.0)])


	measure_qr(74,776,[Shape.UpperTriangular, Properties.Random])


	measure_qr(83,58,[Shape.UpperTriangular, Properties.Random])


	measure_qr(97,50,[Shape.General, Properties.Constant(3.0)])


	measure_qr(653,184,[Shape.UpperTriangular, Properties.Random])


	measure_qr(304,1294,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1246,659,[Shape.General, Properties.Random])


	measure_qr(260,1056,[Shape.UpperTriangular, Properties.Random])


	measure_qr(604,275,[Shape.UpperTriangular, Properties.Random])


	measure_qr(702,1419,[Shape.General, Properties.Random])


	measure_qr(1467,96,[Shape.General, Properties.Random])


	measure_qr(1477,76,[Shape.UpperTriangular, Properties.Random])


	measure_qr(74,1434,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1053,1245,[Shape.UpperTriangular, Properties.Random])


	measure_qr(168,985,[Shape.General, Properties.Constant(3.0)])


	measure_qr(96,1025,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1393,357,[Shape.General, Properties.Random])


	measure_qr(814,165,[Shape.UpperTriangular, Properties.Random])


	measure_qr(357,63,[Shape.General, Properties.Random])


	measure_qr(803,257,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1436,348,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1042,1373,[Shape.UpperTriangular, Properties.Random])


	measure_qr(69,964,[Shape.UpperTriangular, Properties.Random])


	measure_qr(90,1031,[Shape.UpperTriangular, Properties.Random])


	measure_qr(69,1487,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1092,1334,[Shape.General, Properties.Constant(3.0)])


	measure_qr(253,187,[Shape.General, Properties.Random])


	measure_qr(377,328,[Shape.UpperTriangular, Properties.Random])


	measure_qr(318,803,[Shape.General, Properties.Constant(3.0)])


	measure_qr(426,81,[Shape.General, Properties.Constant(3.0)])


	measure_qr(296,99,[Shape.General, Properties.Random])


	measure_qr(998,453,[Shape.UpperTriangular, Properties.Random])


	measure_qr(434,1183,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1258,411,[Shape.General, Properties.Random])


	measure_qr(825,1347,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1396,376,[Shape.UpperTriangular, Properties.Random])


	measure_qr(149,89,[Shape.General, Properties.Random])


	measure_qr(1317,1236,[Shape.General, Properties.Constant(3.0)])


	measure_qr(370,380,[Shape.General, Properties.Constant(3.0)])


	measure_qr(525,524,[Shape.UpperTriangular, Properties.Random])


	measure_qr(407,407,[Shape.General, Properties.Random])


	measure_qr(1298,475,[Shape.UpperTriangular, Properties.Random])


	measure_qr(417,91,[Shape.General, Properties.Constant(3.0)])


	measure_qr(99,91,[Shape.UpperTriangular, Properties.Random])


	measure_qr(905,1107,[Shape.General, Properties.Constant(3.0)])


	measure_qr(765,708,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1160,192,[Shape.General, Properties.Random])


	measure_qr(88,609,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 450/500
" 

	measure_qr(1470,852,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1366,1490,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1266,877,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1001,765,[Shape.General, Properties.Constant(3.0)])


	measure_qr(133,1224,[Shape.General, Properties.Constant(3.0)])


	measure_qr(84,72,[Shape.UpperTriangular, Properties.Random])


	measure_qr(74,1286,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1113,1368,[Shape.General, Properties.Random])


	measure_qr(470,924,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1212,660,[Shape.General, Properties.Constant(3.0)])


	measure_qr(61,1173,[Shape.UpperTriangular, Properties.Random])


	measure_qr(951,1224,[Shape.General, Properties.Random])


	measure_qr(76,893,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1081,880,[Shape.UpperTriangular, Properties.Random])


	measure_qr(382,93,[Shape.General, Properties.Random])


	measure_qr(1371,395,[Shape.General, Properties.Random])


	measure_qr(69,1246,[Shape.UpperTriangular, Properties.Random])


	measure_qr(75,87,[Shape.General, Properties.Random])


	measure_qr(89,54,[Shape.General, Properties.Constant(3.0)])


	measure_qr(61,581,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1100,1173,[Shape.General, Properties.Random])


	measure_qr(82,162,[Shape.General, Properties.Constant(3.0)])


	measure_qr(177,67,[Shape.General, Properties.Random])


	measure_qr(762,572,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1072,69,[Shape.General, Properties.Constant(3.0)])


	measure_qr(471,907,[Shape.General, Properties.Random])


	measure_qr(1051,508,[Shape.General, Properties.Random])


	measure_qr(1133,71,[Shape.General, Properties.Random])


	measure_qr(1240,64,[Shape.General, Properties.Random])


	measure_qr(95,883,[Shape.UpperTriangular, Properties.Random])


	measure_qr(969,1359,[Shape.UpperTriangular, Properties.Random])


	measure_qr(605,59,[Shape.General, Properties.Random])


	measure_qr(1237,484,[Shape.General, Properties.Random])


	measure_qr(389,1187,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1104,474,[Shape.General, Properties.Constant(3.0)])


	measure_qr(62,331,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1453,773,[Shape.UpperTriangular, Properties.Random])


	measure_qr(877,995,[Shape.General, Properties.Constant(3.0)])


	measure_qr(447,53,[Shape.General, Properties.Random])


	measure_qr(1358,93,[Shape.UpperTriangular, Properties.Random])


	measure_qr(939,78,[Shape.UpperTriangular, Properties.Random])


	measure_qr(556,77,[Shape.General, Properties.Random])


	measure_qr(142,69,[Shape.General, Properties.Random])


	measure_qr(86,1249,[Shape.General, Properties.Random])


	measure_qr(1208,560,[Shape.General, Properties.Random])


	measure_qr(1138,78,[Shape.General, Properties.Constant(3.0)])


end

main()
