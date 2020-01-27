using LinearAlgebra.BLAS
using LinearAlgebra
using MatrixGenerator
using Printf

BLAS.set_num_threads(8)

f = open("/home/user/experiments_tensorflow/julia_measurements/measurements_data/scal_out.txt","w")

function write_times(args)
  s = ""
  for k in args
    s = s*string(k)*"\t"
  end
  s = s*"\n"
  write(f,s)
end

function measure_scal(shape,n,alpha,stride)
  A = generate(shape,[Shape.General,Properties.Random])
  scal!(n,alpha,A,stride)
  A = nothing

  A = generate(shape,[Shape.General,Properties.Random])
  start = time_ns()
  scal!(n,alpha,A,stride)
  finish = time_ns()
  time = (finish-start)*1e-9
  A = nothing

  write_times([shape,n,alpha,stride,time])
  GC.gc()
end


function main()

	
	measure_scal([1156,1043],480,0.5,3)


	measure_scal([10000,1],17,0.5,3)


	measure_scal([1631,1478],4833,0.5,1)


	measure_scal([1956,1400],200,0.5,3)


	measure_scal([10000,1],448,0.5,3)


	measure_scal([1110,1942],4161,0.5,2)


	measure_scal([1106,1495],3157,0.5,3)


	measure_scal([1936,1684],9789,0.5,1)


	measure_scal([10000,1],3529,0.5,1)


	measure_scal([1569,1773],40,0.5,2)


	measure_scal([10000,1],1179,0.5,3)


	measure_scal([1886,1111],31,0.5,3)


	measure_scal([1368,1753],4542,0.5,2)


	measure_scal([10000,1],23,0.5,3)


	measure_scal([10000,1],2859,0.5,3)


	measure_scal([10000,1],5880,0.5,1)


	measure_scal([1502,1480],37,0.5,2)


	measure_scal([10000,1],4472,0.5,2)


	measure_scal([10000,1],803,0.5,3)


	measure_scal([1688,1140],587,0.5,2)


	measure_scal([1748,1991],88,0.5,1)


	measure_scal([1999,1940],758,0.5,3)


	measure_scal([10000,1],46,0.5,2)


	measure_scal([10000,1],46,0.5,2)


	measure_scal([10000,1],2585,0.5,3)


	measure_scal([10000,1],1884,0.5,2)


	measure_scal([10000,1],8619,0.5,1)


	measure_scal([10000,1],727,0.5,1)


	measure_scal([10000,1],2411,0.5,1)


	measure_scal([10000,1],930,0.5,3)


	measure_scal([10000,1],420,0.5,2)


	measure_scal([10000,1],521,0.5,1)


	measure_scal([1844,1377],1364,0.5,1)


	measure_scal([10000,1],519,0.5,1)


	measure_scal([1437,1877],5811,0.5,1)


	measure_scal([10000,1],1700,0.5,3)


	measure_scal([10000,1],6481,0.5,1)


	measure_scal([10000,1],30,0.5,3)


	measure_scal([10000,1],1594,0.5,2)


	measure_scal([10000,1],5287,0.5,1)


	measure_scal([1919,1590],7468,0.5,1)


	measure_scal([1894,1741],4456,0.5,2)


	measure_scal([1828,1324],2351,0.5,3)


	measure_scal([10000,1],90,0.5,1)


	measure_scal([10000,1],745,0.5,2)


	measure_scal([1752,1062],1358,0.5,3)


	measure_scal([10000,1],546,0.5,3)


	measure_scal([1499,1678],24,0.5,3)


	measure_scal([1609,1264],6762,0.5,1)


	measure_scal([1872,1101],6969,0.5,1)


@printf "Completed 50/500
" 

	measure_scal([10000,1],4920,0.5,2)


	measure_scal([1512,1962],938,0.5,2)


	measure_scal([1034,1762],4524,0.5,2)


	measure_scal([1937,1875],2779,0.5,1)


	measure_scal([10000,1],1891,0.5,3)


	measure_scal([1807,1612],4768,0.5,2)


	measure_scal([10000,1],27,0.5,2)


	measure_scal([1458,1424],93,0.5,1)


	measure_scal([10000,1],6449,0.5,1)


	measure_scal([10000,1],1131,0.5,1)


	measure_scal([10000,1],53,0.5,1)


	measure_scal([1122,1798],708,0.5,3)


	measure_scal([10000,1],5029,0.5,1)


	measure_scal([10000,1],2712,0.5,3)


	measure_scal([10000,1],2675,0.5,2)


	measure_scal([10000,1],683,0.5,3)


	measure_scal([1752,1371],91,0.5,1)


	measure_scal([10000,1],31,0.5,2)


	measure_scal([1845,1212],2958,0.5,3)


	measure_scal([10000,1],2273,0.5,2)


	measure_scal([10000,1],37,0.5,2)


	measure_scal([10000,1],31,0.5,3)


	measure_scal([1663,1946],6531,0.5,1)


	measure_scal([10000,1],2840,0.5,2)


	measure_scal([10000,1],3356,0.5,2)


	measure_scal([10000,1],4005,0.5,2)


	measure_scal([1050,1778],5744,0.5,1)


	measure_scal([10000,1],3269,0.5,1)


	measure_scal([10000,1],606,0.5,3)


	measure_scal([1838,1088],49,0.5,2)


	measure_scal([1667,1623],2216,0.5,1)


	measure_scal([1985,1163],8324,0.5,1)


	measure_scal([1380,1150],9000,0.5,1)


	measure_scal([10000,1],4046,0.5,2)


	measure_scal([1114,1080],68,0.5,1)


	measure_scal([1071,1484],1145,0.5,3)


	measure_scal([1237,1102],6818,0.5,1)


	measure_scal([1393,1377],16,0.5,3)


	measure_scal([1018,1201],3253,0.5,3)


	measure_scal([10000,1],64,0.5,1)


	measure_scal([1789,1346],3005,0.5,3)


	measure_scal([10000,1],7580,0.5,1)


	measure_scal([10000,1],3107,0.5,3)


	measure_scal([1538,1132],298,0.5,3)


	measure_scal([10000,1],9849,0.5,1)


	measure_scal([1428,1575],7900,0.5,1)


	measure_scal([10000,1],9910,0.5,1)


	measure_scal([10000,1],54,0.5,1)


	measure_scal([1860,1305],96,0.5,1)


	measure_scal([1353,1623],25,0.5,3)


@printf "Completed 100/500
" 

	measure_scal([10000,1],3730,0.5,2)


	measure_scal([1852,1968],91,0.5,1)


	measure_scal([1030,1341],43,0.5,2)


	measure_scal([10000,1],2794,0.5,3)


	measure_scal([1984,1278],1707,0.5,2)


	measure_scal([10000,1],28,0.5,2)


	measure_scal([1623,1025],770,0.5,3)


	measure_scal([1696,1468],389,0.5,2)


	measure_scal([10000,1],6482,0.5,1)


	measure_scal([1017,1253],4214,0.5,2)


	measure_scal([1540,1558],3883,0.5,1)


	measure_scal([1835,1513],2736,0.5,3)


	measure_scal([1420,1916],8147,0.5,1)


	measure_scal([10000,1],1493,0.5,3)


	measure_scal([1244,1814],1254,0.5,3)


	measure_scal([10000,1],3271,0.5,2)


	measure_scal([10000,1],7379,0.5,1)


	measure_scal([10000,1],3134,0.5,3)


	measure_scal([1497,1458],1306,0.5,2)


	measure_scal([10000,1],2119,0.5,2)


	measure_scal([1446,1089],3165,0.5,3)


	measure_scal([10000,1],1049,0.5,3)


	measure_scal([10000,1],19,0.5,3)


	measure_scal([10000,1],9049,0.5,1)


	measure_scal([1864,1475],2528,0.5,3)


	measure_scal([10000,1],8432,0.5,1)


	measure_scal([1303,1574],1814,0.5,1)


	measure_scal([1761,1244],6926,0.5,1)


	measure_scal([1063,1456],29,0.5,2)


	measure_scal([10000,1],1429,0.5,3)


	measure_scal([10000,1],4150,0.5,1)


	measure_scal([1055,1848],18,0.5,3)


	measure_scal([1852,1761],2351,0.5,2)


	measure_scal([1449,1985],33,0.5,3)


	measure_scal([1834,1115],9383,0.5,1)


	measure_scal([10000,1],2348,0.5,3)


	measure_scal([1348,1539],19,0.5,3)


	measure_scal([10000,1],1325,0.5,3)


	measure_scal([10000,1],93,0.5,1)


	measure_scal([1692,1171],21,0.5,3)


	measure_scal([1650,1632],24,0.5,3)


	measure_scal([10000,1],3507,0.5,2)


	measure_scal([1917,1881],2029,0.5,1)


	measure_scal([1035,1570],4652,0.5,1)


	measure_scal([10000,1],9986,0.5,1)


	measure_scal([1917,1555],69,0.5,1)


	measure_scal([1937,1421],6805,0.5,1)


	measure_scal([1763,1837],1641,0.5,3)


	measure_scal([1904,1308],354,0.5,3)


	measure_scal([1777,1379],8502,0.5,1)


@printf "Completed 150/500
" 

	measure_scal([10000,1],4380,0.5,2)


	measure_scal([1190,1941],4926,0.5,2)


	measure_scal([10000,1],38,0.5,2)


	measure_scal([10000,1],31,0.5,2)


	measure_scal([10000,1],58,0.5,1)


	measure_scal([1072,1318],3153,0.5,3)


	measure_scal([1210,1366],23,0.5,3)


	measure_scal([1596,1839],2015,0.5,3)


	measure_scal([1720,1638],2515,0.5,3)


	measure_scal([1977,1658],3132,0.5,1)


	measure_scal([1299,1334],1518,0.5,3)


	measure_scal([10000,1],6371,0.5,1)


	measure_scal([10000,1],17,0.5,3)


	measure_scal([10000,1],99,0.5,1)


	measure_scal([10000,1],26,0.5,3)


	measure_scal([10000,1],3321,0.5,3)


	measure_scal([10000,1],3175,0.5,3)


	measure_scal([10000,1],31,0.5,3)


	measure_scal([1914,1491],7057,0.5,1)


	measure_scal([10000,1],9053,0.5,1)


	measure_scal([1338,1934],2819,0.5,3)


	measure_scal([10000,1],4111,0.5,2)


	measure_scal([1266,1739],90,0.5,1)


	measure_scal([10000,1],24,0.5,3)


	measure_scal([10000,1],2179,0.5,2)


	measure_scal([1530,1692],1972,0.5,1)


	measure_scal([10000,1],44,0.5,2)


	measure_scal([1600,1811],57,0.5,1)


	measure_scal([1259,1390],6786,0.5,1)


	measure_scal([10000,1],27,0.5,3)


	measure_scal([10000,1],2953,0.5,3)


	measure_scal([10000,1],30,0.5,2)


	measure_scal([1451,1137],47,0.5,2)


	measure_scal([10000,1],65,0.5,1)


	measure_scal([10000,1],8158,0.5,1)


	measure_scal([1559,1543],3402,0.5,2)


	measure_scal([1125,1149],2548,0.5,2)


	measure_scal([10000,1],48,0.5,2)


	measure_scal([1799,1430],1126,0.5,2)


	measure_scal([10000,1],3697,0.5,2)


	measure_scal([1201,1117],3690,0.5,2)


	measure_scal([10000,1],4553,0.5,1)


	measure_scal([10000,1],9586,0.5,1)


	measure_scal([10000,1],22,0.5,3)


	measure_scal([10000,1],4038,0.5,2)


	measure_scal([1577,1218],653,0.5,2)


	measure_scal([1729,1670],3121,0.5,3)


	measure_scal([1720,1792],98,0.5,1)


	measure_scal([10000,1],7669,0.5,1)


	measure_scal([10000,1],892,0.5,2)


@printf "Completed 200/500
" 

	measure_scal([1850,1884],40,0.5,2)


	measure_scal([1688,1662],1357,0.5,3)


	measure_scal([1793,1991],4702,0.5,2)


	measure_scal([1284,1065],4365,0.5,2)


	measure_scal([1682,1458],3091,0.5,3)


	measure_scal([10000,1],9449,0.5,1)


	measure_scal([1234,1748],7739,0.5,1)


	measure_scal([1316,1741],26,0.5,3)


	measure_scal([10000,1],1165,0.5,3)


	measure_scal([10000,1],9082,0.5,1)


	measure_scal([1563,1699],350,0.5,3)


	measure_scal([10000,1],3830,0.5,2)


	measure_scal([1027,1675],2579,0.5,1)


	measure_scal([10000,1],29,0.5,3)


	measure_scal([1144,1600],79,0.5,1)


	measure_scal([10000,1],3612,0.5,2)


	measure_scal([10000,1],2191,0.5,3)


	measure_scal([1600,1427],3632,0.5,2)


	measure_scal([1948,1935],31,0.5,2)


	measure_scal([1196,1257],21,0.5,3)


	measure_scal([10000,1],2187,0.5,2)


	measure_scal([10000,1],9238,0.5,1)


	measure_scal([1411,1337],2526,0.5,3)


	measure_scal([1286,1550],1291,0.5,2)


	measure_scal([10000,1],35,0.5,2)


	measure_scal([10000,1],92,0.5,1)


	measure_scal([1575,1231],4139,0.5,2)


	measure_scal([1995,1466],2866,0.5,3)


	measure_scal([1051,1431],8739,0.5,1)


	measure_scal([10000,1],1081,0.5,3)


	measure_scal([1182,1821],8424,0.5,1)


	measure_scal([1673,1015],24,0.5,3)


	measure_scal([1599,1956],8039,0.5,1)


	measure_scal([1209,1038],2730,0.5,3)


	measure_scal([10000,1],988,0.5,3)


	measure_scal([1081,1169],876,0.5,2)


	measure_scal([10000,1],3201,0.5,1)


	measure_scal([1010,1370],354,0.5,1)


	measure_scal([10000,1],3032,0.5,3)


	measure_scal([10000,1],8704,0.5,1)


	measure_scal([1230,1899],1372,0.5,3)


	measure_scal([1006,1330],7978,0.5,1)


	measure_scal([10000,1],26,0.5,3)


	measure_scal([10000,1],77,0.5,1)


	measure_scal([10000,1],4605,0.5,2)


	measure_scal([1606,1253],1736,0.5,1)


	measure_scal([10000,1],9151,0.5,1)


	measure_scal([10000,1],3890,0.5,2)


	measure_scal([10000,1],62,0.5,1)


	measure_scal([1616,1441],1066,0.5,3)


@printf "Completed 250/500
" 

	measure_scal([1063,1074],89,0.5,1)


	measure_scal([1473,1699],39,0.5,2)


	measure_scal([1581,1041],918,0.5,1)


	measure_scal([1103,1353],1780,0.5,2)


	measure_scal([10000,1],77,0.5,1)


	measure_scal([10000,1],4500,0.5,2)


	measure_scal([10000,1],92,0.5,2)


	measure_scal([1204,1434],40,0.5,2)


	measure_scal([1542,1335],24,0.5,3)


	measure_scal([10000,1],65,0.5,1)


	measure_scal([10000,1],21,0.5,3)


	measure_scal([10000,1],8326,0.5,1)


	measure_scal([1774,1405],18,0.5,3)


	measure_scal([10000,1],3384,0.5,2)


	measure_scal([1473,1555],4864,0.5,2)


	measure_scal([10000,1],32,0.5,3)


	measure_scal([10000,1],686,0.5,3)


	measure_scal([10000,1],7926,0.5,1)


	measure_scal([10000,1],2466,0.5,3)


	measure_scal([10000,1],4439,0.5,2)


	measure_scal([1959,1627],5598,0.5,1)


	measure_scal([1117,1763],9293,0.5,1)


	measure_scal([10000,1],3128,0.5,2)


	measure_scal([10000,1],63,0.5,1)


	measure_scal([1993,1238],154,0.5,2)


	measure_scal([1453,1606],2793,0.5,3)


	measure_scal([10000,1],1808,0.5,2)


	measure_scal([10000,1],8379,0.5,1)


	measure_scal([10000,1],2334,0.5,3)


	measure_scal([1030,1156],37,0.5,2)


	measure_scal([1763,1378],734,0.5,2)


	measure_scal([10000,1],2480,0.5,1)


	measure_scal([10000,1],5536,0.5,1)


	measure_scal([1633,1384],4093,0.5,2)


	measure_scal([1646,1429],2230,0.5,3)


	measure_scal([1830,1944],4986,0.5,2)


	measure_scal([1720,1935],355,0.5,3)


	measure_scal([1268,1896],45,0.5,2)


	measure_scal([1920,1863],65,0.5,1)


	measure_scal([1460,1774],1114,0.5,2)


	measure_scal([1234,1772],44,0.5,2)


	measure_scal([10000,1],2579,0.5,3)


	measure_scal([1677,1264],33,0.5,3)


	measure_scal([1405,1668],4799,0.5,2)


	measure_scal([10000,1],4229,0.5,2)


	measure_scal([1069,1358],4155,0.5,2)


	measure_scal([10000,1],1371,0.5,3)


	measure_scal([10000,1],29,0.5,3)


	measure_scal([10000,1],3289,0.5,3)


	measure_scal([1280,1994],53,0.5,1)


@printf "Completed 300/500
" 

	measure_scal([1956,1459],2329,0.5,3)


	measure_scal([1696,1542],9356,0.5,1)


	measure_scal([10000,1],31,0.5,3)


	measure_scal([10000,1],4568,0.5,1)


	measure_scal([1207,1810],436,0.5,3)


	measure_scal([10000,1],2545,0.5,3)


	measure_scal([10000,1],444,0.5,2)


	measure_scal([1000,1948],3457,0.5,2)


	measure_scal([1794,1161],3622,0.5,2)


	measure_scal([10000,1],9229,0.5,1)


	measure_scal([1189,1385],34,0.5,2)


	measure_scal([1036,1196],2842,0.5,2)


	measure_scal([10000,1],3373,0.5,2)


	measure_scal([1920,1548],8279,0.5,1)


	measure_scal([1369,1889],87,0.5,1)


	measure_scal([10000,1],577,0.5,2)


	measure_scal([1468,1840],2775,0.5,2)


	measure_scal([10000,1],8948,0.5,1)


	measure_scal([1633,1003],3682,0.5,2)


	measure_scal([10000,1],34,0.5,2)


	measure_scal([10000,1],3106,0.5,3)


	measure_scal([10000,1],30,0.5,2)


	measure_scal([10000,1],3483,0.5,2)


	measure_scal([10000,1],3216,0.5,3)


	measure_scal([1127,1177],3079,0.5,2)


	measure_scal([10000,1],4760,0.5,1)


	measure_scal([1225,1677],73,0.5,1)


	measure_scal([10000,1],280,0.5,3)


	measure_scal([1672,1865],7437,0.5,1)


	measure_scal([10000,1],2626,0.5,1)


	measure_scal([10000,1],1788,0.5,3)


	measure_scal([1478,1663],55,0.5,1)


	measure_scal([1468,1155],2207,0.5,3)


	measure_scal([1517,1888],9735,0.5,1)


	measure_scal([10000,1],614,0.5,2)


	measure_scal([1499,1680],1301,0.5,2)


	measure_scal([1966,1347],2657,0.5,3)


	measure_scal([10000,1],2579,0.5,1)


	measure_scal([1491,1115],3025,0.5,2)


	measure_scal([10000,1],9435,0.5,1)


	measure_scal([10000,1],2454,0.5,3)


	measure_scal([10000,1],1988,0.5,3)


	measure_scal([10000,1],3308,0.5,3)


	measure_scal([10000,1],45,0.5,2)


	measure_scal([10000,1],62,0.5,1)


	measure_scal([10000,1],1641,0.5,3)


	measure_scal([1193,1887],26,0.5,2)


	measure_scal([10000,1],2354,0.5,3)


	measure_scal([10000,1],2743,0.5,3)


	measure_scal([10000,1],4936,0.5,1)


@printf "Completed 350/500
" 

	measure_scal([1435,1473],3139,0.5,3)


	measure_scal([1870,1684],3485,0.5,2)


	measure_scal([1360,1487],26,0.5,3)


	measure_scal([10000,1],3327,0.5,3)


	measure_scal([1646,1141],3298,0.5,2)


	measure_scal([10000,1],4046,0.5,2)


	measure_scal([10000,1],154,0.5,1)


	measure_scal([10000,1],85,0.5,1)


	measure_scal([10000,1],5561,0.5,1)


	measure_scal([10000,1],43,0.5,2)


	measure_scal([1279,1136],2212,0.5,3)


	measure_scal([10000,1],5438,0.5,1)


	measure_scal([1496,1248],2990,0.5,1)


	measure_scal([1408,1333],1695,0.5,3)


	measure_scal([1110,1003],2349,0.5,3)


	measure_scal([10000,1],88,0.5,1)


	measure_scal([10000,1],838,0.5,2)


	measure_scal([1669,1329],6479,0.5,1)


	measure_scal([1124,1533],32,0.5,2)


	measure_scal([10000,1],1272,0.5,2)


	measure_scal([10000,1],6072,0.5,1)


	measure_scal([10000,1],4808,0.5,2)


	measure_scal([10000,1],90,0.5,1)


	measure_scal([10000,1],2489,0.5,3)


	measure_scal([10000,1],3287,0.5,3)


	measure_scal([10000,1],533,0.5,2)


	measure_scal([1241,1895],3109,0.5,1)


	measure_scal([10000,1],2648,0.5,2)


	measure_scal([10000,1],5942,0.5,1)


	measure_scal([1493,1490],9635,0.5,1)


	measure_scal([1434,1055],41,0.5,2)


	measure_scal([10000,1],4063,0.5,2)


	measure_scal([10000,1],3900,0.5,2)


	measure_scal([10000,1],417,0.5,2)


	measure_scal([1780,1889],8264,0.5,1)


	measure_scal([1891,1714],1399,0.5,2)


	measure_scal([10000,1],7390,0.5,1)


	measure_scal([1038,1393],2993,0.5,2)


	measure_scal([10000,1],4661,0.5,2)


	measure_scal([1712,1059],1039,0.5,3)


	measure_scal([10000,1],4220,0.5,1)


	measure_scal([1847,1300],2754,0.5,3)


	measure_scal([10000,1],3841,0.5,2)


	measure_scal([10000,1],2773,0.5,3)


	measure_scal([1137,1860],2223,0.5,3)


	measure_scal([10000,1],88,0.5,1)


	measure_scal([1724,1854],77,0.5,1)


	measure_scal([1773,1756],2923,0.5,3)


	measure_scal([1653,1053],1683,0.5,3)


	measure_scal([10000,1],7048,0.5,1)


@printf "Completed 400/500
" 

	measure_scal([10000,1],46,0.5,2)


	measure_scal([1931,1044],1887,0.5,3)


	measure_scal([10000,1],2269,0.5,3)


	measure_scal([10000,1],529,0.5,2)


	measure_scal([1408,1257],8545,0.5,1)


	measure_scal([10000,1],3948,0.5,2)


	measure_scal([10000,1],4665,0.5,2)


	measure_scal([1905,1797],4894,0.5,2)


	measure_scal([1596,1479],3666,0.5,2)


	measure_scal([1856,1222],5809,0.5,1)


	measure_scal([10000,1],5404,0.5,1)


	measure_scal([10000,1],8657,0.5,1)


	measure_scal([1740,1383],83,0.5,1)


	measure_scal([1918,1047],1010,0.5,2)


	measure_scal([10000,1],17,0.5,3)


	measure_scal([10000,1],2134,0.5,3)


	measure_scal([10000,1],32,0.5,2)


	measure_scal([10000,1],4086,0.5,2)


	measure_scal([1944,1304],308,0.5,2)


	measure_scal([10000,1],35,0.5,2)


	measure_scal([1460,1104],3776,0.5,2)


	measure_scal([1259,1015],2161,0.5,3)


	measure_scal([1922,1190],8828,0.5,1)


	measure_scal([1097,1369],33,0.5,3)


	measure_scal([1884,1767],5896,0.5,1)


	measure_scal([1232,1861],4547,0.5,2)


	measure_scal([1446,1717],2149,0.5,1)


	measure_scal([1659,1874],9546,0.5,1)


	measure_scal([10000,1],1890,0.5,3)


	measure_scal([10000,1],4358,0.5,2)


	measure_scal([1586,1841],3115,0.5,2)


	measure_scal([1910,1403],1397,0.5,2)


	measure_scal([1225,1940],3007,0.5,1)


	measure_scal([1037,1933],20,0.5,3)


	measure_scal([1119,1101],2773,0.5,3)


	measure_scal([1812,1181],3862,0.5,2)


	measure_scal([10000,1],76,0.5,1)


	measure_scal([10000,1],352,0.5,1)


	measure_scal([10000,1],1820,0.5,2)


	measure_scal([10000,1],3312,0.5,3)


	measure_scal([1916,1249],35,0.5,2)


	measure_scal([10000,1],4668,0.5,1)


	measure_scal([1975,1357],26,0.5,3)


	measure_scal([1586,1302],2636,0.5,2)


	measure_scal([1646,1172],7473,0.5,1)


	measure_scal([1677,1087],2142,0.5,3)


	measure_scal([1858,1981],3242,0.5,3)


	measure_scal([1513,1197],2136,0.5,3)


	measure_scal([10000,1],30,0.5,3)


	measure_scal([10000,1],26,0.5,3)


@printf "Completed 450/500
" 

	measure_scal([1488,1430],8632,0.5,1)


	measure_scal([10000,1],3309,0.5,3)


	measure_scal([1432,1928],2512,0.5,1)


	measure_scal([1594,1030],2061,0.5,1)


	measure_scal([10000,1],4152,0.5,2)


	measure_scal([10000,1],159,0.5,3)


	measure_scal([10000,1],2316,0.5,3)


	measure_scal([1479,1919],99,0.5,1)


	measure_scal([10000,1],4913,0.5,2)


	measure_scal([1592,1716],9524,0.5,1)


	measure_scal([10000,1],3208,0.5,2)


	measure_scal([10000,1],895,0.5,3)


	measure_scal([1130,1469],3088,0.5,3)


	measure_scal([1906,1826],2936,0.5,3)


	measure_scal([10000,1],2593,0.5,3)


	measure_scal([10000,1],2930,0.5,3)


	measure_scal([1466,1697],3201,0.5,2)


	measure_scal([1634,1222],746,0.5,3)


	measure_scal([1392,1223],36,0.5,2)


	measure_scal([10000,1],7342,0.5,1)


	measure_scal([1409,1291],2359,0.5,3)


	measure_scal([1098,1900],4125,0.5,2)


	measure_scal([1277,1868],2537,0.5,3)


	measure_scal([1044,1112],33,0.5,2)


	measure_scal([1019,1615],4353,0.5,2)


	measure_scal([10000,1],31,0.5,2)


	measure_scal([1110,1256],4833,0.5,2)


	measure_scal([10000,1],1805,0.5,3)


	measure_scal([10000,1],3873,0.5,2)


	measure_scal([1257,1352],1223,0.5,2)


end

main()
