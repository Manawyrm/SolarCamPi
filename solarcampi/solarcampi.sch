EESchema Schematic File Version 4
LIBS:solarcampi-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Solar Camera Pi"
Date "2019-05-27"
Rev "A"
Comp "Tobias Mädel (@manawyrm)"
Comment1 "https://tbspace.de"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L solarcampi-rescue:IRLML6402-Transistor_FET Q1
U 1 1 5CEBF952
P 6950 2150
F 0 "Q1" V 7293 2150 50  0000 C CNN
F 1 "IRLML 2244" V 7202 2150 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7150 2075 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H 6950 2150 50  0001 L CNN
	1    6950 2150
	0    1    -1   0   
$EndComp
$Comp
L solarcampi-rescue:DTC123J-Transistor_BJT Q2
U 1 1 5CED6544
P 6850 2800
F 0 "Q2" H 7038 2846 50  0000 L CNN
F 1 "BCR 108 SMD" H 7038 2755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6850 2800 50  0001 L CNN
F 3 "" H 6850 2800 50  0001 L CNN
	1    6850 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2350 6950 2450
$Comp
L solarcampi-rescue:GND-power #PWR0101
U 1 1 5CEDD24B
P 6950 3150
F 0 "#PWR0101" H 6950 2900 50  0001 C CNN
F 1 "GND" H 6955 2977 50  0000 C CNN
F 2 "" H 6950 3150 50  0001 C CNN
F 3 "" H 6950 3150 50  0001 C CNN
	1    6950 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3000 6950 3150
$Comp
L solarcampi-rescue:+12V-power #PWR0104
U 1 1 5CEFAE76
P 1150 3600
F 0 "#PWR0104" H 1150 3450 50  0001 C CNN
F 1 "+12V" H 1165 3773 50  0000 C CNN
F 2 "" H 1150 3600 50  0001 C CNN
F 3 "" H 1150 3600 50  0001 C CNN
	1    1150 3600
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:GND-power #PWR0105
U 1 1 5CEFB5C4
P 1550 4400
F 0 "#PWR0105" H 1550 4150 50  0001 C CNN
F 1 "GND" H 1555 4227 50  0000 C CNN
F 2 "" H 1550 4400 50  0001 C CNN
F 3 "" H 1550 4400 50  0001 C CNN
	1    1550 4400
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:GND-power #PWR0106
U 1 1 5CEFBC6A
P 1950 3600
F 0 "#PWR0106" H 1950 3350 50  0001 C CNN
F 1 "GND" V 1955 3472 50  0000 R CNN
F 2 "" H 1950 3600 50  0001 C CNN
F 3 "" H 1950 3600 50  0001 C CNN
	1    1950 3600
	0    -1   -1   0   
$EndComp
$Comp
L solarcampi-rescue:GND-power #PWR0107
U 1 1 5CEFC45E
P 1950 3700
F 0 "#PWR0107" H 1950 3450 50  0001 C CNN
F 1 "GND" V 1955 3572 50  0000 R CNN
F 2 "" H 1950 3700 50  0001 C CNN
F 3 "" H 1950 3700 50  0001 C CNN
	1    1950 3700
	0    -1   -1   0   
$EndComp
$Comp
L solarcampi-rescue:+12V-power #PWR0109
U 1 1 5CF1E98B
P 6550 2000
F 0 "#PWR0109" H 6550 1850 50  0001 C CNN
F 1 "+12V" H 6565 2173 50  0000 C CNN
F 2 "" H 6550 2000 50  0001 C CNN
F 3 "" H 6550 2000 50  0001 C CNN
	1    6550 2000
	1    0    0    -1  
$EndComp
NoConn ~ 1950 4200
$Comp
L solarcampi-rescue:+3V3-power #PWR0110
U 1 1 5CF72468
P 4150 700
F 0 "#PWR0110" H 4150 550 50  0001 C CNN
F 1 "+3V3" H 4165 873 50  0000 C CNN
F 2 "" H 4150 700 50  0001 C CNN
F 3 "" H 4150 700 50  0001 C CNN
	1    4150 700 
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:R-Device R1
U 1 1 5CF7E6BE
P 6550 2300
F 0 "R1" H 6620 2346 50  0000 L CNN
F 1 "10k" H 6620 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6480 2300 50  0001 C CNN
F 3 "~" H 6550 2300 50  0001 C CNN
	1    6550 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2050 6750 2050
Wire Wire Line
	6550 2050 6550 2150
Wire Wire Line
	6550 2450 6950 2450
Connection ~ 6950 2450
Wire Wire Line
	6950 2450 6950 2600
$Comp
L custom:MP1584ENBB PS1
U 1 1 5CFCCCFD
P 7850 2400
F 0 "PS1" H 7850 2767 50  0000 C CNN
F 1 "MP1584EN" H 7850 2676 50  0000 C CNN
F 2 "solarcampi:MP1584_buck_module" H 6800 2150 50  0001 L CNN
F 3 "" H 8900 2100 50  0001 L CNN
	1    7850 2400
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:GND-power #PWR0108
U 1 1 5CF0852A
P 10100 2200
F 0 "#PWR0108" H 10100 1950 50  0001 C CNN
F 1 "GND" V 10105 2072 50  0000 R CNN
F 2 "" H 10100 2200 50  0001 C CNN
F 3 "" H 10100 2200 50  0001 C CNN
	1    10100 2200
	0    -1   -1   0   
$EndComp
$Comp
L solarcampi-rescue:Conn_02x20_Odd_Even-Connector_Generic J1
U 1 1 5C26120C
P 9800 2900
F 0 "J1" H 9850 4017 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 9850 3926 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 9800 2900 50  0001 C CNN
F 3 "~" H 9800 2900 50  0001 C CNN
	1    9800 2900
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:GND-power #PWR0113
U 1 1 5CFF74E9
P 7550 2250
F 0 "#PWR0113" H 7550 2000 50  0001 C CNN
F 1 "GND" H 7555 2077 50  0000 C CNN
F 2 "" H 7550 2250 50  0001 C CNN
F 3 "" H 7550 2250 50  0001 C CNN
	1    7550 2250
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:GND-power #PWR0114
U 1 1 5CFF7DAA
P 8750 2250
F 0 "#PWR0114" H 8750 2000 50  0001 C CNN
F 1 "GND" H 8755 2077 50  0000 C CNN
F 2 "" H 8750 2250 50  0001 C CNN
F 3 "" H 8750 2250 50  0001 C CNN
	1    8750 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2000 10600 2000
Wire Wire Line
	10600 2000 10600 1700
$Comp
L solarcampi-rescue:C-Device C1
U 1 1 5CF657ED
P 1750 1100
F 0 "C1" H 1865 1146 50  0000 L CNN
F 1 "100n" H 1865 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1788 950 50  0001 C CNN
F 3 "~" H 1750 1100 50  0001 C CNN
	1    1750 1100
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:+12V-power #PWR0103
U 1 1 5CEF7DCC
P 1750 950
F 0 "#PWR0103" H 1750 800 50  0001 C CNN
F 1 "+12V" H 1765 1123 50  0000 C CNN
F 2 "" H 1750 950 50  0001 C CNN
F 3 "" H 1750 950 50  0001 C CNN
	1    1750 950 
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:GND-power #PWR0102
U 1 1 5CEEFFCF
P 1700 1250
F 0 "#PWR0102" H 1700 1000 50  0001 C CNN
F 1 "GND" H 1705 1077 50  0000 C CNN
F 2 "" H 1700 1250 50  0001 C CNN
F 3 "" H 1700 1250 50  0001 C CNN
	1    1700 1250
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:GND-power #PWR0115
U 1 1 5CFA9116
P 1600 2250
F 0 "#PWR0115" H 1600 2000 50  0001 C CNN
F 1 "GND" H 1605 2077 50  0000 C CNN
F 2 "" H 1600 2250 50  0001 C CNN
F 3 "" H 1600 2250 50  0001 C CNN
	1    1600 2250
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:+12V-power #PWR0116
U 1 1 5CFA88A5
P 1100 1950
F 0 "#PWR0116" H 1100 1800 50  0001 C CNN
F 1 "+12V" V 1115 2078 50  0000 L CNN
F 2 "" H 1100 1950 50  0001 C CNN
F 3 "" H 1100 1950 50  0001 C CNN
	1    1100 1950
	0    -1   -1   0   
$EndComp
$Comp
L solarcampi-rescue:+3V3-power #PWR0117
U 1 1 5CFA795D
P 2000 1950
F 0 "#PWR0117" H 2000 1800 50  0001 C CNN
F 1 "+3V3" V 2015 2078 50  0000 L CNN
F 2 "" H 2000 1950 50  0001 C CNN
F 3 "" H 2000 1950 50  0001 C CNN
	1    2000 1950
	0    1    1    0   
$EndComp
$Comp
L solarcampi-rescue:TPS71533__SC70-Regulator_Linear U3
U 1 1 5CF9FBE1
P 1600 1950
F 0 "U3" H 1600 2192 50  0000 C CNN
F 1 "TPS71533__SC70" H 1600 2101 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5_Handsoldering" H 1600 2175 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps715.pdf" H 1300 2750 50  0001 C CNN
	1    1600 1950
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:Fuse-Device F1
U 1 1 5CEFD444
P 1550 950
F 0 "F1" V 1353 950 50  0000 C CNN
F 1 "1A" V 1444 950 50  0000 C CNN
F 2 "solarcampi:Fuse_SMD_HASF" V 1480 950 50  0001 C CNN
F 3 "~" H 1550 950 50  0001 C CNN
	1    1550 950 
	0    1    1    0   
$EndComp
$Comp
L solarcampi-rescue:C-Device C3
U 1 1 5CF3211C
P 1200 2100
F 0 "C3" H 1315 2146 50  0000 L CNN
F 1 "100n" H 1315 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1238 1950 50  0001 C CNN
F 3 "~" H 1200 2100 50  0001 C CNN
	1    1200 2100
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:C-Device C4
U 1 1 5CF32542
P 2000 2100
F 0 "C4" H 2115 2146 50  0000 L CNN
F 1 "1µF" H 2115 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2038 1950 50  0001 C CNN
F 3 "~" H 2000 2100 50  0001 C CNN
	1    2000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1950 2000 1950
Connection ~ 2000 1950
Wire Wire Line
	1100 1950 1200 1950
Connection ~ 1200 1950
Wire Wire Line
	1200 1950 1300 1950
Wire Wire Line
	1200 2250 1600 2250
Connection ~ 1600 2250
Wire Wire Line
	1600 2250 2000 2250
$Comp
L solarcampi-rescue:C-Device C5
U 1 1 5CF3656D
P 650 3800
F 0 "C5" H 765 3846 50  0000 L CNN
F 1 "100n" H 765 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 688 3650 50  0001 C CNN
F 3 "~" H 650 3800 50  0001 C CNN
	1    650  3800
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:GND-power #PWR0119
U 1 1 5CF37D1D
P 650 3950
F 0 "#PWR0119" H 650 3700 50  0001 C CNN
F 1 "GND" H 655 3777 50  0000 C CNN
F 2 "" H 650 3950 50  0001 C CNN
F 3 "" H 650 3950 50  0001 C CNN
	1    650  3950
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:Screw_Terminal_01x02-Connector J2
U 1 1 5CEC902C
P 1200 1050
F 0 "J2" H 1280 1042 50  0000 L CNN
F 1 "Vin 12V" H 1280 951 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1200 1050 50  0001 C CNN
F 3 "~" H 1200 1050 50  0001 C CNN
	1    1200 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1400 1050 1500 1050
Wire Wire Line
	1500 1250 1700 1250
Wire Wire Line
	1500 1050 1500 1250
$Comp
L solarcampi-rescue:INA226-Analog_ADC U1
U 1 1 5CEC0CDE
P 1550 3900
F 0 "U1" H 1550 4581 50  0000 C CNN
F 1 "INA226" H 1550 4490 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 1600 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina226.pdf" H 1900 3800 50  0001 C CNN
	1    1550 3900
	1    0    0    -1  
$EndComp
NoConn ~ 1150 4000
NoConn ~ 1150 4100
NoConn ~ 9600 2000
NoConn ~ 10100 2100
NoConn ~ 10100 2500
NoConn ~ 10100 2600
NoConn ~ 10100 2700
NoConn ~ 10100 2800
NoConn ~ 10100 2900
NoConn ~ 10100 3000
NoConn ~ 10100 3100
NoConn ~ 10100 3200
NoConn ~ 10100 3300
NoConn ~ 10100 3400
NoConn ~ 9600 2400
NoConn ~ 9600 2500
NoConn ~ 9600 2600
NoConn ~ 9600 2700
NoConn ~ 9600 2800
NoConn ~ 9600 2900
NoConn ~ 9600 3000
NoConn ~ 9600 3100
NoConn ~ 9600 3200
NoConn ~ 9600 3300
NoConn ~ 9600 3400
NoConn ~ 9600 3500
NoConn ~ 9600 3600
NoConn ~ 10100 3500
NoConn ~ 10100 3600
NoConn ~ 9600 3700
NoConn ~ 9600 3800
NoConn ~ 9600 3900
NoConn ~ 10100 3700
NoConn ~ 10100 3800
NoConn ~ 10100 3900
Wire Wire Line
	6550 2000 6550 2050
Connection ~ 6550 2050
$Comp
L solarcampi-rescue:+12VA-power #PWR0120
U 1 1 5CF5E1D1
P 7400 2000
F 0 "#PWR0120" H 7400 1850 50  0001 C CNN
F 1 "+12VA" H 7415 2173 50  0000 C CNN
F 2 "" H 7400 2000 50  0001 C CNN
F 3 "" H 7400 2000 50  0001 C CNN
	1    7400 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 950  1750 950 
Connection ~ 1750 950 
Wire Wire Line
	1700 1250 1750 1250
Connection ~ 1700 1250
Wire Wire Line
	7150 2050 7400 2050
Wire Wire Line
	7400 2000 7400 2050
Wire Wire Line
	10600 1700 8750 1700
Wire Wire Line
	8750 1700 8750 2050
Wire Wire Line
	7400 2050 7550 2050
Connection ~ 7400 2050
$Comp
L Connector:Conn_01x06_Male J4
U 1 1 5CF0D7D6
P 10700 3000
F 0 "J4" H 10672 2882 50  0000 R CNN
F 1 "FTDI" H 10672 2973 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 10700 3000 50  0001 C CNN
F 3 "~" H 10700 3000 50  0001 C CNN
	1    10700 3000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5CF18F66
P 10500 3200
F 0 "#PWR0121" H 10500 2950 50  0001 C CNN
F 1 "GND" H 10505 3027 50  0000 C CNN
F 2 "" H 10500 3200 50  0001 C CNN
F 3 "" H 10500 3200 50  0001 C CNN
	1    10500 3200
	1    0    0    -1  
$EndComp
Text Label 10400 2800 0    50   ~ 0
RX
Wire Wire Line
	10500 2800 10400 2800
Text Label 10400 2900 0    50   ~ 0
TX
Wire Wire Line
	10500 2900 10400 2900
Text Label 10150 2300 0    50   ~ 0
RX
Text Label 10150 2400 0    50   ~ 0
TX
Wire Wire Line
	10100 2300 10150 2300
Wire Wire Line
	10100 2400 10150 2400
NoConn ~ 10500 2700
NoConn ~ 10500 3000
NoConn ~ 10500 3100
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U2
U 1 1 5CF28A02
P 4050 2200
F 0 "U2" H 4050 611 50  0000 C CNN
F 1 "ATmega328P-AU" H 4050 520 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 4050 2200 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 4050 2200 50  0001 C CNN
	1    4050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 700  4150 700 
Connection ~ 4150 700 
$Comp
L solarcampi-rescue:C-Device C2
U 1 1 5CF4ECCB
P 3050 1350
F 0 "C2" H 3165 1396 50  0000 L CNN
F 1 "100n" H 3165 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3088 1200 50  0001 C CNN
F 3 "~" H 3050 1350 50  0001 C CNN
	1    3050 1350
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:+3V3-power #PWR01
U 1 1 5CF4ECD1
P 3050 1200
F 0 "#PWR01" H 3050 1050 50  0001 C CNN
F 1 "+3V3" H 3065 1373 50  0000 C CNN
F 2 "" H 3050 1200 50  0001 C CNN
F 3 "" H 3050 1200 50  0001 C CNN
	1    3050 1200
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:GND-power #PWR02
U 1 1 5CF4ECD7
P 3050 1500
F 0 "#PWR02" H 3050 1250 50  0001 C CNN
F 1 "GND" H 3055 1327 50  0000 C CNN
F 2 "" H 3050 1500 50  0001 C CNN
F 3 "" H 3050 1500 50  0001 C CNN
	1    3050 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5CF56A6D
P 4050 3700
F 0 "#PWR03" H 4050 3450 50  0001 C CNN
F 1 "GND" H 4055 3527 50  0000 C CNN
F 2 "" H 4050 3700 50  0001 C CNN
F 3 "" H 4050 3700 50  0001 C CNN
	1    4050 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5CFAD48D
P 5050 2650
F 0 "C6" H 5165 2696 50  0000 L CNN
F 1 "100n" H 5165 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5088 2500 50  0001 C CNN
F 3 "~" H 5050 2650 50  0001 C CNN
	1    5050 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2500 5050 2500
Wire Wire Line
	4050 3700 5050 3700
Wire Wire Line
	5050 3700 5050 2800
Connection ~ 4050 3700
$Comp
L Device:R R2
U 1 1 5CFB6F12
P 5050 2350
F 0 "R2" H 5120 2396 50  0000 L CNN
F 1 "10k" H 5120 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4980 2350 50  0001 C CNN
F 3 "~" H 5050 2350 50  0001 C CNN
	1    5050 2350
	1    0    0    -1  
$EndComp
Connection ~ 5050 2500
Wire Wire Line
	4150 700  5050 700 
Wire Wire Line
	5050 700  5050 2200
$Comp
L power:GND #PWR04
U 1 1 5CFC39C3
P 5900 1600
F 0 "#PWR04" H 5900 1350 50  0001 C CNN
F 1 "GND" H 5905 1427 50  0000 C CNN
F 2 "" H 5900 1600 50  0001 C CNN
F 3 "" H 5900 1600 50  0001 C CNN
	1    5900 1600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP1
U 1 1 5CFC428F
P 5700 700
F 0 "JP1" H 5700 935 50  0000 C CNN
F 1 "Jumper_2_Open" H 5700 844 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 5700 700 50  0001 C CNN
F 3 "~" H 5700 700 50  0001 C CNN
	1    5700 700 
	1    0    0    -1  
$EndComp
$Comp
L Connector:AVR-ISP-6 J3
U 1 1 5CF0B3DB
P 5800 1200
F 0 "J3" H 5520 1296 50  0000 R CNN
F 1 "AVR-ISP-6" H 5520 1205 50  0000 R CNN
F 2 "Connector_IDC:IDC-Header_2x03_P2.54mm_Vertical" V 5550 1250 50  0001 C CNN
F 3 " ~" H 4525 650 50  0001 C CNN
	1    5800 1200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5050 700  5500 700 
Connection ~ 5050 700 
Text Label 5250 1300 0    50   ~ 0
~RST
Text Label 5250 1200 0    50   ~ 0
SCK
Text Label 5200 1100 0    50   ~ 0
MOSI
Text Label 5200 1000 0    50   ~ 0
MISO
Wire Wire Line
	5400 1000 5200 1000
Wire Wire Line
	5200 1100 5400 1100
Wire Wire Line
	5400 1200 5250 1200
Wire Wire Line
	5250 1300 5400 1300
Text Label 4700 1300 0    50   ~ 0
MOSI
Text Label 4700 1400 0    50   ~ 0
MISO
Text Label 4700 1500 0    50   ~ 0
SCK
Wire Wire Line
	4650 1300 4700 1300
Wire Wire Line
	4700 1400 4650 1400
Wire Wire Line
	4650 1500 4700 1500
Text Label 4750 2500 0    50   ~ 0
~RST
Text Label 4650 2300 0    50   ~ 0
RPI_SDA
Text Label 4650 2400 0    50   ~ 0
RPI_SCL
Text Label 9600 2100 2    50   ~ 0
RPI_SDA
Text Label 9600 2200 2    50   ~ 0
RPI_SCL
Text Label 9600 2300 2    50   ~ 0
RPI_SHDN
Text Label 4650 2900 0    50   ~ 0
RPI_SHDN
Text Label 4900 3000 0    50   ~ 0
AVR_SDA
Text Label 4900 3100 0    50   ~ 0
AVR_SCL
Text Label 1950 3900 0    50   ~ 0
AVR_SDA
Text Label 1950 4000 0    50   ~ 0
AVR_SCL
$Comp
L Device:R R3
U 1 1 5D013A55
P 5200 3250
F 0 "R3" H 5270 3296 50  0000 L CNN
F 1 "4k7" H 5270 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5130 3250 50  0001 C CNN
F 3 "~" H 5200 3250 50  0001 C CNN
	1    5200 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5D01456F
P 5450 3150
F 0 "R4" H 5520 3196 50  0000 L CNN
F 1 "4k7" H 5520 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5380 3150 50  0001 C CNN
F 3 "~" H 5450 3150 50  0001 C CNN
	1    5450 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3100 5200 3100
Wire Wire Line
	4650 3000 5450 3000
Wire Wire Line
	5200 3400 5450 3400
Wire Wire Line
	5450 3400 5450 3300
Wire Wire Line
	5200 3400 4950 3400
Wire Wire Line
	4950 3400 4950 3200
Wire Wire Line
	4950 3200 4650 3200
Connection ~ 5200 3400
Text Label 5450 3400 0    50   ~ 0
AVR_I2C_PULLUP
Text Label 1550 3400 0    50   ~ 0
INA_3V3
Text Label 650  3650 0    50   ~ 0
INA_3V3
Text Label 4650 3300 0    50   ~ 0
INA_3V3
Wire Wire Line
	6600 2800 6350 2800
Wire Wire Line
	6350 2800 6350 3500
Wire Wire Line
	6350 3500 4650 3500
Wire Wire Line
	4650 3500 4650 3400
$Comp
L Device:C C7
U 1 1 5D096BE4
P 2650 1350
F 0 "C7" H 2765 1396 50  0000 L CNN
F 1 "10µ" H 2765 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2688 1200 50  0001 C CNN
F 3 "~" H 2650 1350 50  0001 C CNN
	1    2650 1350
	1    0    0    -1  
$EndComp
Connection ~ 3050 1200
Connection ~ 3050 1500
Wire Wire Line
	2650 1200 3050 1200
Wire Wire Line
	2650 1500 3050 1500
Connection ~ 10600 2000
$Comp
L Device:C C8
U 1 1 5D09F43A
P 10600 2150
F 0 "C8" H 10715 2196 50  0000 L CNN
F 1 "10µ" H 10715 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10638 2000 50  0001 C CNN
F 3 "~" H 10600 2150 50  0001 C CNN
	1    10600 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5D0A3DE2
P 10600 2300
F 0 "#PWR0111" H 10600 2050 50  0001 C CNN
F 1 "GND" H 10605 2127 50  0000 C CNN
F 2 "" H 10600 2300 50  0001 C CNN
F 3 "" H 10600 2300 50  0001 C CNN
	1    10600 2300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
