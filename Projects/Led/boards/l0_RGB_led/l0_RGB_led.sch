EESchema Schematic File Version 4
LIBS:l0_RGB_led-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Common_Lib:l0_Shield_Socket J1
U 1 1 5A85A690
P 5750 3300
F 0 "J1" H 5825 3765 50  0000 C CNN
F 1 "l0_Socket" H 5825 3674 50  0000 C CNN
F 2 "Common_Footprint:l0_Shield_Socket" H 5750 2800 50  0001 C CNN
F 3 "" H 5750 3150 50  0001 C CNN
	1    5750 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_RGB D1
U 1 1 5A85A793
P 5850 4250
F 0 "D1" H 5850 4747 50  0000 C CNN
F 1 "LED_RGB" H 5850 4656 50  0000 C CNN
F 2 "Common_Footprint:LED_RGB_PLCC-6" H 5850 4200 50  0001 C CNN
F 3 "~" H 5850 4200 50  0001 C CNN
F 4 "Farnell" H 5850 4250 50  0001 C CNN "Fournisseur"
F 5 "2768070" H 5850 4250 50  0001 C CNN "CodeCommande"
	1    5850 4250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5A85E095
P 6300 4050
F 0 "R1" V 6300 4050 50  0000 C CNN
F 1 "24" V 6200 4050 50  0000 C CNN
F 2 "Common_Footprint:R_0805" V 6230 4050 50  0001 C CNN
F 3 "" H 6300 4050 50  0001 C CNN
F 4 "Farnell" V 6300 4050 50  0001 C CNN "Fournisseur"
F 5 "2074420" V 6300 4050 50  0001 C CNN "CodeCommande"
	1    6300 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5A85E0D6
P 6300 4250
F 0 "R2" V 6300 4250 50  0000 C CNN
F 1 "24" V 6200 4250 50  0000 C CNN
F 2 "Common_Footprint:R_0805" V 6230 4250 50  0001 C CNN
F 3 "" H 6300 4250 50  0001 C CNN
F 4 "Farnell" V 6300 4250 50  0001 C CNN "Fournisseur"
F 5 "2074420" V 6300 4250 50  0001 C CNN "CodeCommande"
	1    6300 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5A85E0F1
P 6300 4450
F 0 "R3" V 6300 4450 50  0000 C CNN
F 1 "68" V 6200 4450 50  0000 C CNN
F 2 "Common_Footprint:R_0805" V 6230 4450 50  0001 C CNN
F 3 "" H 6300 4450 50  0001 C CNN
F 4 "Farnell" V 6300 4450 50  0001 C CNN "Fournisseur"
F 5 "2447707" V 6300 4450 50  0001 C CNN "CodeCommande"
	1    6300 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 4050 6150 4050
Wire Wire Line
	6050 4250 6150 4250
Wire Wire Line
	6050 4450 6150 4450
Wire Wire Line
	5650 4050 5450 4050
Wire Wire Line
	5450 4050 5450 4250
Connection ~ 5450 4250
Wire Wire Line
	5450 4250 5650 4250
Wire Wire Line
	5650 4450 5450 4450
Wire Wire Line
	5450 4450 5450 4250
Wire Wire Line
	6350 3450 6700 3450
Wire Wire Line
	6700 3450 6700 4250
Wire Wire Line
	6700 4250 6450 4250
Wire Wire Line
	6450 4050 6800 4050
Wire Wire Line
	6800 4050 6800 3350
Wire Wire Line
	6800 3350 6350 3350
Wire Wire Line
	6350 3550 6550 3550
Wire Wire Line
	6550 3550 6550 4450
Wire Wire Line
	6550 4450 6450 4450
Wire Wire Line
	5075 2700 5075 4250
Wire Wire Line
	5075 4250 5450 4250
Wire Wire Line
	6350 3150 6500 3150
Wire Wire Line
	6500 3150 6500 2700
Wire Wire Line
	5075 2700 5250 2700
$Comp
L power:+3.3V #PWR0101
U 1 1 5B9C478B
P 5250 2700
F 0 "#PWR0101" H 5250 2550 50  0001 C CNN
F 1 "+3.3V" H 5265 2873 50  0000 C CNN
F 2 "" H 5250 2700 50  0001 C CNN
F 3 "" H 5250 2700 50  0001 C CNN
	1    5250 2700
	1    0    0    -1  
$EndComp
Connection ~ 5250 2700
Wire Wire Line
	5250 2700 6500 2700
Text Notes 10550 7650 0    50   ~ 0
0.0.1
$EndSCHEMATC
