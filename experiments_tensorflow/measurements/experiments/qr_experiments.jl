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

	
	measure_qr(1269,537,[Shape.General, Properties.Random])


	measure_qr(748,1013,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1095,75,[Shape.UpperTriangular, Properties.Random])


	measure_qr(73,545,[Shape.General, Properties.Constant(3.0)])


	measure_qr(62,1012,[Shape.General, Properties.Random])


	measure_qr(628,87,[Shape.UpperTriangular, Properties.Random])


	measure_qr(77,88,[Shape.UpperTriangular, Properties.Random])


	measure_qr(133,1412,[Shape.General, Properties.Constant(3.0)])


	measure_qr(845,225,[Shape.General, Properties.Random])


	measure_qr(1348,148,[Shape.General, Properties.Random])


	measure_qr(563,72,[Shape.General, Properties.Constant(3.0)])


	measure_qr(71,126,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1220,68,[Shape.General, Properties.Random])


	measure_qr(1418,896,[Shape.General, Properties.Constant(3.0)])


	measure_qr(909,1274,[Shape.General, Properties.Constant(3.0)])


	measure_qr(775,693,[Shape.UpperTriangular, Properties.Random])


	measure_qr(70,524,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1124,71,[Shape.General, Properties.Random])


	measure_qr(746,146,[Shape.General, Properties.Random])


	measure_qr(179,250,[Shape.UpperTriangular, Properties.Random])


	measure_qr(99,1052,[Shape.General, Properties.Constant(3.0)])


	measure_qr(85,1197,[Shape.General, Properties.Random])


	measure_qr(807,88,[Shape.UpperTriangular, Properties.Random])


	measure_qr(55,849,[Shape.General, Properties.Random])


	measure_qr(372,1007,[Shape.General, Properties.Random])


	measure_qr(977,884,[Shape.General, Properties.Constant(3.0)])


	measure_qr(95,300,[Shape.General, Properties.Random])


	measure_qr(717,860,[Shape.General, Properties.Random])


	measure_qr(1316,1369,[Shape.General, Properties.Random])


	measure_qr(820,659,[Shape.UpperTriangular, Properties.Random])


	measure_qr(519,1494,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1397,1226,[Shape.General, Properties.Random])


	measure_qr(97,1339,[Shape.General, Properties.Constant(3.0)])


	measure_qr(961,1420,[Shape.General, Properties.Random])


	measure_qr(322,61,[Shape.General, Properties.Random])


	measure_qr(1335,1296,[Shape.General, Properties.Constant(3.0)])


	measure_qr(228,718,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1447,1482,[Shape.General, Properties.Constant(3.0)])


	measure_qr(600,1304,[Shape.General, Properties.Random])


	measure_qr(64,685,[Shape.General, Properties.Random])


	measure_qr(55,1479,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1327,1236,[Shape.UpperTriangular, Properties.Random])


	measure_qr(636,58,[Shape.General, Properties.Constant(3.0)])


	measure_qr(743,65,[Shape.General, Properties.Random])


	measure_qr(74,621,[Shape.General, Properties.Random])


	measure_qr(307,1342,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1266,1492,[Shape.General, Properties.Constant(3.0)])


	measure_qr(573,676,[Shape.UpperTriangular, Properties.Random])


	measure_qr(66,77,[Shape.UpperTriangular, Properties.Random])


	measure_qr(175,96,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 50/500
" 

	measure_qr(1476,404,[Shape.UpperTriangular, Properties.Random])


	measure_qr(85,97,[Shape.General, Properties.Constant(3.0)])


	measure_qr(68,1415,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1285,594,[Shape.General, Properties.Random])


	measure_qr(841,415,[Shape.UpperTriangular, Properties.Random])


	measure_qr(390,862,[Shape.UpperTriangular, Properties.Random])


	measure_qr(417,908,[Shape.General, Properties.Random])


	measure_qr(905,605,[Shape.UpperTriangular, Properties.Random])


	measure_qr(71,1109,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1392,102,[Shape.General, Properties.Random])


	measure_qr(86,327,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1461,1399,[Shape.General, Properties.Constant(3.0)])


	measure_qr(56,1328,[Shape.General, Properties.Random])


	measure_qr(935,1144,[Shape.General, Properties.Random])


	measure_qr(615,93,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1478,1048,[Shape.General, Properties.Constant(3.0)])


	measure_qr(589,1364,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1065,1449,[Shape.General, Properties.Random])


	measure_qr(57,62,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1195,71,[Shape.UpperTriangular, Properties.Random])


	measure_qr(663,1418,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1215,604,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1100,573,[Shape.UpperTriangular, Properties.Random])


	measure_qr(977,1465,[Shape.General, Properties.Random])


	measure_qr(97,77,[Shape.UpperTriangular, Properties.Random])


	measure_qr(742,87,[Shape.UpperTriangular, Properties.Random])


	measure_qr(799,1439,[Shape.General, Properties.Constant(3.0)])


	measure_qr(88,1444,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1417,778,[Shape.UpperTriangular, Properties.Random])


	measure_qr(284,1444,[Shape.General, Properties.Random])


	measure_qr(537,1488,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1441,90,[Shape.General, Properties.Constant(3.0)])


	measure_qr(785,1240,[Shape.General, Properties.Random])


	measure_qr(1469,1302,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1491,145,[Shape.General, Properties.Random])


	measure_qr(1044,584,[Shape.General, Properties.Random])


	measure_qr(84,929,[Shape.UpperTriangular, Properties.Random])


	measure_qr(89,1014,[Shape.General, Properties.Random])


	measure_qr(1263,747,[Shape.General, Properties.Random])


	measure_qr(323,57,[Shape.General, Properties.Random])


	measure_qr(67,1106,[Shape.General, Properties.Constant(3.0)])


	measure_qr(283,429,[Shape.General, Properties.Random])


	measure_qr(499,1346,[Shape.General, Properties.Random])


	measure_qr(784,1099,[Shape.General, Properties.Random])


	measure_qr(72,69,[Shape.General, Properties.Constant(3.0)])


	measure_qr(88,56,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1347,624,[Shape.UpperTriangular, Properties.Random])


	measure_qr(77,1288,[Shape.UpperTriangular, Properties.Random])


	measure_qr(65,736,[Shape.UpperTriangular, Properties.Random])


	measure_qr(411,105,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 100/500
" 

	measure_qr(1424,573,[Shape.UpperTriangular, Properties.Random])


	measure_qr(74,682,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1397,1114,[Shape.General, Properties.Random])


	measure_qr(1299,1340,[Shape.UpperTriangular, Properties.Random])


	measure_qr(127,1235,[Shape.General, Properties.Constant(3.0)])


	measure_qr(419,172,[Shape.General, Properties.Constant(3.0)])


	measure_qr(81,511,[Shape.General, Properties.Random])


	measure_qr(1081,79,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1055,206,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1291,1087,[Shape.General, Properties.Constant(3.0)])


	measure_qr(70,1398,[Shape.General, Properties.Constant(3.0)])


	measure_qr(645,102,[Shape.General, Properties.Constant(3.0)])


	measure_qr(98,590,[Shape.General, Properties.Random])


	measure_qr(1348,97,[Shape.UpperTriangular, Properties.Random])


	measure_qr(64,1415,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1499,544,[Shape.General, Properties.Random])


	measure_qr(179,747,[Shape.General, Properties.Random])


	measure_qr(1460,74,[Shape.General, Properties.Random])


	measure_qr(1460,479,[Shape.General, Properties.Constant(3.0)])


	measure_qr(131,802,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1225,94,[Shape.General, Properties.Constant(3.0)])


	measure_qr(909,973,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1430,717,[Shape.General, Properties.Constant(3.0)])


	measure_qr(74,1454,[Shape.UpperTriangular, Properties.Random])


	measure_qr(958,1428,[Shape.General, Properties.Constant(3.0)])


	measure_qr(67,74,[Shape.General, Properties.Random])


	measure_qr(1327,66,[Shape.General, Properties.Constant(3.0)])


	measure_qr(57,864,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1453,1264,[Shape.General, Properties.Random])


	measure_qr(418,944,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1262,1231,[Shape.UpperTriangular, Properties.Random])


	measure_qr(93,1000,[Shape.General, Properties.Constant(3.0)])


	measure_qr(882,118,[Shape.General, Properties.Constant(3.0)])


	measure_qr(712,828,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1143,722,[Shape.UpperTriangular, Properties.Random])


	measure_qr(455,1327,[Shape.General, Properties.Random])


	measure_qr(58,60,[Shape.General, Properties.Constant(3.0)])


	measure_qr(423,234,[Shape.General, Properties.Constant(3.0)])


	measure_qr(74,155,[Shape.General, Properties.Constant(3.0)])


	measure_qr(908,1276,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1483,360,[Shape.General, Properties.Constant(3.0)])


	measure_qr(57,77,[Shape.UpperTriangular, Properties.Random])


	measure_qr(660,54,[Shape.UpperTriangular, Properties.Random])


	measure_qr(131,51,[Shape.General, Properties.Random])


	measure_qr(187,1482,[Shape.General, Properties.Constant(3.0)])


	measure_qr(90,337,[Shape.UpperTriangular, Properties.Random])


	measure_qr(86,1278,[Shape.General, Properties.Random])


	measure_qr(1480,63,[Shape.General, Properties.Random])


	measure_qr(347,1477,[Shape.General, Properties.Random])


	measure_qr(1337,383,[Shape.General, Properties.Random])


@printf "Completed 150/500
" 

	measure_qr(547,1079,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1033,974,[Shape.General, Properties.Constant(3.0)])


	measure_qr(974,114,[Shape.UpperTriangular, Properties.Random])


	measure_qr(88,1231,[Shape.General, Properties.Random])


	measure_qr(87,1082,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1226,655,[Shape.UpperTriangular, Properties.Random])


	measure_qr(607,1170,[Shape.UpperTriangular, Properties.Random])


	measure_qr(873,57,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1279,893,[Shape.General, Properties.Constant(3.0)])


	measure_qr(339,428,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1185,51,[Shape.UpperTriangular, Properties.Random])


	measure_qr(63,96,[Shape.UpperTriangular, Properties.Random])


	measure_qr(239,88,[Shape.General, Properties.Constant(3.0)])


	measure_qr(453,75,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1245,445,[Shape.UpperTriangular, Properties.Random])


	measure_qr(92,264,[Shape.UpperTriangular, Properties.Random])


	measure_qr(458,273,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1259,1027,[Shape.UpperTriangular, Properties.Random])


	measure_qr(801,76,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1254,54,[Shape.General, Properties.Random])


	measure_qr(78,61,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1391,72,[Shape.General, Properties.Constant(3.0)])


	measure_qr(83,63,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1360,858,[Shape.General, Properties.Random])


	measure_qr(1304,418,[Shape.General, Properties.Random])


	measure_qr(64,599,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1167,1383,[Shape.General, Properties.Constant(3.0)])


	measure_qr(72,1366,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1466,994,[Shape.UpperTriangular, Properties.Random])


	measure_qr(54,1479,[Shape.UpperTriangular, Properties.Random])


	measure_qr(130,56,[Shape.General, Properties.Constant(3.0)])


	measure_qr(610,93,[Shape.General, Properties.Random])


	measure_qr(67,782,[Shape.General, Properties.Random])


	measure_qr(728,662,[Shape.General, Properties.Constant(3.0)])


	measure_qr(531,68,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1465,1367,[Shape.General, Properties.Random])


	measure_qr(1394,1178,[Shape.UpperTriangular, Properties.Random])


	measure_qr(314,374,[Shape.General, Properties.Random])


	measure_qr(54,944,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1280,127,[Shape.General, Properties.Constant(3.0)])


	measure_qr(571,500,[Shape.UpperTriangular, Properties.Random])


	measure_qr(878,338,[Shape.General, Properties.Random])


	measure_qr(841,1213,[Shape.General, Properties.Random])


	measure_qr(283,76,[Shape.UpperTriangular, Properties.Random])


	measure_qr(787,79,[Shape.UpperTriangular, Properties.Random])


	measure_qr(173,1010,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1335,61,[Shape.General, Properties.Random])


	measure_qr(1472,1013,[Shape.General, Properties.Constant(3.0)])


	measure_qr(52,248,[Shape.General, Properties.Random])


	measure_qr(1372,513,[Shape.General, Properties.Constant(3.0)])


@printf "Completed 200/500
" 

	measure_qr(1035,56,[Shape.UpperTriangular, Properties.Random])


	measure_qr(906,764,[Shape.UpperTriangular, Properties.Random])


	measure_qr(260,1347,[Shape.General, Properties.Constant(3.0)])


	measure_qr(226,1377,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1250,1326,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1124,1484,[Shape.General, Properties.Constant(3.0)])


	measure_qr(196,1464,[Shape.General, Properties.Constant(3.0)])


	measure_qr(426,1247,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1214,1440,[Shape.General, Properties.Constant(3.0)])


	measure_qr(686,67,[Shape.General, Properties.Random])


	measure_qr(1140,1190,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1119,1326,[Shape.General, Properties.Constant(3.0)])


	measure_qr(273,75,[Shape.UpperTriangular, Properties.Random])


	measure_qr(409,55,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1432,1245,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1087,62,[Shape.UpperTriangular, Properties.Random])


	measure_qr(998,1031,[Shape.General, Properties.Random])


	measure_qr(473,1131,[Shape.General, Properties.Random])


	measure_qr(1201,506,[Shape.General, Properties.Random])


	measure_qr(461,1201,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1307,336,[Shape.General, Properties.Random])


	measure_qr(893,545,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1241,1067,[Shape.General, Properties.Constant(3.0)])


	measure_qr(519,970,[Shape.General, Properties.Constant(3.0)])


	measure_qr(195,893,[Shape.General, Properties.Random])


	measure_qr(1294,745,[Shape.General, Properties.Random])


	measure_qr(446,605,[Shape.UpperTriangular, Properties.Random])


	measure_qr(498,572,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1259,979,[Shape.General, Properties.Random])


	measure_qr(549,1452,[Shape.UpperTriangular, Properties.Random])


	measure_qr(151,477,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1253,83,[Shape.UpperTriangular, Properties.Random])


	measure_qr(77,1414,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1414,937,[Shape.UpperTriangular, Properties.Random])


	measure_qr(51,1370,[Shape.General, Properties.Random])


	measure_qr(1439,1276,[Shape.General, Properties.Random])


	measure_qr(1084,1291,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1194,1096,[Shape.General, Properties.Constant(3.0)])


	measure_qr(67,970,[Shape.General, Properties.Constant(3.0)])


	measure_qr(488,1249,[Shape.General, Properties.Random])


	measure_qr(73,50,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1222,380,[Shape.UpperTriangular, Properties.Random])


	measure_qr(841,1009,[Shape.General, Properties.Random])


	measure_qr(154,1389,[Shape.UpperTriangular, Properties.Random])


	measure_qr(484,406,[Shape.General, Properties.Constant(3.0)])


	measure_qr(82,376,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1282,82,[Shape.UpperTriangular, Properties.Random])


	measure_qr(75,83,[Shape.UpperTriangular, Properties.Random])


	measure_qr(107,1228,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1429,62,[Shape.General, Properties.Constant(3.0)])


@printf "Completed 250/500
" 

	measure_qr(965,1257,[Shape.UpperTriangular, Properties.Random])


	measure_qr(892,579,[Shape.General, Properties.Random])


	measure_qr(1425,1435,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1074,1118,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1088,72,[Shape.General, Properties.Random])


	measure_qr(871,763,[Shape.General, Properties.Constant(3.0)])


	measure_qr(73,88,[Shape.UpperTriangular, Properties.Random])


	measure_qr(232,58,[Shape.UpperTriangular, Properties.Random])


	measure_qr(988,1440,[Shape.General, Properties.Random])


	measure_qr(461,928,[Shape.UpperTriangular, Properties.Random])


	measure_qr(70,1347,[Shape.UpperTriangular, Properties.Random])


	measure_qr(184,83,[Shape.General, Properties.Constant(3.0)])


	measure_qr(91,941,[Shape.General, Properties.Constant(3.0)])


	measure_qr(555,1441,[Shape.General, Properties.Constant(3.0)])


	measure_qr(889,339,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1336,66,[Shape.General, Properties.Random])


	measure_qr(476,1204,[Shape.General, Properties.Random])


	measure_qr(1328,75,[Shape.General, Properties.Constant(3.0)])


	measure_qr(424,88,[Shape.UpperTriangular, Properties.Random])


	measure_qr(508,330,[Shape.General, Properties.Random])


	measure_qr(76,59,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1385,72,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1251,55,[Shape.General, Properties.Random])


	measure_qr(1327,457,[Shape.General, Properties.Random])


	measure_qr(60,823,[Shape.General, Properties.Random])


	measure_qr(529,1111,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1422,73,[Shape.General, Properties.Random])


	measure_qr(58,800,[Shape.General, Properties.Random])


	measure_qr(62,145,[Shape.UpperTriangular, Properties.Random])


	measure_qr(65,1313,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1013,51,[Shape.General, Properties.Random])


	measure_qr(887,92,[Shape.UpperTriangular, Properties.Random])


	measure_qr(72,1277,[Shape.General, Properties.Random])


	measure_qr(734,1447,[Shape.UpperTriangular, Properties.Random])


	measure_qr(78,559,[Shape.General, Properties.Random])


	measure_qr(1128,1061,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1287,71,[Shape.UpperTriangular, Properties.Random])


	measure_qr(51,765,[Shape.UpperTriangular, Properties.Random])


	measure_qr(784,1477,[Shape.General, Properties.Constant(3.0)])


	measure_qr(76,1327,[Shape.UpperTriangular, Properties.Random])


	measure_qr(185,948,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1385,75,[Shape.UpperTriangular, Properties.Random])


	measure_qr(136,1486,[Shape.UpperTriangular, Properties.Random])


	measure_qr(398,70,[Shape.General, Properties.Random])


	measure_qr(1401,54,[Shape.UpperTriangular, Properties.Random])


	measure_qr(288,1176,[Shape.UpperTriangular, Properties.Random])


	measure_qr(738,306,[Shape.General, Properties.Random])


	measure_qr(73,792,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1211,1234,[Shape.General, Properties.Constant(3.0)])


	measure_qr(75,435,[Shape.General, Properties.Constant(3.0)])


@printf "Completed 300/500
" 

	measure_qr(67,58,[Shape.General, Properties.Constant(3.0)])


	measure_qr(70,1315,[Shape.General, Properties.Random])


	measure_qr(1462,62,[Shape.General, Properties.Random])


	measure_qr(57,565,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1452,1486,[Shape.UpperTriangular, Properties.Random])


	measure_qr(685,977,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1367,836,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1247,1050,[Shape.General, Properties.Random])


	measure_qr(393,1320,[Shape.General, Properties.Constant(3.0)])


	measure_qr(544,580,[Shape.General, Properties.Random])


	measure_qr(1160,1474,[Shape.UpperTriangular, Properties.Random])


	measure_qr(83,1083,[Shape.General, Properties.Random])


	measure_qr(914,69,[Shape.UpperTriangular, Properties.Random])


	measure_qr(429,677,[Shape.General, Properties.Random])


	measure_qr(1239,421,[Shape.General, Properties.Random])


	measure_qr(909,764,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1219,1346,[Shape.General, Properties.Constant(3.0)])


	measure_qr(62,367,[Shape.UpperTriangular, Properties.Random])


	measure_qr(780,1093,[Shape.UpperTriangular, Properties.Random])


	measure_qr(944,1377,[Shape.General, Properties.Constant(3.0)])


	measure_qr(77,1321,[Shape.General, Properties.Constant(3.0)])


	measure_qr(93,1264,[Shape.General, Properties.Random])


	measure_qr(993,502,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1077,79,[Shape.General, Properties.Constant(3.0)])


	measure_qr(843,1391,[Shape.General, Properties.Random])


	measure_qr(1122,424,[Shape.UpperTriangular, Properties.Random])


	measure_qr(754,832,[Shape.General, Properties.Random])


	measure_qr(70,73,[Shape.General, Properties.Constant(3.0)])


	measure_qr(168,1098,[Shape.General, Properties.Random])


	measure_qr(966,75,[Shape.UpperTriangular, Properties.Random])


	measure_qr(257,1045,[Shape.General, Properties.Random])


	measure_qr(244,213,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1182,202,[Shape.UpperTriangular, Properties.Random])


	measure_qr(87,1156,[Shape.General, Properties.Constant(3.0)])


	measure_qr(86,727,[Shape.General, Properties.Random])


	measure_qr(58,75,[Shape.General, Properties.Random])


	measure_qr(1246,794,[Shape.General, Properties.Constant(3.0)])


	measure_qr(890,474,[Shape.General, Properties.Random])


	measure_qr(1157,1453,[Shape.UpperTriangular, Properties.Random])


	measure_qr(707,438,[Shape.UpperTriangular, Properties.Random])


	measure_qr(74,221,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1084,1199,[Shape.UpperTriangular, Properties.Random])


	measure_qr(69,390,[Shape.UpperTriangular, Properties.Random])


	measure_qr(233,1175,[Shape.General, Properties.Random])


	measure_qr(1223,57,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1061,50,[Shape.General, Properties.Constant(3.0)])


	measure_qr(58,1362,[Shape.UpperTriangular, Properties.Random])


	measure_qr(203,1438,[Shape.General, Properties.Constant(3.0)])


	measure_qr(428,674,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1226,411,[Shape.General, Properties.Constant(3.0)])


@printf "Completed 350/500
" 

	measure_qr(54,831,[Shape.UpperTriangular, Properties.Random])


	measure_qr(954,62,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1235,1220,[Shape.General, Properties.Random])


	measure_qr(820,66,[Shape.General, Properties.Random])


	measure_qr(665,623,[Shape.UpperTriangular, Properties.Random])


	measure_qr(855,72,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1012,1391,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1272,1256,[Shape.UpperTriangular, Properties.Random])


	measure_qr(408,83,[Shape.General, Properties.Constant(3.0)])


	measure_qr(640,90,[Shape.General, Properties.Random])


	measure_qr(1296,912,[Shape.General, Properties.Random])


	measure_qr(1452,72,[Shape.General, Properties.Random])


	measure_qr(62,1382,[Shape.General, Properties.Random])


	measure_qr(1246,589,[Shape.General, Properties.Random])


	measure_qr(1455,650,[Shape.UpperTriangular, Properties.Random])


	measure_qr(79,65,[Shape.General, Properties.Random])


	measure_qr(1213,95,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1376,368,[Shape.UpperTriangular, Properties.Random])


	measure_qr(184,321,[Shape.UpperTriangular, Properties.Random])


	measure_qr(82,53,[Shape.General, Properties.Constant(3.0)])


	measure_qr(930,1487,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1079,88,[Shape.UpperTriangular, Properties.Random])


	measure_qr(166,287,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1348,1013,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1336,1415,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1285,58,[Shape.General, Properties.Constant(3.0)])


	measure_qr(57,1381,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1105,1374,[Shape.General, Properties.Constant(3.0)])


	measure_qr(73,236,[Shape.General, Properties.Constant(3.0)])


	measure_qr(247,733,[Shape.General, Properties.Random])


	measure_qr(1154,1056,[Shape.General, Properties.Constant(3.0)])


	measure_qr(82,1282,[Shape.General, Properties.Random])


	measure_qr(364,92,[Shape.General, Properties.Random])


	measure_qr(812,1202,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1118,703,[Shape.General, Properties.Random])


	measure_qr(92,1176,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1226,948,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1043,92,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1316,959,[Shape.General, Properties.Random])


	measure_qr(321,678,[Shape.General, Properties.Random])


	measure_qr(1010,62,[Shape.General, Properties.Random])


	measure_qr(977,939,[Shape.General, Properties.Constant(3.0)])


	measure_qr(805,58,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1491,544,[Shape.General, Properties.Constant(3.0)])


	measure_qr(160,640,[Shape.General, Properties.Random])


	measure_qr(486,1088,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1214,52,[Shape.UpperTriangular, Properties.Random])


	measure_qr(87,60,[Shape.General, Properties.Constant(3.0)])


	measure_qr(89,1046,[Shape.General, Properties.Constant(3.0)])


	measure_qr(614,171,[Shape.General, Properties.Constant(3.0)])


@printf "Completed 400/500
" 

	measure_qr(1076,444,[Shape.General, Properties.Constant(3.0)])


	measure_qr(59,842,[Shape.General, Properties.Constant(3.0)])


	measure_qr(85,415,[Shape.UpperTriangular, Properties.Random])


	measure_qr(95,1367,[Shape.General, Properties.Random])


	measure_qr(1154,562,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1241,918,[Shape.General, Properties.Constant(3.0)])


	measure_qr(855,599,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1381,1368,[Shape.General, Properties.Constant(3.0)])


	measure_qr(245,728,[Shape.General, Properties.Constant(3.0)])


	measure_qr(173,562,[Shape.General, Properties.Random])


	measure_qr(63,793,[Shape.General, Properties.Random])


	measure_qr(886,1048,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1362,448,[Shape.General, Properties.Random])


	measure_qr(168,433,[Shape.General, Properties.Random])


	measure_qr(939,254,[Shape.General, Properties.Constant(3.0)])


	measure_qr(898,1278,[Shape.UpperTriangular, Properties.Random])


	measure_qr(429,1239,[Shape.General, Properties.Constant(3.0)])


	measure_qr(497,1098,[Shape.General, Properties.Constant(3.0)])


	measure_qr(77,73,[Shape.UpperTriangular, Properties.Random])


	measure_qr(91,57,[Shape.UpperTriangular, Properties.Random])


	measure_qr(788,71,[Shape.General, Properties.Constant(3.0)])


	measure_qr(64,99,[Shape.UpperTriangular, Properties.Random])


	measure_qr(577,1356,[Shape.General, Properties.Random])


	measure_qr(432,822,[Shape.UpperTriangular, Properties.Random])


	measure_qr(697,399,[Shape.General, Properties.Random])


	measure_qr(1198,978,[Shape.General, Properties.Constant(3.0)])


	measure_qr(57,74,[Shape.General, Properties.Constant(3.0)])


	measure_qr(351,479,[Shape.General, Properties.Random])


	measure_qr(780,853,[Shape.General, Properties.Constant(3.0)])


	measure_qr(302,87,[Shape.General, Properties.Constant(3.0)])


	measure_qr(82,85,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1120,1055,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1440,1001,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1412,244,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1415,1161,[Shape.UpperTriangular, Properties.Random])


	measure_qr(406,81,[Shape.UpperTriangular, Properties.Random])


	measure_qr(88,1011,[Shape.General, Properties.Random])


	measure_qr(135,91,[Shape.UpperTriangular, Properties.Random])


	measure_qr(107,1012,[Shape.General, Properties.Constant(3.0)])


	measure_qr(257,68,[Shape.General, Properties.Constant(3.0)])


	measure_qr(762,1459,[Shape.General, Properties.Constant(3.0)])


	measure_qr(74,93,[Shape.General, Properties.Constant(3.0)])


	measure_qr(775,94,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1487,806,[Shape.General, Properties.Random])


	measure_qr(617,214,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1437,1210,[Shape.General, Properties.Random])


	measure_qr(1415,1268,[Shape.General, Properties.Random])


	measure_qr(1328,89,[Shape.General, Properties.Constant(3.0)])


	measure_qr(75,360,[Shape.General, Properties.Constant(3.0)])


	measure_qr(142,1419,[Shape.UpperTriangular, Properties.Random])


@printf "Completed 450/500
" 

	measure_qr(953,1160,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1017,192,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1008,91,[Shape.General, Properties.Random])


	measure_qr(65,1192,[Shape.General, Properties.Constant(3.0)])


	measure_qr(168,61,[Shape.General, Properties.Random])


	measure_qr(97,648,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1487,499,[Shape.General, Properties.Constant(3.0)])


	measure_qr(571,1259,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1241,1006,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1221,783,[Shape.General, Properties.Constant(3.0)])


	measure_qr(785,149,[Shape.General, Properties.Constant(3.0)])


	measure_qr(98,1326,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1307,1474,[Shape.General, Properties.Random])


	measure_qr(918,600,[Shape.UpperTriangular, Properties.Random])


	measure_qr(85,1450,[Shape.General, Properties.Constant(3.0)])


	measure_qr(561,863,[Shape.UpperTriangular, Properties.Random])


	measure_qr(685,759,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1120,1352,[Shape.General, Properties.Random])


	measure_qr(88,270,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1202,82,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1076,1209,[Shape.General, Properties.Random])


	measure_qr(1287,1287,[Shape.UpperTriangular, Properties.Random])


	measure_qr(83,85,[Shape.General, Properties.Random])


	measure_qr(990,1482,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1383,98,[Shape.General, Properties.Constant(3.0)])


	measure_qr(188,97,[Shape.UpperTriangular, Properties.Random])


	measure_qr(55,479,[Shape.UpperTriangular, Properties.Random])


	measure_qr(325,806,[Shape.General, Properties.Constant(3.0)])


	measure_qr(58,767,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1473,1048,[Shape.General, Properties.Random])


	measure_qr(831,1398,[Shape.General, Properties.Random])


	measure_qr(1380,1435,[Shape.General, Properties.Constant(3.0)])


	measure_qr(1386,1266,[Shape.General, Properties.Constant(3.0)])


	measure_qr(55,1464,[Shape.General, Properties.Random])


	measure_qr(68,1264,[Shape.General, Properties.Random])


	measure_qr(436,856,[Shape.General, Properties.Constant(3.0)])


	measure_qr(915,77,[Shape.General, Properties.Random])


	measure_qr(51,79,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1427,1270,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1057,648,[Shape.UpperTriangular, Properties.Random])


	measure_qr(1316,78,[Shape.UpperTriangular, Properties.Random])


	measure_qr(709,762,[Shape.General, Properties.Constant(3.0)])


	measure_qr(82,169,[Shape.General, Properties.Constant(3.0)])


	measure_qr(74,370,[Shape.General, Properties.Random])


	measure_qr(812,922,[Shape.General, Properties.Constant(3.0)])


	measure_qr(869,350,[Shape.General, Properties.Constant(3.0)])


end

main()
