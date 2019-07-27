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
L solarcampi-rescue:+12V-power #PWR03
U 1 1 5CEFAE76
P 2000 3950
F 0 "#PWR03" H 2000 3800 50  0001 C CNN
F 1 "+12V" H 2015 4123 50  0000 C CNN
F 2 "" H 2000 3950 50  0001 C CNN
F 3 "" H 2000 3950 50  0001 C CNN
	1    2000 3950
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:GND-power #PWR04
U 1 1 5CEFB5C4
P 2400 4950
F 0 "#PWR04" H 2400 4700 50  0001 C CNN
F 1 "GND" H 2405 4777 50  0000 C CNN
F 2 "" H 2400 4950 50  0001 C CNN
F 3 "" H 2400 4950 50  0001 C CNN
	1    2400 4950
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:GND-power #PWR08
U 1 1 5CEFBC6A
P 2800 3950
F 0 "#PWR08" H 2800 3700 50  0001 C CNN
F 1 "GND" V 2805 3822 50  0000 R CNN
F 2 "" H 2800 3950 50  0001 C CNN
F 3 "" H 2800 3950 50  0001 C CNN
	1    2800 3950
	0    -1   -1   0   
$EndComp
$Comp
L solarcampi-rescue:GND-power #PWR09
U 1 1 5CEFC45E
P 2800 4050
F 0 "#PWR09" H 2800 3800 50  0001 C CNN
F 1 "GND" V 2805 3922 50  0000 R CNN
F 2 "" H 2800 4050 50  0001 C CNN
F 3 "" H 2800 4050 50  0001 C CNN
	1    2800 4050
	0    -1   -1   0   
$EndComp
NoConn ~ 2800 4550
$Comp
L solarcampi-rescue:+3V3-power #PWR015
U 1 1 5CF72468
P 4150 700
F 0 "#PWR015" H 4150 550 50  0001 C CNN
F 1 "+3V3" H 4165 873 50  0000 C CNN
F 2 "" H 4150 700 50  0001 C CNN
F 3 "" H 4150 700 50  0001 C CNN
	1    4150 700 
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:GND-power #PWR024
U 1 1 5CF0852A
P 10100 2200
F 0 "#PWR024" H 10100 1950 50  0001 C CNN
F 1 "GND" V 10105 2072 50  0000 R CNN
F 2 "" H 10100 2200 50  0001 C CNN
F 3 "" H 10100 2200 50  0001 C CNN
	1    10100 2200
	0    -1   -1   0   
$EndComp
$Comp
L solarcampi-rescue:Conn_02x20_Odd_Even-Connector_Generic J4
U 1 1 5C26120C
P 9800 2900
F 0 "J4" H 9850 4017 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 9850 3926 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 9800 2900 50  0001 C CNN
F 3 "~" H 9800 2900 50  0001 C CNN
	1    9800 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2000 10600 2000
Wire Wire Line
	10600 2000 10600 1700
$Comp
L solarcampi-rescue:C-Device C3
U 1 1 5CF657ED
P 1400 1000
F 0 "C3" H 1515 1046 50  0000 L CNN
F 1 "100n" H 1515 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1438 850 50  0001 C CNN
F 3 "~" H 1400 1000 50  0001 C CNN
	1    1400 1000
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:+12V-power #PWR06
U 1 1 5CEF7DCC
P 1400 800
F 0 "#PWR06" H 1400 650 50  0001 C CNN
F 1 "+12V" H 1415 973 50  0000 C CNN
F 2 "" H 1400 800 50  0001 C CNN
F 3 "" H 1400 800 50  0001 C CNN
	1    1400 800 
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:GND-power #PWR07
U 1 1 5CEEFFCF
P 1400 1200
F 0 "#PWR07" H 1400 950 50  0001 C CNN
F 1 "GND" H 1405 1027 50  0000 C CNN
F 2 "" H 1400 1200 50  0001 C CNN
F 3 "" H 1400 1200 50  0001 C CNN
	1    1400 1200
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:GND-power #PWR05
U 1 1 5CFA9116
P 1600 2250
F 0 "#PWR05" H 1600 2000 50  0001 C CNN
F 1 "GND" H 1605 2077 50  0000 C CNN
F 2 "" H 1600 2250 50  0001 C CNN
F 3 "" H 1600 2250 50  0001 C CNN
	1    1600 2250
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:+12V-power #PWR02
U 1 1 5CFA88A5
P 1100 1950
F 0 "#PWR02" H 1100 1800 50  0001 C CNN
F 1 "+12V" V 1115 2078 50  0000 L CNN
F 2 "" H 1100 1950 50  0001 C CNN
F 3 "" H 1100 1950 50  0001 C CNN
	1    1100 1950
	0    -1   -1   0   
$EndComp
$Comp
L solarcampi-rescue:+3V3-power #PWR010
U 1 1 5CFA795D
P 2000 1950
F 0 "#PWR010" H 2000 1800 50  0001 C CNN
F 1 "+3V3" V 2015 2078 50  0000 L CNN
F 2 "" H 2000 1950 50  0001 C CNN
F 3 "" H 2000 1950 50  0001 C CNN
	1    2000 1950
	0    1    1    0   
$EndComp
$Comp
L solarcampi-rescue:TPS71533__SC70-Regulator_Linear U2
U 1 1 5CF9FBE1
P 1600 1950
F 0 "U2" H 1600 2192 50  0000 C CNN
F 1 "TPS71533__SC70" H 1600 2101 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5_Handsoldering" H 1600 2175 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps715.pdf" H 1300 2750 50  0001 C CNN
	1    1600 1950
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:Fuse-Device F1
U 1 1 5CEFD444
P 1200 850
F 0 "F1" V 1003 850 50  0000 C CNN
F 1 "1A" V 1094 850 50  0000 C CNN
F 2 "solarcampi:Fuse_SMD_HASF" V 1130 850 50  0001 C CNN
F 3 "~" H 1200 850 50  0001 C CNN
	1    1200 850 
	0    1    1    0   
$EndComp
$Comp
L solarcampi-rescue:C-Device C2
U 1 1 5CF3211C
P 1200 2100
F 0 "C2" H 1315 2146 50  0000 L CNN
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
L solarcampi-rescue:C-Device C1
U 1 1 5CF3656D
P 3400 4200
F 0 "C1" H 3515 4246 50  0000 L CNN
F 1 "100n" H 3515 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3438 4050 50  0001 C CNN
F 3 "~" H 3400 4200 50  0001 C CNN
	1    3400 4200
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:Screw_Terminal_01x02-Connector J1
U 1 1 5CEC902C
P 850 950
F 0 "J1" H 930 942 50  0000 L CNN
F 1 "Vin 12V" H 930 851 50  0000 L CNN
F 2 "solarcampi:TerminalBlock_bornier-2_P5.08mm" H 850 950 50  0001 C CNN
F 3 "~" H 850 950 50  0001 C CNN
	1    850  950 
	-1   0    0    1   
$EndComp
Wire Wire Line
	1050 950  1150 950 
Wire Wire Line
	1150 950  1150 1150
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
NoConn ~ 9600 2700
NoConn ~ 9600 2800
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
	1350 850  1400 850 
Connection ~ 1400 850 
$Comp
L Connector:Conn_01x06_Male J5
U 1 1 5CF0D7D6
P 10700 3000
F 0 "J5" H 10672 2882 50  0000 R CNN
F 1 "FTDI_RPI" H 10672 2973 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 10700 3000 50  0001 C CNN
F 3 "~" H 10700 3000 50  0001 C CNN
	1    10700 3000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5CF18F66
P 10500 3200
F 0 "#PWR025" H 10500 2950 50  0001 C CNN
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
L MCU_Microchip_ATmega:ATmega328P-AU U3
U 1 1 5CF28A02
P 4050 2200
F 0 "U3" H 4050 611 50  0000 C CNN
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
L solarcampi-rescue:C-Device C7
U 1 1 5CF4ECCB
P 3000 900
F 0 "C7" H 3115 946 50  0000 L CNN
F 1 "100n" H 3115 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3038 750 50  0001 C CNN
F 3 "~" H 3000 900 50  0001 C CNN
	1    3000 900 
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:+3V3-power #PWR012
U 1 1 5CF4ECD1
P 3000 750
F 0 "#PWR012" H 3000 600 50  0001 C CNN
F 1 "+3V3" H 3015 923 50  0000 C CNN
F 2 "" H 3000 750 50  0001 C CNN
F 3 "" H 3000 750 50  0001 C CNN
	1    3000 750 
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:GND-power #PWR013
U 1 1 5CF4ECD7
P 3000 1050
F 0 "#PWR013" H 3000 800 50  0001 C CNN
F 1 "GND" H 3005 877 50  0000 C CNN
F 2 "" H 3000 1050 50  0001 C CNN
F 3 "" H 3000 1050 50  0001 C CNN
	1    3000 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5CF56A6D
P 4050 4000
F 0 "#PWR014" H 4050 3750 50  0001 C CNN
F 1 "GND" H 4055 3827 50  0000 C CNN
F 2 "" H 4050 4000 50  0001 C CNN
F 3 "" H 4050 4000 50  0001 C CNN
	1    4050 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5CFAD48D
P 5050 2650
F 0 "C8" H 5165 2696 50  0000 L CNN
F 1 "100n" H 5165 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5088 2500 50  0001 C CNN
F 3 "~" H 5050 2650 50  0001 C CNN
	1    5050 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2500 5050 2500
$Comp
L Device:R R1
U 1 1 5CFB6F12
P 5050 2350
F 0 "R1" H 5120 2396 50  0000 L CNN
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
L power:GND #PWR016
U 1 1 5CFC39C3
P 5900 1600
F 0 "#PWR016" H 5900 1350 50  0001 C CNN
F 1 "GND" H 5905 1427 50  0000 C CNN
F 2 "" H 5900 1600 50  0001 C CNN
F 3 "" H 5900 1600 50  0001 C CNN
	1    5900 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector:AVR-ISP-6 J2
U 1 1 5CF0B3DB
P 5800 1200
F 0 "J2" H 5520 1296 50  0000 R CNN
F 1 "AVR-ISP-6" H 5520 1205 50  0000 R CNN
F 2 "Connector_IDC:IDC-Header_2x03_P2.54mm_Vertical" V 5550 1250 50  0001 C CNN
F 3 " ~" H 4525 650 50  0001 C CNN
	1    5800 1200
	-1   0    0    -1  
$EndComp
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
Text Label 5000 2000 2    50   ~ 0
AVR_SDA
Text Label 2800 4250 0    50   ~ 0
AVR_SDA
Text Label 2800 4350 0    50   ~ 0
AVR_SCL
$Comp
L Device:R R3
U 1 1 5D01456F
P 5400 2200
F 0 "R3" H 5470 2246 50  0000 L CNN
F 1 "4k7" H 5470 2155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5330 2200 50  0001 C CNN
F 3 "~" H 5400 2200 50  0001 C CNN
	1    5400 2200
	1    0    0    -1  
$EndComp
Text Label 2400 3650 0    50   ~ 0
INA_3V3
Text Label 5000 2100 2    50   ~ 0
INA_3V3
Wire Wire Line
	4650 3500 4650 3400
$Comp
L Device:C C5
U 1 1 5D096BE4
P 2600 900
F 0 "C5" H 2715 946 50  0000 L CNN
F 1 "10µ" H 2715 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2638 750 50  0001 C CNN
F 3 "~" H 2600 900 50  0001 C CNN
	1    2600 900 
	1    0    0    -1  
$EndComp
Connection ~ 3000 750 
Connection ~ 3000 1050
Wire Wire Line
	2600 750  3000 750 
Wire Wire Line
	2600 1050 3000 1050
Connection ~ 10600 2000
$Comp
L Device:C C9
U 1 1 5D09F43A
P 10600 2150
F 0 "C9" H 10715 2196 50  0000 L CNN
F 1 "10µ" H 10715 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10638 2000 50  0001 C CNN
F 3 "~" H 10600 2150 50  0001 C CNN
	1    10600 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5D0A3DE2
P 10600 2400
F 0 "#PWR026" H 10600 2150 50  0001 C CNN
F 1 "GND" H 10605 2227 50  0000 C CNN
F 2 "" H 10600 2400 50  0001 C CNN
F 3 "" H 10600 2400 50  0001 C CNN
	1    10600 2400
	1    0    0    -1  
$EndComp
Text Label 5600 3500 0    50   ~ 0
AVR_PWR_EN
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
Text Label 7350 2050 1    50   ~ 0
+12V_SWITCHED
Wire Wire Line
	7150 2050 7550 2050
Text Label 8900 1700 0    50   ~ 0
RPI_5V
Wire Wire Line
	6350 3500 4650 3500
Wire Wire Line
	6350 3200 6350 3500
Wire Wire Line
	6550 2000 6550 2050
$Comp
L solarcampi-rescue:GND-power #PWR022
U 1 1 5CFF7DAA
P 8750 2250
F 0 "#PWR022" H 8750 2000 50  0001 C CNN
F 1 "GND" H 8755 2077 50  0000 C CNN
F 2 "" H 8750 2250 50  0001 C CNN
F 3 "" H 8750 2250 50  0001 C CNN
	1    8750 2250
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:GND-power #PWR020
U 1 1 5CFF74E9
P 7550 2250
F 0 "#PWR020" H 7550 2000 50  0001 C CNN
F 1 "GND" H 7555 2077 50  0000 C CNN
F 2 "" H 7550 2250 50  0001 C CNN
F 3 "" H 7550 2250 50  0001 C CNN
	1    7550 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2850 6950 3000
Connection ~ 6950 2850
Wire Wire Line
	6550 2050 6750 2050
$Comp
L solarcampi-rescue:R-Device R5
U 1 1 5CF7E6BE
P 6550 2450
F 0 "R5" H 6620 2496 50  0000 L CNN
F 1 "1M" H 6620 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6480 2450 50  0001 C CNN
F 3 "~" H 6550 2450 50  0001 C CNN
	1    6550 2450
	1    0    0    -1  
$EndComp
$Comp
L solarcampi-rescue:+12V-power #PWR018
U 1 1 5CF1E98B
P 6550 2000
F 0 "#PWR018" H 6550 1850 50  0001 C CNN
F 1 "+12V" H 6565 2173 50  0000 C CNN
F 2 "" H 6550 2000 50  0001 C CNN
F 3 "" H 6550 2000 50  0001 C CNN
	1    6550 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3400 6950 3500
$Comp
L solarcampi-rescue:GND-power #PWR019
U 1 1 5CEDD24B
P 6950 3550
F 0 "#PWR019" H 6950 3300 50  0001 C CNN
F 1 "GND" H 6955 3377 50  0000 C CNN
F 2 "" H 6950 3550 50  0001 C CNN
F 3 "" H 6950 3550 50  0001 C CNN
	1    6950 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2750 6950 2850
$Comp
L solarcampi-rescue:IRLML6402-Transistor_FET Q2
U 1 1 5CEBF952
P 6950 2150
F 0 "Q2" V 7293 2150 50  0000 C CNN
F 1 "IRLML 2244" V 7202 2150 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7150 2075 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H 6950 2150 50  0001 L CNN
	1    6950 2150
	0    1    -1   0   
$EndComp
Wire Wire Line
	6350 3200 6650 3200
$Comp
L Device:R R6
U 1 1 5D06B601
P 6600 3500
F 0 "R6" V 6393 3500 50  0000 C CNN
F 1 "1M" V 6484 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6530 3500 50  0001 C CNN
F 3 "~" H 6600 3500 50  0001 C CNN
	1    6600 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 3500 6950 3500
Connection ~ 6950 3500
Wire Wire Line
	6950 3500 6950 3550
Wire Wire Line
	6450 3500 6350 3500
$Comp
L Connector:TestPoint TP3
U 1 1 5D06E930
P 8750 1550
F 0 "TP3" H 8808 1668 50  0000 L CNN
F 1 "5V" H 8808 1577 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 8950 1550 50  0001 C CNN
F 3 "~" H 8950 1550 50  0001 C CNN
	1    8750 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5D070D59
P 3350 750
F 0 "TP2" H 3408 868 50  0000 L CNN
F 1 "3V3" H 3408 777 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 3550 750 50  0001 C CNN
F 3 "~" H 3550 750 50  0001 C CNN
	1    3350 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 750  3350 750 
$Comp
L Connector:TestPoint TP1
U 1 1 5D073498
P 1200 1650
F 0 "TP1" H 1258 1768 50  0000 L CNN
F 1 "12V" H 1258 1677 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 1400 1650 50  0001 C CNN
F 3 "~" H 1400 1650 50  0001 C CNN
	1    1200 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1650 1200 1950
Wire Wire Line
	4650 2700 4900 2700
Wire Wire Line
	4650 2800 4900 2800
Text Label 4900 2700 2    50   ~ 0
RXD
Text Label 4900 2800 2    50   ~ 0
TXD
$Comp
L Connector:Conn_01x06_Male J3
U 1 1 5D0853A0
P 8200 4400
F 0 "J3" H 8172 4282 50  0000 R CNN
F 1 "FTDI_AVR" H 8172 4373 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 8200 4400 50  0001 C CNN
F 3 "~" H 8200 4400 50  0001 C CNN
	1    8200 4400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5D0853A6
P 8000 4600
F 0 "#PWR021" H 8000 4350 50  0001 C CNN
F 1 "GND" H 8005 4427 50  0000 C CNN
F 2 "" H 8000 4600 50  0001 C CNN
F 3 "" H 8000 4600 50  0001 C CNN
	1    8000 4600
	1    0    0    -1  
$EndComp
Text Label 7850 4300 0    50   ~ 0
RXD
Text Label 7850 4200 0    50   ~ 0
TXD
NoConn ~ 8000 4400
NoConn ~ 8000 4500
Wire Wire Line
	7850 4200 8000 4200
Wire Wire Line
	7850 4300 8000 4300
Text Label 7300 4100 0    50   ~ 0
~RST
Wire Wire Line
	9600 2900 9200 2900
Wire Wire Line
	9600 3100 9200 3100
Wire Wire Line
	9200 2900 9200 2700
Wire Wire Line
	9200 2700 9000 2700
Wire Wire Line
	9200 3100 9200 3300
Wire Wire Line
	9200 3300 9000 3300
$Comp
L Device:Jumper_NC_Small JP3
U 1 1 5D09AB3F
P 8900 2700
F 0 "JP3" H 8900 2885 50  0000 C CNN
F 1 "Jumper_NO_Small" H 8900 2794 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 8900 2700 50  0001 C CNN
F 3 "~" H 8900 2700 50  0001 C CNN
	1    8900 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP4
U 1 1 5D09B0DF
P 8900 3000
F 0 "JP4" H 8900 3185 50  0000 C CNN
F 1 "Jumper_NO_Small" H 8900 3094 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 8900 3000 50  0001 C CNN
F 3 "~" H 8900 3000 50  0001 C CNN
	1    8900 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP5
U 1 1 5D09C8F7
P 8900 3300
F 0 "JP5" H 8900 3485 50  0000 C CNN
F 1 "Jumper_NO_Small" H 8900 3394 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 8900 3300 50  0001 C CNN
F 3 "~" H 8900 3300 50  0001 C CNN
	1    8900 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3000 9600 3000
Wire Wire Line
	8800 2700 8400 2700
Wire Wire Line
	8800 3000 8400 3000
Wire Wire Line
	8800 3300 8400 3300
Text Label 8400 2700 0    50   ~ 0
MOSI
Text Label 8400 3000 0    50   ~ 0
MISO
Text Label 8400 3300 0    50   ~ 0
SCK
Text Label 9250 2500 0    50   ~ 0
RST
Wire Wire Line
	7200 3400 7200 3500
Wire Wire Line
	7200 3000 7200 2850
Wire Wire Line
	7200 2850 6950 2850
Wire Wire Line
	7200 3500 6950 3500
$Comp
L Device:R R7
U 1 1 5D0B53B3
P 7550 3500
F 0 "R7" V 7343 3500 50  0000 C CNN
F 1 "1M" V 7434 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7480 3500 50  0001 C CNN
F 3 "~" H 7550 3500 50  0001 C CNN
	1    7550 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 3500 7200 3500
Connection ~ 7200 3500
Wire Wire Line
	7700 3500 7800 3500
Wire Wire Line
	7800 3500 7800 3200
Wire Wire Line
	7800 3200 7500 3200
Text Label 9250 2600 0    50   ~ 0
PWR_OVR
Wire Wire Line
	9250 2600 9600 2600
Wire Wire Line
	9250 2500 9600 2500
Connection ~ 7800 3200
Text Label 8150 3200 2    50   ~ 0
PWR_OVR
Wire Wire Line
	7800 3200 8150 3200
Wire Wire Line
	9450 4200 9650 4200
$Comp
L power:GND #PWR023
U 1 1 5D0CB9D0
P 9150 4500
F 0 "#PWR023" H 9150 4250 50  0001 C CNN
F 1 "GND" H 9155 4327 50  0000 C CNN
F 2 "" H 9150 4500 50  0001 C CNN
F 3 "" H 9150 4500 50  0001 C CNN
	1    9150 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 4500 9150 4450
Wire Wire Line
	9150 4000 9150 3700
Wire Wire Line
	9150 3700 8900 3700
Text Label 8900 3700 0    50   ~ 0
~RST
$Comp
L Device:R R8
U 1 1 5D0D29C6
P 9450 4450
F 0 "R8" V 9243 4450 50  0000 C CNN
F 1 "1M" V 9334 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9380 4450 50  0001 C CNN
F 3 "~" H 9450 4450 50  0001 C CNN
	1    9450 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	9300 4450 9150 4450
Connection ~ 9150 4450
Wire Wire Line
	9150 4450 9150 4400
Wire Wire Line
	9600 4450 9650 4450
Wire Wire Line
	9650 4450 9650 4200
Wire Wire Line
	5400 2050 5400 2000
Wire Wire Line
	4650 2000 5400 2000
Wire Wire Line
	4650 1900 5700 1900
Text Label 5000 1900 2    50   ~ 0
AVR_SCL
$Comp
L Device:R R4
U 1 1 5D0EF58F
P 5700 2200
F 0 "R4" H 5770 2246 50  0000 L CNN
F 1 "4k7" H 5770 2155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5630 2200 50  0001 C CNN
F 3 "~" H 5700 2200 50  0001 C CNN
	1    5700 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2050 5700 1900
Wire Wire Line
	5400 2350 5400 2550
Wire Wire Line
	5700 2350 5700 2550
Wire Wire Line
	5700 2550 5400 2550
Wire Wire Line
	5300 2100 5300 2550
Wire Wire Line
	5300 2550 5400 2550
Wire Wire Line
	4650 2100 5300 2100
Connection ~ 5400 2550
$Comp
L power:GND #PWR017
U 1 1 5D102B31
P 5950 3100
F 0 "#PWR017" H 5950 2850 50  0001 C CNN
F 1 "GND" H 5955 2927 50  0000 C CNN
F 2 "" H 5950 3100 50  0001 C CNN
F 3 "" H 5950 3100 50  0001 C CNN
	1    5950 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3100 5950 2850
Wire Wire Line
	5950 2850 6050 2850
Wire Wire Line
	8750 1550 8750 1700
$Comp
L Device:Fuse F2
U 1 1 5D109C27
P 9600 1700
F 0 "F2" V 9403 1700 50  0000 C CNN
F 1 "Fuse" V 9494 1700 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9530 1700 50  0001 C CNN
F 3 "~" H 9600 1700 50  0001 C CNN
	1    9600 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	10600 1700 9750 1700
Wire Wire Line
	9450 1700 8750 1700
Connection ~ 8750 1700
Wire Wire Line
	8750 1700 8750 2050
$Comp
L Device:D_Zener D3
U 1 1 5D110C3C
P 10950 1900
F 0 "D3" V 10904 1979 50  0000 L CNN
F 1 "D_Zener" V 10995 1979 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 10950 1900 50  0001 C CNN
F 3 "~" H 10950 1900 50  0001 C CNN
	1    10950 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	10950 1750 10950 1700
Wire Wire Line
	10950 1700 10600 1700
Connection ~ 10600 1700
Wire Wire Line
	10600 2300 10600 2350
Wire Wire Line
	10600 2350 10950 2350
Wire Wire Line
	10950 2350 10950 2050
Connection ~ 10600 2350
Wire Wire Line
	10600 2350 10600 2400
$Comp
L Device:D D1
U 1 1 5D11CF31
P 1800 1000
F 0 "D1" V 1754 1079 50  0000 L CNN
F 1 "D" V 1845 1079 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 1800 1000 50  0001 C CNN
F 3 "~" H 1800 1000 50  0001 C CNN
	1    1800 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 850  1400 850 
Wire Wire Line
	1800 1150 1400 1150
Connection ~ 1400 1150
Wire Wire Line
	1400 1200 1400 1150
Wire Wire Line
	1150 1150 1400 1150
Wire Wire Line
	1400 800  1400 850 
$Comp
L Device:LED D2
U 1 1 5D130D94
P 5300 3400
F 0 "D2" V 5339 3283 50  0000 R CNN
F 1 "LED" V 5248 3283 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5300 3400 50  0001 C CNN
F 3 "~" H 5300 3400 50  0001 C CNN
	1    5300 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 3250 5300 3200
Wire Wire Line
	5300 3200 4650 3200
$Comp
L Device:R R2
U 1 1 5D1374C9
P 5300 3750
F 0 "R2" H 5370 3796 50  0000 L CNN
F 1 "R" H 5370 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5230 3750 50  0001 C CNN
F 3 "~" H 5300 3750 50  0001 C CNN
	1    5300 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3600 5300 3550
Wire Wire Line
	4050 4000 4050 3950
Wire Wire Line
	5300 3900 5300 3950
Wire Wire Line
	5300 3950 5050 3950
Connection ~ 4050 3950
Wire Wire Line
	4050 3950 4050 3700
Wire Wire Line
	5050 2800 5050 3950
Connection ~ 5050 3950
Wire Wire Line
	5050 3950 4050 3950
$Comp
L Device:C C6
U 1 1 5D19A2A4
P 6850 1250
F 0 "C6" H 6735 1204 50  0000 R CNN
F 1 "C" H 6735 1295 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6888 1100 50  0001 C CNN
F 3 "~" H 6850 1250 50  0001 C CNN
	1    6850 1250
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0101
U 1 1 5D19B372
P 6850 1000
F 0 "#PWR0101" H 6850 850 50  0001 C CNN
F 1 "+12V" H 6865 1173 50  0000 C CNN
F 2 "" H 6850 1000 50  0001 C CNN
F 3 "" H 6850 1000 50  0001 C CNN
	1    6850 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1000 6850 1100
$Comp
L power:GND #PWR0102
U 1 1 5D19FFB1
P 6850 1500
F 0 "#PWR0102" H 6850 1250 50  0001 C CNN
F 1 "GND" H 6855 1327 50  0000 C CNN
F 2 "" H 6850 1500 50  0001 C CNN
F 3 "" H 6850 1500 50  0001 C CNN
	1    6850 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1500 6850 1400
$Comp
L Device:Jumper_NO_Small JP2
U 1 1 5D102195
P 6150 2850
F 0 "JP2" H 6150 3035 50  0000 C CNN
F 1 "Jumper_NO_Small" H 6150 2944 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6150 2850 50  0001 C CNN
F 3 "~" H 6150 2850 50  0001 C CNN
	1    6150 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5D21EF2D
P 9600 2400
F 0 "#PWR0103" H 9600 2150 50  0001 C CNN
F 1 "GND" V 9605 2272 50  0000 R CNN
F 2 "" H 9600 2400 50  0001 C CNN
F 3 "" H 9600 2400 50  0001 C CNN
	1    9600 2400
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 5D3BD3AB
P 6850 3200
F 0 "Q1" H 6700 3250 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 6300 3350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7050 3300 50  0001 C CNN
F 3 "~" H 6850 3200 50  0001 C CNN
	1    6850 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q3
U 1 1 5D3BEA9A
P 7300 3200
F 0 "Q3" H 7150 3250 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 6750 3350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7500 3300 50  0001 C CNN
F 3 "~" H 7300 3200 50  0001 C CNN
	1    7300 3200
	-1   0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q4
U 1 1 5D3C33CD
P 9250 4200
F 0 "Q4" H 9456 4246 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 9456 4155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9450 4300 50  0001 C CNN
F 3 "~" H 9250 4200 50  0001 C CNN
	1    9250 4200
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5D3C496B
P 7700 4100
F 0 "C11" V 7550 4100 50  0000 C CNN
F 1 "100n" V 7850 4100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7738 3950 50  0001 C CNN
F 3 "~" H 7700 4100 50  0001 C CNN
	1    7700 4100
	0    1    1    0   
$EndComp
Text Label 10200 4200 2    50   ~ 0
RST
Connection ~ 9650 4200
Connection ~ 6550 2050
$Comp
L Device:C C10
U 1 1 5D3E7B1C
P 2150 1150
F 0 "C10" V 2000 1150 50  0000 C CNN
F 1 "100u" V 1900 1150 50  0000 C CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 2188 1000 50  0001 C CNN
F 3 "~" H 2150 1150 50  0001 C CNN
	1    2150 1150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 5D3E861E
P 2150 850
F 0 "R9" V 1943 850 50  0000 C CNN
F 1 "0.5R" V 2034 850 50  0000 C CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" V 2080 850 50  0001 C CNN
F 3 "~" H 2150 850 50  0001 C CNN
	1    2150 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 1150 2350 1150
Wire Wire Line
	2350 1150 2350 850 
Wire Wire Line
	2350 850  2300 850 
Wire Wire Line
	2000 850  1800 850 
Connection ~ 1800 850 
Wire Wire Line
	2000 1150 1800 1150
Connection ~ 1800 1150
Connection ~ 6350 3500
$Comp
L Device:R R10
U 1 1 5D43221E
P 6950 2600
F 0 "R10" H 7020 2646 50  0000 L CNN
F 1 "1k" H 7020 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6880 2600 50  0001 C CNN
F 3 "~" H 6950 2600 50  0001 C CNN
	1    6950 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2450 6950 2350
Wire Wire Line
	6250 2850 6550 2850
Wire Wire Line
	6550 2050 6550 2300
Wire Wire Line
	6550 2600 6550 2850
Connection ~ 6550 2850
Wire Wire Line
	6550 2850 6950 2850
Wire Wire Line
	8000 4100 7850 4100
Wire Wire Line
	7300 4100 7550 4100
Wire Wire Line
	9650 4200 10200 4200
$Comp
L solarcampi-rescue:INA226-Analog_ADC U1
U 1 1 5CEC0CDE
P 2400 4250
F 0 "U1" H 2200 4700 50  0000 C CNN
F 1 "INA226" H 2600 4700 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 2450 4350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina226.pdf" H 2750 4150 50  0001 C CNN
	1    2400 4250
	1    0    0    -1  
$EndComp
Text Label 1250 4200 0    50   ~ 0
SHUNT+
Text Label 1250 4600 0    50   ~ 0
SHUNT-
Wire Wire Line
	2400 4950 2400 4850
Wire Wire Line
	2400 3750 2400 3650
Wire Wire Line
	2400 3650 3400 3650
Wire Wire Line
	3400 3650 3400 4050
Wire Wire Line
	3400 4350 3400 4850
Wire Wire Line
	3400 4850 2400 4850
Connection ~ 2400 4850
Wire Wire Line
	2400 4850 2400 4750
$Comp
L Device:C C12
U 1 1 5D49A050
P 1600 4400
F 0 "C12" H 1715 4446 50  0000 L CNN
F 1 "C" H 1715 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1638 4250 50  0001 C CNN
F 3 "~" H 1600 4400 50  0001 C CNN
	1    1600 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5D4BFA64
P 1250 4400
F 0 "R11" H 1320 4446 50  0000 L CNN
F 1 "R" H 1320 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" V 1180 4400 50  0001 C CNN
F 3 "~" H 1250 4400 50  0001 C CNN
	1    1250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4350 1900 4350
Wire Wire Line
	1900 4350 1900 4200
Wire Wire Line
	2000 4450 1900 4450
Wire Wire Line
	1900 4450 1900 4600
Wire Wire Line
	1600 4250 1600 4200
Connection ~ 1600 4200
Wire Wire Line
	1600 4200 1900 4200
Wire Wire Line
	1600 4550 1600 4600
Connection ~ 1600 4600
Wire Wire Line
	1600 4600 1900 4600
Wire Wire Line
	1250 4250 1250 4200
Wire Wire Line
	1250 4200 1600 4200
Wire Wire Line
	1250 4550 1250 4600
Wire Wire Line
	1250 4600 1600 4600
Wire Wire Line
	1100 4350 1100 4200
Wire Wire Line
	1100 4200 1250 4200
Connection ~ 1250 4200
Wire Wire Line
	1100 4450 1100 4600
Wire Wire Line
	1100 4600 1250 4600
Connection ~ 1250 4600
$Comp
L solarcampi-rescue:Screw_Terminal_01x02-Connector J6
U 1 1 5D510791
P 900 4350
F 0 "J6" H 980 4342 50  0000 L CNN
F 1 "Shunt" H 980 4251 50  0000 L CNN
F 2 "solarcampi:TerminalBlock_bornier-2_P5.08mm" H 900 4350 50  0001 C CNN
F 3 "~" H 900 4350 50  0001 C CNN
	1    900  4350
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
