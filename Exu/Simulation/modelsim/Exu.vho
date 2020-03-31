-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/30/2020 23:19:16"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ArithUnit IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	Y : BUFFER std_logic_vector(63 DOWNTO 0);
	NotA : IN std_logic;
	AddnSub : IN std_logic;
	ExtWord : IN std_logic;
	Cout : BUFFER std_logic;
	Ovfl : BUFFER std_logic;
	Zero : BUFFER std_logic;
	AltB : BUFFER std_logic;
	AltBu : BUFFER std_logic
	);
END ArithUnit;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NotA	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ArithUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_NotA : std_logic;
SIGNAL ww_AddnSub : std_logic;
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Ovfl : std_logic;
SIGNAL ww_Zero : std_logic;
SIGNAL ww_AltB : std_logic;
SIGNAL ww_AltBu : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[4]~output_o\ : std_logic;
SIGNAL \Y[5]~output_o\ : std_logic;
SIGNAL \Y[6]~output_o\ : std_logic;
SIGNAL \Y[7]~output_o\ : std_logic;
SIGNAL \Y[8]~output_o\ : std_logic;
SIGNAL \Y[9]~output_o\ : std_logic;
SIGNAL \Y[10]~output_o\ : std_logic;
SIGNAL \Y[11]~output_o\ : std_logic;
SIGNAL \Y[12]~output_o\ : std_logic;
SIGNAL \Y[13]~output_o\ : std_logic;
SIGNAL \Y[14]~output_o\ : std_logic;
SIGNAL \Y[15]~output_o\ : std_logic;
SIGNAL \Y[16]~output_o\ : std_logic;
SIGNAL \Y[17]~output_o\ : std_logic;
SIGNAL \Y[18]~output_o\ : std_logic;
SIGNAL \Y[19]~output_o\ : std_logic;
SIGNAL \Y[20]~output_o\ : std_logic;
SIGNAL \Y[21]~output_o\ : std_logic;
SIGNAL \Y[22]~output_o\ : std_logic;
SIGNAL \Y[23]~output_o\ : std_logic;
SIGNAL \Y[24]~output_o\ : std_logic;
SIGNAL \Y[25]~output_o\ : std_logic;
SIGNAL \Y[26]~output_o\ : std_logic;
SIGNAL \Y[27]~output_o\ : std_logic;
SIGNAL \Y[28]~output_o\ : std_logic;
SIGNAL \Y[29]~output_o\ : std_logic;
SIGNAL \Y[30]~output_o\ : std_logic;
SIGNAL \Y[31]~output_o\ : std_logic;
SIGNAL \Y[32]~output_o\ : std_logic;
SIGNAL \Y[33]~output_o\ : std_logic;
SIGNAL \Y[34]~output_o\ : std_logic;
SIGNAL \Y[35]~output_o\ : std_logic;
SIGNAL \Y[36]~output_o\ : std_logic;
SIGNAL \Y[37]~output_o\ : std_logic;
SIGNAL \Y[38]~output_o\ : std_logic;
SIGNAL \Y[39]~output_o\ : std_logic;
SIGNAL \Y[40]~output_o\ : std_logic;
SIGNAL \Y[41]~output_o\ : std_logic;
SIGNAL \Y[42]~output_o\ : std_logic;
SIGNAL \Y[43]~output_o\ : std_logic;
SIGNAL \Y[44]~output_o\ : std_logic;
SIGNAL \Y[45]~output_o\ : std_logic;
SIGNAL \Y[46]~output_o\ : std_logic;
SIGNAL \Y[47]~output_o\ : std_logic;
SIGNAL \Y[48]~output_o\ : std_logic;
SIGNAL \Y[49]~output_o\ : std_logic;
SIGNAL \Y[50]~output_o\ : std_logic;
SIGNAL \Y[51]~output_o\ : std_logic;
SIGNAL \Y[52]~output_o\ : std_logic;
SIGNAL \Y[53]~output_o\ : std_logic;
SIGNAL \Y[54]~output_o\ : std_logic;
SIGNAL \Y[55]~output_o\ : std_logic;
SIGNAL \Y[56]~output_o\ : std_logic;
SIGNAL \Y[57]~output_o\ : std_logic;
SIGNAL \Y[58]~output_o\ : std_logic;
SIGNAL \Y[59]~output_o\ : std_logic;
SIGNAL \Y[60]~output_o\ : std_logic;
SIGNAL \Y[61]~output_o\ : std_logic;
SIGNAL \Y[62]~output_o\ : std_logic;
SIGNAL \Y[63]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \AltB~output_o\ : std_logic;
SIGNAL \AltBu~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \NotA~input_o\ : std_logic;
SIGNAL \add|Y[0]~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \ib[1]~0_combout\ : std_logic;
SIGNAL \add|ic[1]~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \ib[2]~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \add|ic[2]~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \add|ic[3]~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \ib[3]~2_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \add|ic[4]~3_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \ib[4]~3_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \ib[5]~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \add|ic[5]~4_combout\ : std_logic;
SIGNAL \add|ic[6]~5_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \ib[6]~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \add|ic[7]~6_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \ib[7]~6_combout\ : std_logic;
SIGNAL \add|ic[8]~7_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \ib[8]~7_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \add|ic[9]~8_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \ib[9]~8_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \add|ic[10]~9_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \ib[10]~9_combout\ : std_logic;
SIGNAL \add|ic[11]~10_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \ib[11]~10_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \add|ic[12]~11_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \ib[12]~11_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \ib[13]~12_combout\ : std_logic;
SIGNAL \add|ic[13]~12_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \ib[14]~13_combout\ : std_logic;
SIGNAL \add|ic[14]~13_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \add|ic[15]~14_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \ib[15]~14_combout\ : std_logic;
SIGNAL \add|ic[16]~15_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \ib[16]~15_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \ib[17]~16_combout\ : std_logic;
SIGNAL \add|ic[17]~16_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \ib[18]~17_combout\ : std_logic;
SIGNAL \add|ic[18]~17_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \ib[19]~18_combout\ : std_logic;
SIGNAL \add|ic[19]~18_combout\ : std_logic;
SIGNAL \add|ic[20]~19_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \ib[20]~19_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \ib[21]~20_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \add|ic[21]~20_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \add|ic[22]~21_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \ib[22]~21_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \ib[23]~22_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \add|ic[23]~22_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \ib[24]~23_combout\ : std_logic;
SIGNAL \add|ic[24]~23_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \add|ic[25]~24_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \ib[25]~24_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \ib[26]~25_combout\ : std_logic;
SIGNAL \add|ic[26]~25_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \ib[27]~26_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \add|ic[27]~26_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \add|ic[28]~27_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \ib[28]~27_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \ib[29]~28_combout\ : std_logic;
SIGNAL \add|ic[29]~28_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \ib[30]~29_combout\ : std_logic;
SIGNAL \add|ic[30]~29_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \ib[31]~30_combout\ : std_logic;
SIGNAL \add|ic[31]~30_combout\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \ib[32]~31_combout\ : std_logic;
SIGNAL \add|ic[32]~31_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \Y~0_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \ib[33]~32_combout\ : std_logic;
SIGNAL \add|ic[33]~32_combout\ : std_logic;
SIGNAL \Y~1_combout\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \ib[34]~33_combout\ : std_logic;
SIGNAL \add|ic[34]~33_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \Y~2_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \ib[35]~34_combout\ : std_logic;
SIGNAL \add|ic[35]~34_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \Y~3_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \add|ic[36]~35_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \ib[36]~35_combout\ : std_logic;
SIGNAL \Y~4_combout\ : std_logic;
SIGNAL \add|ic[37]~36_combout\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \ib[37]~36_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \Y~5_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \ib[38]~37_combout\ : std_logic;
SIGNAL \add|ic[38]~37_combout\ : std_logic;
SIGNAL \Y~6_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \add|ic[39]~38_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \ib[39]~38_combout\ : std_logic;
SIGNAL \Y~7_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \add|ic[40]~39_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \ib[40]~39_combout\ : std_logic;
SIGNAL \Y~8_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \ib[41]~40_combout\ : std_logic;
SIGNAL \add|ic[41]~40_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \Y~9_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \ib[42]~41_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \add|ic[42]~41_combout\ : std_logic;
SIGNAL \Y~10_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \ib[43]~42_combout\ : std_logic;
SIGNAL \add|ic[43]~42_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \Y~11_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \ib[44]~43_combout\ : std_logic;
SIGNAL \add|ic[44]~43_combout\ : std_logic;
SIGNAL \Y~12_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \ib[45]~44_combout\ : std_logic;
SIGNAL \add|ic[45]~44_combout\ : std_logic;
SIGNAL \Y~13_combout\ : std_logic;
SIGNAL \add|ic[46]~45_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \ib[46]~45_combout\ : std_logic;
SIGNAL \Y~14_combout\ : std_logic;
SIGNAL \add|ic[47]~46_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \ib[47]~46_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \Y~15_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \ib[48]~47_combout\ : std_logic;
SIGNAL \add|ic[48]~47_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \Y~16_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \add|ic[49]~48_combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \ib[49]~48_combout\ : std_logic;
SIGNAL \Y~17_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \ib[50]~49_combout\ : std_logic;
SIGNAL \add|ic[50]~49_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \Y~18_combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \ib[51]~50_combout\ : std_logic;
SIGNAL \add|ic[51]~50_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \Y~19_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \ib[52]~51_combout\ : std_logic;
SIGNAL \add|ic[52]~51_combout\ : std_logic;
SIGNAL \Y~20_combout\ : std_logic;
SIGNAL \add|ic[53]~52_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \ib[53]~52_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \Y~21_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \ib[54]~53_combout\ : std_logic;
SIGNAL \add|ic[54]~53_combout\ : std_logic;
SIGNAL \Y~22_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \ib[55]~54_combout\ : std_logic;
SIGNAL \add|ic[55]~54_combout\ : std_logic;
SIGNAL \Y~23_combout\ : std_logic;
SIGNAL \add|ic[56]~55_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \ib[56]~55_combout\ : std_logic;
SIGNAL \Y~24_combout\ : std_logic;
SIGNAL \add|ic[57]~56_combout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \ib[57]~56_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \Y~25_combout\ : std_logic;
SIGNAL \add|ic[58]~57_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \ib[58]~57_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \Y~26_combout\ : std_logic;
SIGNAL \add|ic[59]~58_combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \ib[59]~58_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \Y~27_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \add|ic[60]~59_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \ib[60]~59_combout\ : std_logic;
SIGNAL \Y~28_combout\ : std_logic;
SIGNAL \add|ic[61]~60_combout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \add|Y[61]~1_combout\ : std_logic;
SIGNAL \Y~29_combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \add|Y[62]~2_combout\ : std_logic;
SIGNAL \ib[61]~60_combout\ : std_logic;
SIGNAL \add|ic[62]~61_combout\ : std_logic;
SIGNAL \Y~30_combout\ : std_logic;
SIGNAL \ib[62]~61_combout\ : std_logic;
SIGNAL \add|ic[63]~62_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \add|ix[63]~0_combout\ : std_logic;
SIGNAL \Y~31_combout\ : std_logic;
SIGNAL \ib[63]~62_combout\ : std_logic;
SIGNAL \add|Cout~0_combout\ : std_logic;
SIGNAL \add|Ovfl~combout\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~15_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~17_combout\ : std_logic;
SIGNAL \Equal0~18_combout\ : std_logic;
SIGNAL \Equal0~19_combout\ : std_logic;
SIGNAL \Equal0~20_combout\ : std_logic;
SIGNAL \Equal0~16_combout\ : std_logic;
SIGNAL \Equal0~21_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~22_combout\ : std_logic;
SIGNAL \AltB~3_combout\ : std_logic;
SIGNAL \AltB~2_combout\ : std_logic;
SIGNAL \add|Y\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \add|ALT_INV_Cout~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
Y <= ww_Y;
ww_NotA <= NotA;
ww_AddnSub <= AddnSub;
ww_ExtWord <= ExtWord;
Cout <= ww_Cout;
Ovfl <= ww_Ovfl;
Zero <= ww_Zero;
AltB <= ww_AltB;
AltBu <= ww_AltBu;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\add|ALT_INV_Cout~0_combout\ <= NOT \add|Cout~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y48_N2
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y[0]~0_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(1),
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(2),
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(3),
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(4),
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(5),
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(6),
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(7),
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(8),
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(9),
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(10),
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(11),
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(12),
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(13),
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(14),
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(15),
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(16),
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(17),
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(18),
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(19),
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(20),
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(21),
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(22),
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(23),
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(24),
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(25),
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(26),
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(27),
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(28),
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(29),
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(30),
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Y\(31),
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~0_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~1_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~2_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~3_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~4_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~5_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~6_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~7_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~8_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~9_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~10_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~11_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~12_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~13_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~14_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~15_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~16_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~17_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~18_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~19_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~20_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~21_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~22_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~23_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~24_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~25_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~26_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~27_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~28_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~29_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~30_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~31_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|Ovfl~combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\Zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~22_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\AltB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AltB~2_combout\,
	devoe => ww_devoe,
	o => \AltB~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\AltBu~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|ALT_INV_Cout~0_combout\,
	devoe => ww_devoe,
	o => \AltBu~output_o\);

-- Location: IOIBUF_X0_Y49_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X115_Y64_N1
\NotA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NotA,
	o => \NotA~input_o\);

-- Location: LCCOMB_X1_Y49_N24
\add|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y[0]~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\NotA~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|Y[0]~0_combout\);

-- Location: IOIBUF_X0_Y44_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X115_Y55_N15
\AddnSub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: LCCOMB_X1_Y46_N24
\ib[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[1]~0_combout\ = \B[1]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[1]~0_combout\);

-- Location: LCCOMB_X1_Y49_N18
\add|ic[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[1]~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (((\NotA~input_o\))))) # (!\B[0]~input_o\ & (((\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \NotA~input_o\,
	combout => \add|ic[1]~0_combout\);

-- Location: LCCOMB_X1_Y46_N18
\add|Y[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(1) = \A[1]~input_o\ $ (\ib[1]~0_combout\ $ (\NotA~input_o\ $ (\add|ic[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \ib[1]~0_combout\,
	datac => \NotA~input_o\,
	datad => \add|ic[1]~0_combout\,
	combout => \add|Y\(1));

-- Location: IOIBUF_X0_Y44_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X1_Y46_N30
\ib[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[2]~1_combout\ = \B[2]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[2]~1_combout\);

-- Location: IOIBUF_X0_Y44_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X1_Y46_N12
\add|ic[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[2]~1_combout\ = (\ib[1]~0_combout\ & ((\add|ic[1]~0_combout\) # (\A[1]~input_o\ $ (\NotA~input_o\)))) # (!\ib[1]~0_combout\ & (\add|ic[1]~0_combout\ & (\A[1]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \ib[1]~0_combout\,
	datac => \NotA~input_o\,
	datad => \add|ic[1]~0_combout\,
	combout => \add|ic[2]~1_combout\);

-- Location: LCCOMB_X1_Y46_N8
\add|Y[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(2) = \ib[2]~1_combout\ $ (\A[2]~input_o\ $ (\NotA~input_o\ $ (\add|ic[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[2]~1_combout\,
	datab => \A[2]~input_o\,
	datac => \NotA~input_o\,
	datad => \add|ic[2]~1_combout\,
	combout => \add|Y\(2));

-- Location: IOIBUF_X0_Y34_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X1_Y46_N26
\add|ic[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[3]~2_combout\ = (\ib[2]~1_combout\ & ((\add|ic[2]~1_combout\) # (\A[2]~input_o\ $ (\NotA~input_o\)))) # (!\ib[2]~1_combout\ & (\add|ic[2]~1_combout\ & (\A[2]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[2]~1_combout\,
	datab => \A[2]~input_o\,
	datac => \NotA~input_o\,
	datad => \add|ic[2]~1_combout\,
	combout => \add|ic[3]~2_combout\);

-- Location: IOIBUF_X0_Y34_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X1_Y34_N8
\ib[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[3]~2_combout\ = \B[3]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[3]~2_combout\);

-- Location: LCCOMB_X1_Y34_N10
\add|Y[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(3) = \A[3]~input_o\ $ (\add|ic[3]~2_combout\ $ (\ib[3]~2_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \add|ic[3]~2_combout\,
	datac => \ib[3]~2_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(3));

-- Location: IOIBUF_X47_Y0_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X1_Y34_N20
\add|ic[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[4]~3_combout\ = (\add|ic[3]~2_combout\ & ((\ib[3]~2_combout\) # (\A[3]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[3]~2_combout\ & (\ib[3]~2_combout\ & (\A[3]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \add|ic[3]~2_combout\,
	datac => \ib[3]~2_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[4]~3_combout\);

-- Location: IOIBUF_X47_Y0_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X46_Y4_N0
\ib[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[4]~3_combout\ = \B[4]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[4]~3_combout\);

-- Location: LCCOMB_X46_Y4_N26
\add|Y[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(4) = \A[4]~input_o\ $ (\add|ic[4]~3_combout\ $ (\NotA~input_o\ $ (\ib[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \add|ic[4]~3_combout\,
	datac => \NotA~input_o\,
	datad => \ib[4]~3_combout\,
	combout => \add|Y\(4));

-- Location: IOIBUF_X49_Y0_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X46_Y4_N22
\ib[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[5]~4_combout\ = \B[5]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[5]~4_combout\);

-- Location: IOIBUF_X45_Y0_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X46_Y4_N4
\add|ic[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[5]~4_combout\ = (\add|ic[4]~3_combout\ & ((\ib[4]~3_combout\) # (\A[4]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[4]~3_combout\ & (\ib[4]~3_combout\ & (\A[4]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \add|ic[4]~3_combout\,
	datac => \NotA~input_o\,
	datad => \ib[4]~3_combout\,
	combout => \add|ic[5]~4_combout\);

-- Location: LCCOMB_X46_Y4_N24
\add|Y[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(5) = \ib[5]~4_combout\ $ (\A[5]~input_o\ $ (\NotA~input_o\ $ (\add|ic[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[5]~4_combout\,
	datab => \A[5]~input_o\,
	datac => \NotA~input_o\,
	datad => \add|ic[5]~4_combout\,
	combout => \add|Y\(5));

-- Location: LCCOMB_X46_Y4_N10
\add|ic[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[6]~5_combout\ = (\ib[5]~4_combout\ & ((\add|ic[5]~4_combout\) # (\A[5]~input_o\ $ (\NotA~input_o\)))) # (!\ib[5]~4_combout\ & (\add|ic[5]~4_combout\ & (\A[5]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[5]~4_combout\,
	datab => \A[5]~input_o\,
	datac => \NotA~input_o\,
	datad => \add|ic[5]~4_combout\,
	combout => \add|ic[6]~5_combout\);

-- Location: IOIBUF_X49_Y0_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X46_Y4_N28
\ib[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[6]~5_combout\ = \B[6]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[6]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[6]~5_combout\);

-- Location: IOIBUF_X49_Y0_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X46_Y4_N6
\add|Y[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(6) = \add|ic[6]~5_combout\ $ (\ib[6]~5_combout\ $ (\NotA~input_o\ $ (\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[6]~5_combout\,
	datab => \ib[6]~5_combout\,
	datac => \NotA~input_o\,
	datad => \A[6]~input_o\,
	combout => \add|Y\(6));

-- Location: IOIBUF_X45_Y0_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X46_Y4_N8
\add|ic[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[7]~6_combout\ = (\add|ic[6]~5_combout\ & ((\ib[6]~5_combout\) # (\NotA~input_o\ $ (\A[6]~input_o\)))) # (!\add|ic[6]~5_combout\ & (\ib[6]~5_combout\ & (\NotA~input_o\ $ (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[6]~5_combout\,
	datab => \ib[6]~5_combout\,
	datac => \NotA~input_o\,
	datad => \A[6]~input_o\,
	combout => \add|ic[7]~6_combout\);

-- Location: IOIBUF_X38_Y0_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X46_Y4_N18
\ib[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[7]~6_combout\ = \B[7]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[7]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[7]~6_combout\);

-- Location: LCCOMB_X46_Y4_N12
\add|Y[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(7) = \A[7]~input_o\ $ (\add|ic[7]~6_combout\ $ (\NotA~input_o\ $ (\ib[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \add|ic[7]~6_combout\,
	datac => \NotA~input_o\,
	datad => \ib[7]~6_combout\,
	combout => \add|Y\(7));

-- Location: LCCOMB_X46_Y4_N30
\add|ic[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[8]~7_combout\ = (\add|ic[7]~6_combout\ & ((\ib[7]~6_combout\) # (\A[7]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[7]~6_combout\ & (\ib[7]~6_combout\ & (\A[7]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \add|ic[7]~6_combout\,
	datac => \NotA~input_o\,
	datad => \ib[7]~6_combout\,
	combout => \add|ic[8]~7_combout\);

-- Location: IOIBUF_X40_Y0_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X46_Y4_N16
\ib[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[8]~7_combout\ = \B[8]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[8]~7_combout\);

-- Location: IOIBUF_X49_Y0_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X46_Y4_N2
\add|Y[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(8) = \add|ic[8]~7_combout\ $ (\ib[8]~7_combout\ $ (\NotA~input_o\ $ (\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[8]~7_combout\,
	datab => \ib[8]~7_combout\,
	datac => \NotA~input_o\,
	datad => \A[8]~input_o\,
	combout => \add|Y\(8));

-- Location: LCCOMB_X46_Y4_N20
\add|ic[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[9]~8_combout\ = (\add|ic[8]~7_combout\ & ((\ib[8]~7_combout\) # (\NotA~input_o\ $ (\A[8]~input_o\)))) # (!\add|ic[8]~7_combout\ & (\ib[8]~7_combout\ & (\NotA~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[8]~7_combout\,
	datab => \ib[8]~7_combout\,
	datac => \NotA~input_o\,
	datad => \A[8]~input_o\,
	combout => \add|ic[9]~8_combout\);

-- Location: IOIBUF_X56_Y0_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X55_Y4_N8
\ib[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[9]~8_combout\ = \B[9]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \ib[9]~8_combout\);

-- Location: IOIBUF_X54_Y0_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X55_Y4_N26
\add|Y[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(9) = \add|ic[9]~8_combout\ $ (\ib[9]~8_combout\ $ (\A[9]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[9]~8_combout\,
	datab => \ib[9]~8_combout\,
	datac => \A[9]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|Y\(9));

-- Location: LCCOMB_X55_Y4_N12
\add|ic[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[10]~9_combout\ = (\add|ic[9]~8_combout\ & ((\ib[9]~8_combout\) # (\A[9]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[9]~8_combout\ & (\ib[9]~8_combout\ & (\A[9]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[9]~8_combout\,
	datab => \ib[9]~8_combout\,
	datac => \A[9]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|ic[10]~9_combout\);

-- Location: IOIBUF_X56_Y0_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X55_Y4_N22
\ib[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[10]~9_combout\ = \B[10]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \ib[10]~9_combout\);

-- Location: LCCOMB_X55_Y4_N0
\add|Y[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(10) = \add|ic[10]~9_combout\ $ (\A[10]~input_o\ $ (\ib[10]~9_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[10]~9_combout\,
	datab => \A[10]~input_o\,
	datac => \ib[10]~9_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(10));

-- Location: LCCOMB_X55_Y4_N10
\add|ic[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[11]~10_combout\ = (\add|ic[10]~9_combout\ & ((\ib[10]~9_combout\) # (\A[10]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[10]~9_combout\ & (\ib[10]~9_combout\ & (\A[10]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[10]~9_combout\,
	datab => \A[10]~input_o\,
	datac => \ib[10]~9_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[11]~10_combout\);

-- Location: IOIBUF_X52_Y0_N1
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X55_Y4_N4
\ib[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[11]~10_combout\ = \AddnSub~input_o\ $ (\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[11]~input_o\,
	combout => \ib[11]~10_combout\);

-- Location: LCCOMB_X55_Y4_N6
\add|Y[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(11) = \add|ic[11]~10_combout\ $ (\A[11]~input_o\ $ (\ib[11]~10_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[11]~10_combout\,
	datab => \A[11]~input_o\,
	datac => \ib[11]~10_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(11));

-- Location: IOIBUF_X56_Y0_N15
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X55_Y4_N24
\add|ic[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[12]~11_combout\ = (\add|ic[11]~10_combout\ & ((\ib[11]~10_combout\) # (\A[11]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[11]~10_combout\ & (\ib[11]~10_combout\ & (\A[11]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[11]~10_combout\,
	datab => \A[11]~input_o\,
	datac => \ib[11]~10_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[12]~11_combout\);

-- Location: IOIBUF_X54_Y0_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X55_Y4_N18
\ib[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[12]~11_combout\ = \AddnSub~input_o\ $ (\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[12]~input_o\,
	combout => \ib[12]~11_combout\);

-- Location: LCCOMB_X55_Y4_N28
\add|Y[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(12) = \A[12]~input_o\ $ (\add|ic[12]~11_combout\ $ (\ib[12]~11_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \add|ic[12]~11_combout\,
	datac => \ib[12]~11_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(12));

-- Location: IOIBUF_X62_Y0_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X55_Y4_N16
\ib[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[13]~12_combout\ = \AddnSub~input_o\ $ (\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[13]~input_o\,
	combout => \ib[13]~12_combout\);

-- Location: LCCOMB_X55_Y4_N14
\add|ic[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[13]~12_combout\ = (\add|ic[12]~11_combout\ & ((\ib[12]~11_combout\) # (\A[12]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[12]~11_combout\ & (\ib[12]~11_combout\ & (\A[12]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \add|ic[12]~11_combout\,
	datac => \ib[12]~11_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[13]~12_combout\);

-- Location: LCCOMB_X55_Y4_N2
\add|Y[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(13) = \A[13]~input_o\ $ (\ib[13]~12_combout\ $ (\add|ic[13]~12_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \ib[13]~12_combout\,
	datac => \add|ic[13]~12_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(13));

-- Location: IOIBUF_X83_Y73_N22
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X83_Y69_N0
\ib[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[14]~13_combout\ = \B[14]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \ib[14]~13_combout\);

-- Location: LCCOMB_X55_Y4_N20
\add|ic[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[14]~13_combout\ = (\ib[13]~12_combout\ & ((\add|ic[13]~12_combout\) # (\A[13]~input_o\ $ (\NotA~input_o\)))) # (!\ib[13]~12_combout\ & (\add|ic[13]~12_combout\ & (\A[13]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \ib[13]~12_combout\,
	datac => \add|ic[13]~12_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[14]~13_combout\);

-- Location: LCCOMB_X83_Y69_N26
\add|Y[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(14) = \A[14]~input_o\ $ (\ib[14]~13_combout\ $ (\add|ic[14]~13_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \ib[14]~13_combout\,
	datac => \add|ic[14]~13_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(14));

-- Location: IOIBUF_X87_Y73_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X83_Y69_N4
\add|ic[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[15]~14_combout\ = (\ib[14]~13_combout\ & ((\add|ic[14]~13_combout\) # (\A[14]~input_o\ $ (\NotA~input_o\)))) # (!\ib[14]~13_combout\ & (\add|ic[14]~13_combout\ & (\A[14]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \ib[14]~13_combout\,
	datac => \add|ic[14]~13_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[15]~14_combout\);

-- Location: IOIBUF_X81_Y73_N8
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X83_Y69_N30
\ib[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[15]~14_combout\ = \AddnSub~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[15]~input_o\,
	combout => \ib[15]~14_combout\);

-- Location: LCCOMB_X83_Y69_N24
\add|Y[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(15) = \A[15]~input_o\ $ (\add|ic[15]~14_combout\ $ (\ib[15]~14_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \add|ic[15]~14_combout\,
	datac => \ib[15]~14_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(15));

-- Location: LCCOMB_X83_Y69_N10
\add|ic[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[16]~15_combout\ = (\add|ic[15]~14_combout\ & ((\ib[15]~14_combout\) # (\A[15]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[15]~14_combout\ & (\ib[15]~14_combout\ & (\A[15]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \add|ic[15]~14_combout\,
	datac => \ib[15]~14_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[16]~15_combout\);

-- Location: IOIBUF_X83_Y73_N8
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X83_Y69_N20
\ib[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[16]~15_combout\ = \AddnSub~input_o\ $ (\B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[16]~input_o\,
	combout => \ib[16]~15_combout\);

-- Location: IOIBUF_X83_Y73_N15
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X83_Y69_N6
\add|Y[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(16) = \add|ic[16]~15_combout\ $ (\ib[16]~15_combout\ $ (\A[16]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[16]~15_combout\,
	datab => \ib[16]~15_combout\,
	datac => \A[16]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|Y\(16));

-- Location: IOIBUF_X85_Y73_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X83_Y73_N1
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X83_Y69_N18
\ib[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[17]~16_combout\ = \B[17]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \ib[17]~16_combout\);

-- Location: LCCOMB_X83_Y69_N8
\add|ic[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[17]~16_combout\ = (\add|ic[16]~15_combout\ & ((\ib[16]~15_combout\) # (\A[16]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[16]~15_combout\ & (\ib[16]~15_combout\ & (\A[16]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[16]~15_combout\,
	datab => \ib[16]~15_combout\,
	datac => \A[16]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|ic[17]~16_combout\);

-- Location: LCCOMB_X83_Y69_N12
\add|Y[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(17) = \A[17]~input_o\ $ (\ib[17]~16_combout\ $ (\add|ic[17]~16_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \ib[17]~16_combout\,
	datac => \add|ic[17]~16_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(17));

-- Location: IOIBUF_X81_Y73_N22
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X85_Y73_N8
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X83_Y69_N16
\ib[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[18]~17_combout\ = \B[18]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \ib[18]~17_combout\);

-- Location: LCCOMB_X83_Y69_N14
\add|ic[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[18]~17_combout\ = (\ib[17]~16_combout\ & ((\add|ic[17]~16_combout\) # (\A[17]~input_o\ $ (\NotA~input_o\)))) # (!\ib[17]~16_combout\ & (\add|ic[17]~16_combout\ & (\A[17]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \ib[17]~16_combout\,
	datac => \add|ic[17]~16_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[18]~17_combout\);

-- Location: LCCOMB_X83_Y69_N2
\add|Y[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(18) = \A[18]~input_o\ $ (\ib[18]~17_combout\ $ (\add|ic[18]~17_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \ib[18]~17_combout\,
	datac => \add|ic[18]~17_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(18));

-- Location: IOIBUF_X115_Y35_N22
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X115_Y36_N1
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X114_Y36_N8
\ib[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[19]~18_combout\ = \B[19]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[19]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[19]~18_combout\);

-- Location: LCCOMB_X83_Y69_N28
\add|ic[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[19]~18_combout\ = (\ib[18]~17_combout\ & ((\add|ic[18]~17_combout\) # (\A[18]~input_o\ $ (\NotA~input_o\)))) # (!\ib[18]~17_combout\ & (\add|ic[18]~17_combout\ & (\A[18]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \ib[18]~17_combout\,
	datac => \add|ic[18]~17_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[19]~18_combout\);

-- Location: LCCOMB_X114_Y36_N18
\add|Y[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(19) = \A[19]~input_o\ $ (\ib[19]~18_combout\ $ (\add|ic[19]~18_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \ib[19]~18_combout\,
	datac => \add|ic[19]~18_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(19));

-- Location: LCCOMB_X114_Y36_N12
\add|ic[20]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[20]~19_combout\ = (\ib[19]~18_combout\ & ((\add|ic[19]~18_combout\) # (\A[19]~input_o\ $ (\NotA~input_o\)))) # (!\ib[19]~18_combout\ & (\add|ic[19]~18_combout\ & (\A[19]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \ib[19]~18_combout\,
	datac => \add|ic[19]~18_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[20]~19_combout\);

-- Location: IOIBUF_X115_Y34_N15
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X115_Y36_N8
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X114_Y36_N30
\ib[20]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[20]~19_combout\ = \AddnSub~input_o\ $ (\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[20]~input_o\,
	combout => \ib[20]~19_combout\);

-- Location: LCCOMB_X114_Y36_N16
\add|Y[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(20) = \add|ic[20]~19_combout\ $ (\A[20]~input_o\ $ (\ib[20]~19_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[20]~19_combout\,
	datab => \A[20]~input_o\,
	datac => \ib[20]~19_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(20));

-- Location: IOIBUF_X115_Y33_N1
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X114_Y36_N28
\ib[21]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[21]~20_combout\ = \B[21]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[21]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[21]~20_combout\);

-- Location: IOIBUF_X115_Y34_N22
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X114_Y36_N26
\add|ic[21]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[21]~20_combout\ = (\add|ic[20]~19_combout\ & ((\ib[20]~19_combout\) # (\A[20]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[20]~19_combout\ & (\ib[20]~19_combout\ & (\A[20]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[20]~19_combout\,
	datab => \A[20]~input_o\,
	datac => \ib[20]~19_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[21]~20_combout\);

-- Location: LCCOMB_X114_Y36_N6
\add|Y[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(21) = \ib[21]~20_combout\ $ (\A[21]~input_o\ $ (\add|ic[21]~20_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[21]~20_combout\,
	datab => \A[21]~input_o\,
	datac => \add|ic[21]~20_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(21));

-- Location: IOIBUF_X115_Y41_N1
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X114_Y36_N24
\add|ic[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[22]~21_combout\ = (\ib[21]~20_combout\ & ((\add|ic[21]~20_combout\) # (\A[21]~input_o\ $ (\NotA~input_o\)))) # (!\ib[21]~20_combout\ & (\add|ic[21]~20_combout\ & (\A[21]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[21]~20_combout\,
	datab => \A[21]~input_o\,
	datac => \add|ic[21]~20_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[22]~21_combout\);

-- Location: IOIBUF_X115_Y40_N8
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X114_Y36_N10
\ib[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[22]~21_combout\ = \B[22]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[22]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[22]~21_combout\);

-- Location: LCCOMB_X114_Y36_N20
\add|Y[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(22) = \A[22]~input_o\ $ (\add|ic[22]~21_combout\ $ (\ib[22]~21_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \add|ic[22]~21_combout\,
	datac => \ib[22]~21_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(22));

-- Location: IOIBUF_X115_Y35_N15
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X114_Y36_N0
\ib[23]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[23]~22_combout\ = \B[23]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[23]~22_combout\);

-- Location: IOIBUF_X115_Y36_N15
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X114_Y36_N22
\add|ic[23]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[23]~22_combout\ = (\add|ic[22]~21_combout\ & ((\ib[22]~21_combout\) # (\A[22]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[22]~21_combout\ & (\ib[22]~21_combout\ & (\A[22]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \add|ic[22]~21_combout\,
	datac => \ib[22]~21_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[23]~22_combout\);

-- Location: LCCOMB_X114_Y36_N2
\add|Y[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(23) = \ib[23]~22_combout\ $ (\A[23]~input_o\ $ (\add|ic[23]~22_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[23]~22_combout\,
	datab => \A[23]~input_o\,
	datac => \add|ic[23]~22_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(23));

-- Location: IOIBUF_X16_Y0_N22
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X20_Y4_N16
\ib[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[24]~23_combout\ = \B[24]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[24]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[24]~23_combout\);

-- Location: LCCOMB_X114_Y36_N4
\add|ic[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[24]~23_combout\ = (\ib[23]~22_combout\ & ((\add|ic[23]~22_combout\) # (\A[23]~input_o\ $ (\NotA~input_o\)))) # (!\ib[23]~22_combout\ & (\add|ic[23]~22_combout\ & (\A[23]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[23]~22_combout\,
	datab => \A[23]~input_o\,
	datac => \add|ic[23]~22_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[24]~23_combout\);

-- Location: LCCOMB_X20_Y4_N2
\add|Y[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(24) = \A[24]~input_o\ $ (\ib[24]~23_combout\ $ (\add|ic[24]~23_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \ib[24]~23_combout\,
	datac => \add|ic[24]~23_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(24));

-- Location: IOIBUF_X20_Y0_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X20_Y4_N20
\add|ic[25]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[25]~24_combout\ = (\ib[24]~23_combout\ & ((\add|ic[24]~23_combout\) # (\A[24]~input_o\ $ (\NotA~input_o\)))) # (!\ib[24]~23_combout\ & (\add|ic[24]~23_combout\ & (\A[24]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \ib[24]~23_combout\,
	datac => \add|ic[24]~23_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[25]~24_combout\);

-- Location: IOIBUF_X13_Y0_N22
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X20_Y4_N30
\ib[25]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[25]~24_combout\ = \B[25]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[25]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[25]~24_combout\);

-- Location: LCCOMB_X20_Y4_N24
\add|Y[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(25) = \A[25]~input_o\ $ (\add|ic[25]~24_combout\ $ (\ib[25]~24_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \add|ic[25]~24_combout\,
	datac => \ib[25]~24_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(25));

-- Location: IOIBUF_X20_Y0_N8
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X20_Y4_N4
\ib[26]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[26]~25_combout\ = \B[26]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[26]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[26]~25_combout\);

-- Location: LCCOMB_X20_Y4_N18
\add|ic[26]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[26]~25_combout\ = (\add|ic[25]~24_combout\ & ((\ib[25]~24_combout\) # (\A[25]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[25]~24_combout\ & (\ib[25]~24_combout\ & (\A[25]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \add|ic[25]~24_combout\,
	datac => \ib[25]~24_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[26]~25_combout\);

-- Location: LCCOMB_X20_Y4_N6
\add|Y[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(26) = \NotA~input_o\ $ (\A[26]~input_o\ $ (\ib[26]~25_combout\ $ (\add|ic[26]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[26]~input_o\,
	datac => \ib[26]~25_combout\,
	datad => \add|ic[26]~25_combout\,
	combout => \add|Y\(26));

-- Location: IOIBUF_X18_Y0_N8
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X20_Y4_N10
\ib[27]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[27]~26_combout\ = \B[27]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[27]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[27]~26_combout\);

-- Location: IOIBUF_X16_Y0_N1
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X20_Y4_N8
\add|ic[27]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[27]~26_combout\ = (\ib[26]~25_combout\ & ((\add|ic[26]~25_combout\) # (\NotA~input_o\ $ (\A[26]~input_o\)))) # (!\ib[26]~25_combout\ & (\add|ic[26]~25_combout\ & (\NotA~input_o\ $ (\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[26]~input_o\,
	datac => \ib[26]~25_combout\,
	datad => \add|ic[26]~25_combout\,
	combout => \add|ic[27]~26_combout\);

-- Location: LCCOMB_X20_Y4_N12
\add|Y[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(27) = \ib[27]~26_combout\ $ (\A[27]~input_o\ $ (\add|ic[27]~26_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[27]~26_combout\,
	datab => \A[27]~input_o\,
	datac => \add|ic[27]~26_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(27));

-- Location: IOIBUF_X0_Y34_N8
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X20_Y4_N22
\add|ic[28]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[28]~27_combout\ = (\ib[27]~26_combout\ & ((\add|ic[27]~26_combout\) # (\A[27]~input_o\ $ (\NotA~input_o\)))) # (!\ib[27]~26_combout\ & (\add|ic[27]~26_combout\ & (\A[27]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[27]~26_combout\,
	datab => \A[27]~input_o\,
	datac => \add|ic[27]~26_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[28]~27_combout\);

-- Location: IOIBUF_X0_Y33_N22
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X1_Y34_N14
\ib[28]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[28]~27_combout\ = \B[28]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[28]~27_combout\);

-- Location: LCCOMB_X1_Y34_N16
\add|Y[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(28) = \A[28]~input_o\ $ (\add|ic[28]~27_combout\ $ (\ib[28]~27_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \add|ic[28]~27_combout\,
	datac => \ib[28]~27_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(28));

-- Location: IOIBUF_X0_Y30_N1
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X1_Y34_N12
\ib[29]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[29]~28_combout\ = \B[29]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[29]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[29]~28_combout\);

-- Location: LCCOMB_X1_Y34_N2
\add|ic[29]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[29]~28_combout\ = (\add|ic[28]~27_combout\ & ((\ib[28]~27_combout\) # (\A[28]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[28]~27_combout\ & (\ib[28]~27_combout\ & (\A[28]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \add|ic[28]~27_combout\,
	datac => \ib[28]~27_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[29]~28_combout\);

-- Location: IOIBUF_X0_Y29_N15
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X1_Y34_N30
\add|Y[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(29) = \ib[29]~28_combout\ $ (\add|ic[29]~28_combout\ $ (\A[29]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[29]~28_combout\,
	datab => \add|ic[29]~28_combout\,
	datac => \A[29]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|Y\(29));

-- Location: IOIBUF_X0_Y33_N15
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X1_Y34_N26
\ib[30]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[30]~29_combout\ = \B[30]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[30]~29_combout\);

-- Location: LCCOMB_X1_Y34_N24
\add|ic[30]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[30]~29_combout\ = (\ib[29]~28_combout\ & ((\add|ic[29]~28_combout\) # (\A[29]~input_o\ $ (\NotA~input_o\)))) # (!\ib[29]~28_combout\ & (\add|ic[29]~28_combout\ & (\A[29]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[29]~28_combout\,
	datab => \add|ic[29]~28_combout\,
	datac => \A[29]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|ic[30]~29_combout\);

-- Location: IOIBUF_X0_Y35_N8
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X1_Y34_N4
\add|Y[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(30) = \ib[30]~29_combout\ $ (\add|ic[30]~29_combout\ $ (\A[30]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[30]~29_combout\,
	datab => \add|ic[30]~29_combout\,
	datac => \A[30]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|Y\(30));

-- Location: IOIBUF_X0_Y34_N1
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X1_Y34_N0
\ib[31]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[31]~30_combout\ = \B[31]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[31]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[31]~30_combout\);

-- Location: LCCOMB_X1_Y34_N22
\add|ic[31]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[31]~30_combout\ = (\ib[30]~29_combout\ & ((\add|ic[30]~29_combout\) # (\A[30]~input_o\ $ (\NotA~input_o\)))) # (!\ib[30]~29_combout\ & (\add|ic[30]~29_combout\ & (\A[30]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[30]~29_combout\,
	datab => \add|ic[30]~29_combout\,
	datac => \A[30]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|ic[31]~30_combout\);

-- Location: LCCOMB_X1_Y34_N18
\add|Y[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(31) = \A[31]~input_o\ $ (\ib[31]~30_combout\ $ (\add|ic[31]~30_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ib[31]~30_combout\,
	datac => \add|ic[31]~30_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(31));

-- Location: IOIBUF_X56_Y73_N8
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X20_Y4_N0
\ib[32]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[32]~31_combout\ = \B[32]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[32]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[32]~31_combout\);

-- Location: LCCOMB_X1_Y34_N28
\add|ic[32]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[32]~31_combout\ = (\ib[31]~30_combout\ & ((\add|ic[31]~30_combout\) # (\A[31]~input_o\ $ (\NotA~input_o\)))) # (!\ib[31]~30_combout\ & (\add|ic[31]~30_combout\ & (\A[31]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ib[31]~30_combout\,
	datac => \add|ic[31]~30_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[32]~31_combout\);

-- Location: IOIBUF_X56_Y73_N1
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X56_Y69_N24
\add|Y[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(32) = \ib[32]~31_combout\ $ (\add|ic[32]~31_combout\ $ (\NotA~input_o\ $ (\A[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[32]~31_combout\,
	datab => \add|ic[32]~31_combout\,
	datac => \NotA~input_o\,
	datad => \A[32]~input_o\,
	combout => \add|Y\(32));

-- Location: LCCOMB_X56_Y69_N2
\Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~0_combout\ = (\ExtWord~input_o\ & (\add|Y\(31))) # (!\ExtWord~input_o\ & ((\add|Y\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|Y\(31),
	datac => \ExtWord~input_o\,
	datad => \add|Y\(32),
	combout => \Y~0_combout\);

-- Location: IOIBUF_X52_Y73_N15
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: LCCOMB_X56_Y69_N14
\ib[33]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[33]~32_combout\ = \B[33]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \ib[33]~32_combout\);

-- Location: LCCOMB_X56_Y69_N12
\add|ic[33]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[33]~32_combout\ = (\ib[32]~31_combout\ & ((\add|ic[32]~31_combout\) # (\NotA~input_o\ $ (\A[32]~input_o\)))) # (!\ib[32]~31_combout\ & (\add|ic[32]~31_combout\ & (\NotA~input_o\ $ (\A[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[32]~31_combout\,
	datab => \add|ic[32]~31_combout\,
	datac => \NotA~input_o\,
	datad => \A[32]~input_o\,
	combout => \add|ic[33]~32_combout\);

-- Location: LCCOMB_X56_Y69_N0
\add|Y[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(33) = \A[33]~input_o\ $ (\ib[33]~32_combout\ $ (\NotA~input_o\ $ (\add|ic[33]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \ib[33]~32_combout\,
	datac => \NotA~input_o\,
	datad => \add|ic[33]~32_combout\,
	combout => \add|Y\(33));

-- Location: LCCOMB_X56_Y69_N26
\Y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~1_combout\ = (\ExtWord~input_o\ & (\add|Y\(31))) # (!\ExtWord~input_o\ & ((\add|Y\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|Y\(31),
	datac => \ExtWord~input_o\,
	datad => \add|Y\(33),
	combout => \Y~1_combout\);

-- Location: IOIBUF_X60_Y73_N15
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X56_Y69_N6
\ib[34]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[34]~33_combout\ = \AddnSub~input_o\ $ (\B[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[34]~input_o\,
	combout => \ib[34]~33_combout\);

-- Location: LCCOMB_X56_Y69_N20
\add|ic[34]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[34]~33_combout\ = (\ib[33]~32_combout\ & ((\add|ic[33]~32_combout\) # (\A[33]~input_o\ $ (\NotA~input_o\)))) # (!\ib[33]~32_combout\ & (\add|ic[33]~32_combout\ & (\A[33]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \ib[33]~32_combout\,
	datac => \NotA~input_o\,
	datad => \add|ic[33]~32_combout\,
	combout => \add|ic[34]~33_combout\);

-- Location: IOIBUF_X56_Y73_N15
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: LCCOMB_X56_Y69_N8
\add|Y[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(34) = \ib[34]~33_combout\ $ (\add|ic[34]~33_combout\ $ (\NotA~input_o\ $ (\A[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[34]~33_combout\,
	datab => \add|ic[34]~33_combout\,
	datac => \NotA~input_o\,
	datad => \A[34]~input_o\,
	combout => \add|Y\(34));

-- Location: LCCOMB_X56_Y69_N18
\Y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~2_combout\ = (\ExtWord~input_o\ & ((\add|Y\(31)))) # (!\ExtWord~input_o\ & (\add|Y\(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|Y\(34),
	datac => \ExtWord~input_o\,
	datad => \add|Y\(31),
	combout => \Y~2_combout\);

-- Location: IOIBUF_X56_Y73_N22
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: LCCOMB_X56_Y69_N22
\ib[35]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[35]~34_combout\ = \B[35]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[35]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \ib[35]~34_combout\);

-- Location: LCCOMB_X56_Y69_N4
\add|ic[35]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[35]~34_combout\ = (\ib[34]~33_combout\ & ((\add|ic[34]~33_combout\) # (\NotA~input_o\ $ (\A[34]~input_o\)))) # (!\ib[34]~33_combout\ & (\add|ic[34]~33_combout\ & (\NotA~input_o\ $ (\A[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[34]~33_combout\,
	datab => \add|ic[34]~33_combout\,
	datac => \NotA~input_o\,
	datad => \A[34]~input_o\,
	combout => \add|ic[35]~34_combout\);

-- Location: IOIBUF_X58_Y73_N22
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X56_Y69_N16
\add|Y[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(35) = \ib[35]~34_combout\ $ (\add|ic[35]~34_combout\ $ (\NotA~input_o\ $ (\A[35]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[35]~34_combout\,
	datab => \add|ic[35]~34_combout\,
	datac => \NotA~input_o\,
	datad => \A[35]~input_o\,
	combout => \add|Y\(35));

-- Location: LCCOMB_X56_Y69_N10
\Y~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~3_combout\ = (\ExtWord~input_o\ & (\add|Y\(31))) # (!\ExtWord~input_o\ & ((\add|Y\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|Y\(31),
	datac => \ExtWord~input_o\,
	datad => \add|Y\(35),
	combout => \Y~3_combout\);

-- Location: IOIBUF_X62_Y73_N22
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X56_Y69_N28
\add|ic[36]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[36]~35_combout\ = (\ib[35]~34_combout\ & ((\add|ic[35]~34_combout\) # (\NotA~input_o\ $ (\A[35]~input_o\)))) # (!\ib[35]~34_combout\ & (\add|ic[35]~34_combout\ & (\NotA~input_o\ $ (\A[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[35]~34_combout\,
	datab => \add|ic[35]~34_combout\,
	datac => \NotA~input_o\,
	datad => \A[35]~input_o\,
	combout => \add|ic[36]~35_combout\);

-- Location: IOIBUF_X65_Y73_N8
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LCCOMB_X61_Y69_N8
\ib[36]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[36]~35_combout\ = \AddnSub~input_o\ $ (\B[36]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[36]~input_o\,
	combout => \ib[36]~35_combout\);

-- Location: LCCOMB_X61_Y69_N18
\add|Y[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(36) = \A[36]~input_o\ $ (\add|ic[36]~35_combout\ $ (\ib[36]~35_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \add|ic[36]~35_combout\,
	datac => \ib[36]~35_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(36));

-- Location: LCCOMB_X61_Y69_N4
\Y~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~4_combout\ = (\ExtWord~input_o\ & (\add|Y\(31))) # (!\ExtWord~input_o\ & ((\add|Y\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \add|Y\(31),
	datad => \add|Y\(36),
	combout => \Y~4_combout\);

-- Location: LCCOMB_X61_Y69_N6
\add|ic[37]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[37]~36_combout\ = (\add|ic[36]~35_combout\ & ((\ib[36]~35_combout\) # (\A[36]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[36]~35_combout\ & (\ib[36]~35_combout\ & (\A[36]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \add|ic[36]~35_combout\,
	datac => \ib[36]~35_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[37]~36_combout\);

-- Location: IOIBUF_X60_Y0_N15
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X61_Y69_N16
\ib[37]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[37]~36_combout\ = \AddnSub~input_o\ $ (\B[37]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[37]~input_o\,
	combout => \ib[37]~36_combout\);

-- Location: IOIBUF_X60_Y73_N8
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LCCOMB_X61_Y69_N26
\add|Y[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(37) = \add|ic[37]~36_combout\ $ (\ib[37]~36_combout\ $ (\A[37]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[37]~36_combout\,
	datab => \ib[37]~36_combout\,
	datac => \A[37]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|Y\(37));

-- Location: LCCOMB_X61_Y69_N12
\Y~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~5_combout\ = (\ExtWord~input_o\ & (\add|Y\(31))) # (!\ExtWord~input_o\ & ((\add|Y\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(31),
	datac => \add|Y\(37),
	datad => \ExtWord~input_o\,
	combout => \Y~5_combout\);

-- Location: IOIBUF_X69_Y73_N1
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X54_Y69_N24
\ib[38]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[38]~37_combout\ = \AddnSub~input_o\ $ (\B[38]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[38]~input_o\,
	combout => \ib[38]~37_combout\);

-- Location: LCCOMB_X61_Y69_N22
\add|ic[38]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[38]~37_combout\ = (\add|ic[37]~36_combout\ & ((\ib[37]~36_combout\) # (\A[37]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[37]~36_combout\ & (\ib[37]~36_combout\ & (\A[37]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[37]~36_combout\,
	datab => \ib[37]~36_combout\,
	datac => \A[37]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|ic[38]~37_combout\);

-- Location: LCCOMB_X61_Y69_N24
\add|Y[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(38) = \A[38]~input_o\ $ (\ib[38]~37_combout\ $ (\add|ic[38]~37_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \ib[38]~37_combout\,
	datac => \add|ic[38]~37_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(38));

-- Location: LCCOMB_X61_Y69_N2
\Y~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~6_combout\ = (\ExtWord~input_o\ & (\add|Y\(31))) # (!\ExtWord~input_o\ & ((\add|Y\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \add|Y\(31),
	datad => \add|Y\(38),
	combout => \Y~6_combout\);

-- Location: IOIBUF_X72_Y73_N1
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X61_Y69_N28
\add|ic[39]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[39]~38_combout\ = (\ib[38]~37_combout\ & ((\add|ic[38]~37_combout\) # (\A[38]~input_o\ $ (\NotA~input_o\)))) # (!\ib[38]~37_combout\ & (\add|ic[38]~37_combout\ & (\A[38]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \ib[38]~37_combout\,
	datac => \add|ic[38]~37_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[39]~38_combout\);

-- Location: IOIBUF_X62_Y73_N15
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LCCOMB_X61_Y69_N30
\ib[39]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[39]~38_combout\ = \AddnSub~input_o\ $ (\B[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[39]~input_o\,
	combout => \ib[39]~38_combout\);

-- Location: LCCOMB_X61_Y69_N0
\add|Y[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(39) = \A[39]~input_o\ $ (\add|ic[39]~38_combout\ $ (\ib[39]~38_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \add|ic[39]~38_combout\,
	datac => \ib[39]~38_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(39));

-- Location: LCCOMB_X61_Y69_N10
\Y~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~7_combout\ = (\ExtWord~input_o\ & (\add|Y\(31))) # (!\ExtWord~input_o\ & ((\add|Y\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \add|Y\(31),
	datad => \add|Y\(39),
	combout => \Y~7_combout\);

-- Location: IOIBUF_X72_Y73_N22
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X61_Y69_N20
\add|ic[40]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[40]~39_combout\ = (\add|ic[39]~38_combout\ & ((\ib[39]~38_combout\) # (\A[39]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[39]~38_combout\ & (\ib[39]~38_combout\ & (\A[39]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \add|ic[39]~38_combout\,
	datac => \ib[39]~38_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[40]~39_combout\);

-- Location: IOIBUF_X67_Y73_N15
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LCCOMB_X66_Y69_N0
\ib[40]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[40]~39_combout\ = \B[40]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[40]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[40]~39_combout\);

-- Location: LCCOMB_X66_Y69_N10
\add|Y[40]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(40) = \A[40]~input_o\ $ (\add|ic[40]~39_combout\ $ (\NotA~input_o\ $ (\ib[40]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \add|ic[40]~39_combout\,
	datac => \NotA~input_o\,
	datad => \ib[40]~39_combout\,
	combout => \add|Y\(40));

-- Location: LCCOMB_X66_Y69_N28
\Y~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~8_combout\ = (\ExtWord~input_o\ & (\add|Y\(31))) # (!\ExtWord~input_o\ & ((\add|Y\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|Y\(31),
	datac => \ExtWord~input_o\,
	datad => \add|Y\(40),
	combout => \Y~8_combout\);

-- Location: IOIBUF_X67_Y73_N1
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LCCOMB_X66_Y69_N16
\ib[41]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[41]~40_combout\ = \B[41]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[41]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[41]~40_combout\);

-- Location: LCCOMB_X66_Y69_N14
\add|ic[41]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[41]~40_combout\ = (\add|ic[40]~39_combout\ & ((\ib[40]~39_combout\) # (\A[40]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[40]~39_combout\ & (\ib[40]~39_combout\ & (\A[40]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \add|ic[40]~39_combout\,
	datac => \NotA~input_o\,
	datad => \ib[40]~39_combout\,
	combout => \add|ic[41]~40_combout\);

-- Location: IOIBUF_X67_Y73_N8
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X66_Y69_N26
\add|Y[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(41) = \NotA~input_o\ $ (\ib[41]~40_combout\ $ (\add|ic[41]~40_combout\ $ (\A[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \ib[41]~40_combout\,
	datac => \add|ic[41]~40_combout\,
	datad => \A[41]~input_o\,
	combout => \add|Y\(41));

-- Location: LCCOMB_X1_Y46_N4
\Y~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~9_combout\ = (\ExtWord~input_o\ & (\add|Y\(31))) # (!\ExtWord~input_o\ & ((\add|Y\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|Y\(31),
	datac => \add|Y\(41),
	datad => \ExtWord~input_o\,
	combout => \Y~9_combout\);

-- Location: IOIBUF_X67_Y73_N22
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LCCOMB_X66_Y69_N22
\ib[42]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[42]~41_combout\ = \B[42]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[42]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[42]~41_combout\);

-- Location: IOIBUF_X65_Y73_N22
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X66_Y69_N12
\add|ic[42]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[42]~41_combout\ = (\ib[41]~40_combout\ & ((\add|ic[41]~40_combout\) # (\NotA~input_o\ $ (\A[41]~input_o\)))) # (!\ib[41]~40_combout\ & (\add|ic[41]~40_combout\ & (\NotA~input_o\ $ (\A[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \ib[41]~40_combout\,
	datac => \add|ic[41]~40_combout\,
	datad => \A[41]~input_o\,
	combout => \add|ic[42]~41_combout\);

-- Location: LCCOMB_X66_Y69_N24
\add|Y[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(42) = \ib[42]~41_combout\ $ (\A[42]~input_o\ $ (\NotA~input_o\ $ (\add|ic[42]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[42]~41_combout\,
	datab => \A[42]~input_o\,
	datac => \NotA~input_o\,
	datad => \add|ic[42]~41_combout\,
	combout => \add|Y\(42));

-- Location: LCCOMB_X66_Y69_N2
\Y~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~10_combout\ = (\ExtWord~input_o\ & (\add|Y\(31))) # (!\ExtWord~input_o\ & ((\add|Y\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|Y\(31),
	datac => \ExtWord~input_o\,
	datad => \add|Y\(42),
	combout => \Y~10_combout\);

-- Location: IOIBUF_X72_Y73_N8
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LCCOMB_X66_Y69_N30
\ib[43]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[43]~42_combout\ = \B[43]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[43]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[43]~42_combout\);

-- Location: LCCOMB_X66_Y69_N4
\add|ic[43]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[43]~42_combout\ = (\ib[42]~41_combout\ & ((\add|ic[42]~41_combout\) # (\A[42]~input_o\ $ (\NotA~input_o\)))) # (!\ib[42]~41_combout\ & (\add|ic[42]~41_combout\ & (\A[42]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[42]~41_combout\,
	datab => \A[42]~input_o\,
	datac => \NotA~input_o\,
	datad => \add|ic[42]~41_combout\,
	combout => \add|ic[43]~42_combout\);

-- Location: IOIBUF_X69_Y73_N15
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X66_Y69_N8
\add|Y[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(43) = \ib[43]~42_combout\ $ (\add|ic[43]~42_combout\ $ (\NotA~input_o\ $ (\A[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[43]~42_combout\,
	datab => \add|ic[43]~42_combout\,
	datac => \NotA~input_o\,
	datad => \A[43]~input_o\,
	combout => \add|Y\(43));

-- Location: LCCOMB_X66_Y69_N18
\Y~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~11_combout\ = (\ExtWord~input_o\ & ((\add|Y\(31)))) # (!\ExtWord~input_o\ & (\add|Y\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \add|Y\(43),
	datad => \add|Y\(31),
	combout => \Y~11_combout\);

-- Location: IOIBUF_X52_Y73_N8
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LCCOMB_X46_Y69_N24
\ib[44]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[44]~43_combout\ = \B[44]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[44]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \ib[44]~43_combout\);

-- Location: LCCOMB_X66_Y69_N20
\add|ic[44]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[44]~43_combout\ = (\ib[43]~42_combout\ & ((\add|ic[43]~42_combout\) # (\NotA~input_o\ $ (\A[43]~input_o\)))) # (!\ib[43]~42_combout\ & (\add|ic[43]~42_combout\ & (\NotA~input_o\ $ (\A[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[43]~42_combout\,
	datab => \add|ic[43]~42_combout\,
	datac => \NotA~input_o\,
	datad => \A[43]~input_o\,
	combout => \add|ic[44]~43_combout\);

-- Location: LCCOMB_X46_Y69_N10
\add|Y[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(44) = \A[44]~input_o\ $ (\ib[44]~43_combout\ $ (\add|ic[44]~43_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \ib[44]~43_combout\,
	datac => \add|ic[44]~43_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(44));

-- Location: LCCOMB_X46_Y69_N12
\Y~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~12_combout\ = (\ExtWord~input_o\ & ((\add|Y\(31)))) # (!\ExtWord~input_o\ & (\add|Y\(44)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(44),
	datac => \add|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y~12_combout\);

-- Location: IOIBUF_X49_Y73_N15
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X81_Y73_N1
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LCCOMB_X46_Y69_N16
\ib[45]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[45]~44_combout\ = \AddnSub~input_o\ $ (\B[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[45]~input_o\,
	combout => \ib[45]~44_combout\);

-- Location: LCCOMB_X46_Y69_N14
\add|ic[45]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[45]~44_combout\ = (\ib[44]~43_combout\ & ((\add|ic[44]~43_combout\) # (\A[44]~input_o\ $ (\NotA~input_o\)))) # (!\ib[44]~43_combout\ & (\add|ic[44]~43_combout\ & (\A[44]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \ib[44]~43_combout\,
	datac => \add|ic[44]~43_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[45]~44_combout\);

-- Location: LCCOMB_X46_Y69_N26
\add|Y[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(45) = \A[45]~input_o\ $ (\ib[45]~44_combout\ $ (\add|ic[45]~44_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \ib[45]~44_combout\,
	datac => \add|ic[45]~44_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(45));

-- Location: LCCOMB_X46_Y69_N20
\Y~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~13_combout\ = (\ExtWord~input_o\ & (\add|Y\(31))) # (!\ExtWord~input_o\ & ((\add|Y\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(31),
	datac => \add|Y\(45),
	datad => \ExtWord~input_o\,
	combout => \Y~13_combout\);

-- Location: LCCOMB_X46_Y69_N30
\add|ic[46]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[46]~45_combout\ = (\ib[45]~44_combout\ & ((\add|ic[45]~44_combout\) # (\A[45]~input_o\ $ (\NotA~input_o\)))) # (!\ib[45]~44_combout\ & (\add|ic[45]~44_combout\ & (\A[45]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \ib[45]~44_combout\,
	datac => \add|ic[45]~44_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[46]~45_combout\);

-- Location: IOIBUF_X42_Y73_N8
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X46_Y69_N8
\ib[46]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[46]~45_combout\ = \AddnSub~input_o\ $ (\B[46]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[46]~input_o\,
	combout => \ib[46]~45_combout\);

-- Location: LCCOMB_X46_Y69_N18
\add|Y[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(46) = \add|ic[46]~45_combout\ $ (\A[46]~input_o\ $ (\ib[46]~45_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[46]~45_combout\,
	datab => \A[46]~input_o\,
	datac => \ib[46]~45_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(46));

-- Location: LCCOMB_X46_Y69_N4
\Y~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~14_combout\ = (\ExtWord~input_o\ & (\add|Y\(31))) # (!\ExtWord~input_o\ & ((\add|Y\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(31),
	datab => \add|Y\(46),
	datad => \ExtWord~input_o\,
	combout => \Y~14_combout\);

-- Location: LCCOMB_X46_Y69_N22
\add|ic[47]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[47]~46_combout\ = (\add|ic[46]~45_combout\ & ((\ib[46]~45_combout\) # (\A[46]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[46]~45_combout\ & (\ib[46]~45_combout\ & (\A[46]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[46]~45_combout\,
	datab => \A[46]~input_o\,
	datac => \ib[46]~45_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[47]~46_combout\);

-- Location: IOIBUF_X47_Y73_N1
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LCCOMB_X46_Y69_N0
\ib[47]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[47]~46_combout\ = \AddnSub~input_o\ $ (\B[47]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[47]~input_o\,
	combout => \ib[47]~46_combout\);

-- Location: IOIBUF_X47_Y73_N15
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X46_Y69_N2
\add|Y[47]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(47) = \add|ic[47]~46_combout\ $ (\ib[47]~46_combout\ $ (\A[47]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[47]~46_combout\,
	datab => \ib[47]~46_combout\,
	datac => \A[47]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|Y\(47));

-- Location: LCCOMB_X38_Y69_N0
\Y~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~15_combout\ = (\ExtWord~input_o\ & (\add|Y\(31))) # (!\ExtWord~input_o\ & ((\add|Y\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|Y\(31),
	datac => \ExtWord~input_o\,
	datad => \add|Y\(47),
	combout => \Y~15_combout\);

-- Location: IOIBUF_X18_Y0_N22
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LCCOMB_X20_Y4_N26
\ib[48]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[48]~47_combout\ = \B[48]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[48]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[48]~47_combout\);

-- Location: LCCOMB_X46_Y69_N28
\add|ic[48]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[48]~47_combout\ = (\add|ic[47]~46_combout\ & ((\ib[47]~46_combout\) # (\A[47]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[47]~46_combout\ & (\ib[47]~46_combout\ & (\A[47]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[47]~46_combout\,
	datab => \ib[47]~46_combout\,
	datac => \A[47]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|ic[48]~47_combout\);

-- Location: IOIBUF_X38_Y73_N15
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LCCOMB_X38_Y69_N26
\add|Y[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(48) = \ib[48]~47_combout\ $ (\add|ic[48]~47_combout\ $ (\A[48]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[48]~47_combout\,
	datab => \add|ic[48]~47_combout\,
	datac => \A[48]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|Y\(48));

-- Location: LCCOMB_X38_Y69_N28
\Y~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~16_combout\ = (\ExtWord~input_o\ & ((\add|Y\(31)))) # (!\ExtWord~input_o\ & (\add|Y\(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(48),
	datab => \add|Y\(31),
	datac => \ExtWord~input_o\,
	combout => \Y~16_combout\);

-- Location: IOIBUF_X35_Y73_N22
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LCCOMB_X38_Y69_N14
\add|ic[49]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[49]~48_combout\ = (\ib[48]~47_combout\ & ((\add|ic[48]~47_combout\) # (\A[48]~input_o\ $ (\NotA~input_o\)))) # (!\ib[48]~47_combout\ & (\add|ic[48]~47_combout\ & (\A[48]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[48]~47_combout\,
	datab => \add|ic[48]~47_combout\,
	datac => \A[48]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|ic[49]~48_combout\);

-- Location: IOIBUF_X20_Y0_N1
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LCCOMB_X20_Y4_N28
\ib[49]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[49]~48_combout\ = \B[49]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[49]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[49]~48_combout\);

-- Location: LCCOMB_X38_Y69_N8
\add|Y[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(49) = \A[49]~input_o\ $ (\add|ic[49]~48_combout\ $ (\ib[49]~48_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \add|ic[49]~48_combout\,
	datac => \ib[49]~48_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(49));

-- Location: LCCOMB_X38_Y69_N2
\Y~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~17_combout\ = (\ExtWord~input_o\ & ((\add|Y\(31)))) # (!\ExtWord~input_o\ & (\add|Y\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|Y\(49),
	datac => \ExtWord~input_o\,
	datad => \add|Y\(31),
	combout => \Y~17_combout\);

-- Location: IOIBUF_X38_Y73_N1
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X38_Y69_N30
\ib[50]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[50]~49_combout\ = \B[50]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[50]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \ib[50]~49_combout\);

-- Location: LCCOMB_X38_Y69_N4
\add|ic[50]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[50]~49_combout\ = (\add|ic[49]~48_combout\ & ((\ib[49]~48_combout\) # (\A[49]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[49]~48_combout\ & (\ib[49]~48_combout\ & (\A[49]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \add|ic[49]~48_combout\,
	datac => \ib[49]~48_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[50]~49_combout\);

-- Location: IOIBUF_X35_Y73_N15
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X38_Y69_N16
\add|Y[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(50) = \ib[50]~49_combout\ $ (\add|ic[50]~49_combout\ $ (\A[50]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[50]~49_combout\,
	datab => \add|ic[50]~49_combout\,
	datac => \A[50]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|Y\(50));

-- Location: LCCOMB_X38_Y69_N18
\Y~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~18_combout\ = (\ExtWord~input_o\ & (\add|Y\(31))) # (!\ExtWord~input_o\ & ((\add|Y\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|Y\(31),
	datac => \ExtWord~input_o\,
	datad => \add|Y\(50),
	combout => \Y~18_combout\);

-- Location: IOIBUF_X38_Y73_N8
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X38_Y69_N22
\ib[51]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[51]~50_combout\ = \AddnSub~input_o\ $ (\B[51]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datad => \B[51]~input_o\,
	combout => \ib[51]~50_combout\);

-- Location: LCCOMB_X38_Y69_N20
\add|ic[51]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[51]~50_combout\ = (\ib[50]~49_combout\ & ((\add|ic[50]~49_combout\) # (\A[50]~input_o\ $ (\NotA~input_o\)))) # (!\ib[50]~49_combout\ & (\add|ic[50]~49_combout\ & (\A[50]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[50]~49_combout\,
	datab => \add|ic[50]~49_combout\,
	datac => \A[50]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|ic[51]~50_combout\);

-- Location: IOIBUF_X31_Y73_N8
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X38_Y69_N24
\add|Y[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(51) = \ib[51]~50_combout\ $ (\add|ic[51]~50_combout\ $ (\A[51]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[51]~50_combout\,
	datab => \add|ic[51]~50_combout\,
	datac => \A[51]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|Y\(51));

-- Location: LCCOMB_X38_Y69_N10
\Y~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~19_combout\ = (\ExtWord~input_o\ & (\add|Y\(31))) # (!\ExtWord~input_o\ & ((\add|Y\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|Y\(31),
	datac => \ExtWord~input_o\,
	datad => \add|Y\(51),
	combout => \Y~19_combout\);

-- Location: IOIBUF_X23_Y73_N22
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LCCOMB_X27_Y69_N0
\ib[52]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[52]~51_combout\ = \B[52]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[52]~51_combout\);

-- Location: LCCOMB_X38_Y69_N12
\add|ic[52]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[52]~51_combout\ = (\ib[51]~50_combout\ & ((\add|ic[51]~50_combout\) # (\A[51]~input_o\ $ (\NotA~input_o\)))) # (!\ib[51]~50_combout\ & (\add|ic[51]~50_combout\ & (\A[51]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ib[51]~50_combout\,
	datab => \add|ic[51]~50_combout\,
	datac => \A[51]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|ic[52]~51_combout\);

-- Location: LCCOMB_X27_Y69_N10
\add|Y[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(52) = \A[52]~input_o\ $ (\ib[52]~51_combout\ $ (\add|ic[52]~51_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \ib[52]~51_combout\,
	datac => \add|ic[52]~51_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(52));

-- Location: LCCOMB_X27_Y69_N12
\Y~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~20_combout\ = (\ExtWord~input_o\ & ((\add|Y\(31)))) # (!\ExtWord~input_o\ & (\add|Y\(52)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(52),
	datac => \add|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y~20_combout\);

-- Location: LCCOMB_X27_Y69_N22
\add|ic[53]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[53]~52_combout\ = (\ib[52]~51_combout\ & ((\add|ic[52]~51_combout\) # (\A[52]~input_o\ $ (\NotA~input_o\)))) # (!\ib[52]~51_combout\ & (\add|ic[52]~51_combout\ & (\A[52]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \ib[52]~51_combout\,
	datac => \add|ic[52]~51_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[53]~52_combout\);

-- Location: IOIBUF_X23_Y73_N15
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X27_Y69_N16
\ib[53]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[53]~52_combout\ = \B[53]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[53]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[53]~52_combout\);

-- Location: IOIBUF_X29_Y73_N1
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X27_Y69_N18
\add|Y[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(53) = \add|ic[53]~52_combout\ $ (\ib[53]~52_combout\ $ (\A[53]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[53]~52_combout\,
	datab => \ib[53]~52_combout\,
	datac => \A[53]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|Y\(53));

-- Location: LCCOMB_X27_Y69_N28
\Y~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~21_combout\ = (\ExtWord~input_o\ & ((\add|Y\(31)))) # (!\ExtWord~input_o\ & (\add|Y\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|Y\(53),
	datac => \add|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y~21_combout\);

-- Location: IOIBUF_X29_Y73_N8
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X25_Y73_N22
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X27_Y69_N24
\ib[54]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[54]~53_combout\ = \B[54]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[54]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[54]~53_combout\);

-- Location: LCCOMB_X27_Y69_N14
\add|ic[54]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[54]~53_combout\ = (\add|ic[53]~52_combout\ & ((\ib[53]~52_combout\) # (\A[53]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[53]~52_combout\ & (\ib[53]~52_combout\ & (\A[53]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[53]~52_combout\,
	datab => \ib[53]~52_combout\,
	datac => \A[53]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|ic[54]~53_combout\);

-- Location: LCCOMB_X27_Y69_N26
\add|Y[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(54) = \A[54]~input_o\ $ (\ib[54]~53_combout\ $ (\add|ic[54]~53_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \ib[54]~53_combout\,
	datac => \add|ic[54]~53_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(54));

-- Location: LCCOMB_X27_Y69_N4
\Y~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~22_combout\ = (\ExtWord~input_o\ & ((\add|Y\(31)))) # (!\ExtWord~input_o\ & (\add|Y\(54)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(54),
	datac => \add|Y\(31),
	datad => \ExtWord~input_o\,
	combout => \Y~22_combout\);

-- Location: IOIBUF_X27_Y73_N15
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X27_Y69_N8
\ib[55]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[55]~54_combout\ = \B[55]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[55]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[55]~54_combout\);

-- Location: LCCOMB_X27_Y69_N30
\add|ic[55]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[55]~54_combout\ = (\ib[54]~53_combout\ & ((\add|ic[54]~53_combout\) # (\A[54]~input_o\ $ (\NotA~input_o\)))) # (!\ib[54]~53_combout\ & (\add|ic[54]~53_combout\ & (\A[54]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \ib[54]~53_combout\,
	datac => \add|ic[54]~53_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[55]~54_combout\);

-- Location: LCCOMB_X27_Y69_N2
\add|Y[55]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(55) = \A[55]~input_o\ $ (\ib[55]~54_combout\ $ (\add|ic[55]~54_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \ib[55]~54_combout\,
	datac => \add|ic[55]~54_combout\,
	datad => \NotA~input_o\,
	combout => \add|Y\(55));

-- Location: LCCOMB_X21_Y69_N0
\Y~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~23_combout\ = (\ExtWord~input_o\ & (\add|Y\(31))) # (!\ExtWord~input_o\ & ((\add|Y\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(31),
	datab => \ExtWord~input_o\,
	datac => \add|Y\(55),
	combout => \Y~23_combout\);

-- Location: LCCOMB_X27_Y69_N20
\add|ic[56]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[56]~55_combout\ = (\ib[55]~54_combout\ & ((\add|ic[55]~54_combout\) # (\A[55]~input_o\ $ (\NotA~input_o\)))) # (!\ib[55]~54_combout\ & (\add|ic[55]~54_combout\ & (\A[55]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \ib[55]~54_combout\,
	datac => \add|ic[55]~54_combout\,
	datad => \NotA~input_o\,
	combout => \add|ic[56]~55_combout\);

-- Location: IOIBUF_X18_Y73_N15
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X54_Y69_N18
\ib[56]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[56]~55_combout\ = \B[56]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[56]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \ib[56]~55_combout\);

-- Location: LCCOMB_X21_Y69_N10
\add|Y[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(56) = \add|ic[56]~55_combout\ $ (\A[56]~input_o\ $ (\NotA~input_o\ $ (\ib[56]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[56]~55_combout\,
	datab => \A[56]~input_o\,
	datac => \NotA~input_o\,
	datad => \ib[56]~55_combout\,
	combout => \add|Y\(56));

-- Location: LCCOMB_X21_Y69_N4
\Y~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~24_combout\ = (\ExtWord~input_o\ & (\add|Y\(31))) # (!\ExtWord~input_o\ & ((\add|Y\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(31),
	datac => \ExtWord~input_o\,
	datad => \add|Y\(56),
	combout => \Y~24_combout\);

-- Location: LCCOMB_X21_Y69_N30
\add|ic[57]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[57]~56_combout\ = (\add|ic[56]~55_combout\ & ((\ib[56]~55_combout\) # (\A[56]~input_o\ $ (\NotA~input_o\)))) # (!\add|ic[56]~55_combout\ & (\ib[56]~55_combout\ & (\A[56]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[56]~55_combout\,
	datab => \A[56]~input_o\,
	datac => \NotA~input_o\,
	datad => \ib[56]~55_combout\,
	combout => \add|ic[57]~56_combout\);

-- Location: IOIBUF_X20_Y73_N1
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X21_Y69_N24
\ib[57]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[57]~56_combout\ = \B[57]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[57]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[57]~56_combout\);

-- Location: IOIBUF_X20_Y73_N8
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LCCOMB_X21_Y69_N26
\add|Y[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(57) = \add|ic[57]~56_combout\ $ (\ib[57]~56_combout\ $ (\NotA~input_o\ $ (\A[57]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[57]~56_combout\,
	datab => \ib[57]~56_combout\,
	datac => \NotA~input_o\,
	datad => \A[57]~input_o\,
	combout => \add|Y\(57));

-- Location: LCCOMB_X21_Y69_N28
\Y~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~25_combout\ = (\ExtWord~input_o\ & (\add|Y\(31))) # (!\ExtWord~input_o\ & ((\add|Y\(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(31),
	datab => \ExtWord~input_o\,
	datac => \add|Y\(57),
	combout => \Y~25_combout\);

-- Location: LCCOMB_X21_Y69_N22
\add|ic[58]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[58]~57_combout\ = (\add|ic[57]~56_combout\ & ((\ib[57]~56_combout\) # (\NotA~input_o\ $ (\A[57]~input_o\)))) # (!\add|ic[57]~56_combout\ & (\ib[57]~56_combout\ & (\NotA~input_o\ $ (\A[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[57]~56_combout\,
	datab => \ib[57]~56_combout\,
	datac => \NotA~input_o\,
	datad => \A[57]~input_o\,
	combout => \add|ic[58]~57_combout\);

-- Location: IOIBUF_X16_Y73_N15
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: LCCOMB_X21_Y69_N16
\ib[58]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[58]~57_combout\ = \B[58]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[58]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[58]~57_combout\);

-- Location: IOIBUF_X20_Y73_N15
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LCCOMB_X21_Y69_N18
\add|Y[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(58) = \add|ic[58]~57_combout\ $ (\ib[58]~57_combout\ $ (\NotA~input_o\ $ (\A[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[58]~57_combout\,
	datab => \ib[58]~57_combout\,
	datac => \NotA~input_o\,
	datad => \A[58]~input_o\,
	combout => \add|Y\(58));

-- Location: LCCOMB_X21_Y69_N12
\Y~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~26_combout\ = (\ExtWord~input_o\ & (\add|Y\(31))) # (!\ExtWord~input_o\ & ((\add|Y\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(31),
	datab => \add|Y\(58),
	datac => \ExtWord~input_o\,
	combout => \Y~26_combout\);

-- Location: LCCOMB_X21_Y69_N14
\add|ic[59]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[59]~58_combout\ = (\add|ic[58]~57_combout\ & ((\ib[58]~57_combout\) # (\NotA~input_o\ $ (\A[58]~input_o\)))) # (!\add|ic[58]~57_combout\ & (\ib[58]~57_combout\ & (\NotA~input_o\ $ (\A[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[58]~57_combout\,
	datab => \ib[58]~57_combout\,
	datac => \NotA~input_o\,
	datad => \A[58]~input_o\,
	combout => \add|ic[59]~58_combout\);

-- Location: IOIBUF_X52_Y73_N22
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LCCOMB_X54_Y69_N20
\ib[59]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[59]~58_combout\ = \B[59]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[59]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \ib[59]~58_combout\);

-- Location: IOIBUF_X13_Y73_N22
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LCCOMB_X21_Y69_N8
\add|Y[59]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(59) = \NotA~input_o\ $ (\add|ic[59]~58_combout\ $ (\ib[59]~58_combout\ $ (\A[59]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \add|ic[59]~58_combout\,
	datac => \ib[59]~58_combout\,
	datad => \A[59]~input_o\,
	combout => \add|Y\(59));

-- Location: LCCOMB_X21_Y69_N2
\Y~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~27_combout\ = (\ExtWord~input_o\ & (\add|Y\(31))) # (!\ExtWord~input_o\ & ((\add|Y\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(31),
	datab => \ExtWord~input_o\,
	datac => \add|Y\(59),
	combout => \Y~27_combout\);

-- Location: IOIBUF_X0_Y50_N22
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X21_Y69_N20
\add|ic[60]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[60]~59_combout\ = (\add|ic[59]~58_combout\ & ((\ib[59]~58_combout\) # (\NotA~input_o\ $ (\A[59]~input_o\)))) # (!\add|ic[59]~58_combout\ & (\ib[59]~58_combout\ & (\NotA~input_o\ $ (\A[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \add|ic[59]~58_combout\,
	datac => \ib[59]~58_combout\,
	datad => \A[59]~input_o\,
	combout => \add|ic[60]~59_combout\);

-- Location: IOIBUF_X0_Y49_N1
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X1_Y49_N20
\ib[60]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[60]~59_combout\ = \AddnSub~input_o\ $ (\B[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[60]~input_o\,
	combout => \ib[60]~59_combout\);

-- Location: LCCOMB_X1_Y49_N6
\add|Y[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y\(60) = \NotA~input_o\ $ (\A[60]~input_o\ $ (\add|ic[60]~59_combout\ $ (\ib[60]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[60]~input_o\,
	datac => \add|ic[60]~59_combout\,
	datad => \ib[60]~59_combout\,
	combout => \add|Y\(60));

-- Location: LCCOMB_X1_Y49_N16
\Y~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~28_combout\ = (\ExtWord~input_o\ & ((\add|Y\(31)))) # (!\ExtWord~input_o\ & (\add|Y\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(60),
	datab => \add|Y\(31),
	datac => \ExtWord~input_o\,
	combout => \Y~28_combout\);

-- Location: LCCOMB_X1_Y49_N10
\add|ic[61]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[61]~60_combout\ = (\add|ic[60]~59_combout\ & ((\ib[60]~59_combout\) # (\NotA~input_o\ $ (\A[60]~input_o\)))) # (!\add|ic[60]~59_combout\ & (\ib[60]~59_combout\ & (\NotA~input_o\ $ (\A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[60]~input_o\,
	datac => \add|ic[60]~59_combout\,
	datad => \ib[60]~59_combout\,
	combout => \add|ic[61]~60_combout\);

-- Location: IOIBUF_X0_Y47_N22
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LCCOMB_X1_Y49_N4
\add|Y[61]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y[61]~1_combout\ = \B[61]~input_o\ $ (\A[61]~input_o\ $ (\AddnSub~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[61]~input_o\,
	datab => \A[61]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \NotA~input_o\,
	combout => \add|Y[61]~1_combout\);

-- Location: LCCOMB_X1_Y49_N30
\Y~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~29_combout\ = (\ExtWord~input_o\ & (((\add|Y\(31))))) # (!\ExtWord~input_o\ & (\add|ic[61]~60_combout\ $ ((\add|Y[61]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|ic[61]~60_combout\,
	datab => \add|Y[61]~1_combout\,
	datac => \ExtWord~input_o\,
	datad => \add|Y\(31),
	combout => \Y~29_combout\);

-- Location: IOIBUF_X0_Y50_N15
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X1_Y49_N12
\add|Y[62]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Y[62]~2_combout\ = \B[62]~input_o\ $ (\A[62]~input_o\ $ (\AddnSub~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[62]~input_o\,
	datab => \A[62]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \NotA~input_o\,
	combout => \add|Y[62]~2_combout\);

-- Location: LCCOMB_X1_Y49_N0
\ib[61]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[61]~60_combout\ = \B[61]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[61]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \ib[61]~60_combout\);

-- Location: LCCOMB_X1_Y49_N2
\add|ic[62]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[62]~61_combout\ = (\ib[61]~60_combout\ & ((\add|ic[61]~60_combout\) # (\NotA~input_o\ $ (\A[61]~input_o\)))) # (!\ib[61]~60_combout\ & (\add|ic[61]~60_combout\ & (\NotA~input_o\ $ (\A[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \ib[61]~60_combout\,
	datac => \add|ic[61]~60_combout\,
	datad => \A[61]~input_o\,
	combout => \add|ic[62]~61_combout\);

-- Location: LCCOMB_X1_Y49_N14
\Y~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~30_combout\ = (\ExtWord~input_o\ & (((\add|Y\(31))))) # (!\ExtWord~input_o\ & (\add|Y[62]~2_combout\ $ ((\add|ic[62]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y[62]~2_combout\,
	datab => \add|ic[62]~61_combout\,
	datac => \ExtWord~input_o\,
	datad => \add|Y\(31),
	combout => \Y~30_combout\);

-- Location: LCCOMB_X1_Y49_N8
\ib[62]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[62]~61_combout\ = \B[62]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[62]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \ib[62]~61_combout\);

-- Location: LCCOMB_X1_Y49_N26
\add|ic[63]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ic[63]~62_combout\ = (\ib[62]~61_combout\ & ((\add|ic[62]~61_combout\) # (\NotA~input_o\ $ (\A[62]~input_o\)))) # (!\ib[62]~61_combout\ & (\add|ic[62]~61_combout\ & (\NotA~input_o\ $ (\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[62]~input_o\,
	datac => \ib[62]~61_combout\,
	datad => \add|ic[62]~61_combout\,
	combout => \add|ic[63]~62_combout\);

-- Location: IOIBUF_X0_Y43_N15
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X0_Y46_N22
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LCCOMB_X1_Y46_N22
\add|ix[63]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|ix[63]~0_combout\ = \A[63]~input_o\ $ (\B[63]~input_o\ $ (\NotA~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \B[63]~input_o\,
	datac => \NotA~input_o\,
	datad => \AddnSub~input_o\,
	combout => \add|ix[63]~0_combout\);

-- Location: LCCOMB_X1_Y46_N16
\Y~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~31_combout\ = (\ExtWord~input_o\ & (\add|Y\(31))) # (!\ExtWord~input_o\ & ((\add|ic[63]~62_combout\ $ (\add|ix[63]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(31),
	datab => \add|ic[63]~62_combout\,
	datac => \add|ix[63]~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~31_combout\);

-- Location: LCCOMB_X1_Y46_N2
\ib[63]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ib[63]~62_combout\ = \B[63]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[63]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \ib[63]~62_combout\);

-- Location: LCCOMB_X1_Y46_N20
\add|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Cout~0_combout\ = (\ib[63]~62_combout\ & ((\add|ic[63]~62_combout\) # (\A[63]~input_o\ $ (\NotA~input_o\)))) # (!\ib[63]~62_combout\ & (\add|ic[63]~62_combout\ & (\A[63]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \ib[63]~62_combout\,
	datac => \NotA~input_o\,
	datad => \add|ic[63]~62_combout\,
	combout => \add|Cout~0_combout\);

-- Location: LCCOMB_X1_Y46_N28
\add|Ovfl\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|Ovfl~combout\ = (\ib[63]~62_combout\ & (!\add|ic[63]~62_combout\ & (\A[63]~input_o\ $ (\NotA~input_o\)))) # (!\ib[63]~62_combout\ & (\add|ic[63]~62_combout\ & (\A[63]~input_o\ $ (!\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \ib[63]~62_combout\,
	datac => \NotA~input_o\,
	datad => \add|ic[63]~62_combout\,
	combout => \add|Ovfl~combout\);

-- Location: LCCOMB_X46_Y69_N6
\Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = (!\add|Y\(44) & (!\add|Y\(46) & (!\add|Y\(45) & !\add|Y\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(44),
	datab => \add|Y\(46),
	datac => \add|Y\(45),
	datad => \add|Y\(47),
	combout => \Equal0~14_combout\);

-- Location: LCCOMB_X56_Y69_N30
\Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (!\add|Y\(35) & (!\add|Y\(33) & (!\add|Y\(34) & !\add|Y\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(35),
	datab => \add|Y\(33),
	datac => \add|Y\(34),
	datad => \add|Y\(32),
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X66_Y69_N6
\Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (!\add|Y\(41) & (!\add|Y\(42) & (!\add|Y\(43) & !\add|Y\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(41),
	datab => \add|Y\(42),
	datac => \add|Y\(43),
	datad => \add|Y\(40),
	combout => \Equal0~13_combout\);

-- Location: LCCOMB_X61_Y69_N14
\Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (!\add|Y\(39) & (!\add|Y\(38) & (!\add|Y\(37) & !\add|Y\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(39),
	datab => \add|Y\(38),
	datac => \add|Y\(37),
	datad => \add|Y\(36),
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X52_Y61_N10
\Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~15_combout\ = (\Equal0~14_combout\ & (\Equal0~11_combout\ & (\Equal0~13_combout\ & \Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~14_combout\,
	datab => \Equal0~11_combout\,
	datac => \Equal0~13_combout\,
	datad => \Equal0~12_combout\,
	combout => \Equal0~15_combout\);

-- Location: LCCOMB_X1_Y46_N6
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\add|Y\(2) & !\add|Y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|Y\(2),
	datac => \add|Y\(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y46_N0
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & (!\add|Y\(1) & (\add|ix[63]~0_combout\ $ (!\add|ic[63]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \add|Y\(1),
	datac => \add|ix[63]~0_combout\,
	datad => \add|ic[63]~62_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X46_Y4_N14
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\add|Y\(7) & (!\add|Y\(5) & (!\add|Y\(6) & !\add|Y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(7),
	datab => \add|Y\(5),
	datac => \add|Y\(6),
	datad => \add|Y\(4),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X55_Y4_N30
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\add|Y\(11) & (!\add|Y\(10) & (!\add|Y\(9) & !\add|Y\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(11),
	datab => \add|Y\(10),
	datac => \add|Y\(9),
	datad => \add|Y\(8),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X55_Y51_N8
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\add|Y\(13) & (!\add|Y\(15) & (!\add|Y\(12) & !\add|Y\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(13),
	datab => \add|Y\(15),
	datac => \add|Y\(12),
	datad => \add|Y\(14),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X52_Y57_N16
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\Equal0~3_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X27_Y69_N6
\Equal0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~17_combout\ = (!\add|Y\(52) & (!\add|Y\(53) & (!\add|Y\(54) & !\add|Y\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(52),
	datab => \add|Y\(53),
	datac => \add|Y\(54),
	datad => \add|Y\(55),
	combout => \Equal0~17_combout\);

-- Location: LCCOMB_X21_Y69_N6
\Equal0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~18_combout\ = (!\add|Y\(57) & (!\add|Y\(58) & (!\add|Y\(59) & !\add|Y\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(57),
	datab => \add|Y\(58),
	datac => \add|Y\(59),
	datad => \add|Y\(56),
	combout => \Equal0~18_combout\);

-- Location: LCCOMB_X1_Y49_N28
\Equal0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~19_combout\ = (!\add|Y\(60) & (\add|Y[61]~1_combout\ $ (!\add|ic[61]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(60),
	datac => \add|Y[61]~1_combout\,
	datad => \add|ic[61]~60_combout\,
	combout => \Equal0~19_combout\);

-- Location: LCCOMB_X1_Y49_N22
\Equal0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~20_combout\ = (!\add|Y[0]~0_combout\ & (\Equal0~19_combout\ & (\add|Y[62]~2_combout\ $ (!\add|ic[62]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y[62]~2_combout\,
	datab => \add|ic[62]~61_combout\,
	datac => \add|Y[0]~0_combout\,
	datad => \Equal0~19_combout\,
	combout => \Equal0~20_combout\);

-- Location: LCCOMB_X38_Y69_N6
\Equal0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~16_combout\ = (!\add|Y\(48) & (!\add|Y\(50) & (!\add|Y\(49) & !\add|Y\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(48),
	datab => \add|Y\(50),
	datac => \add|Y\(49),
	datad => \add|Y\(51),
	combout => \Equal0~16_combout\);

-- Location: LCCOMB_X45_Y65_N0
\Equal0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~21_combout\ = (\Equal0~17_combout\ & (\Equal0~18_combout\ & (\Equal0~20_combout\ & \Equal0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~17_combout\,
	datab => \Equal0~18_combout\,
	datac => \Equal0~20_combout\,
	datad => \Equal0~16_combout\,
	combout => \Equal0~21_combout\);

-- Location: LCCOMB_X83_Y69_N22
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\add|Y\(17) & (!\add|Y\(18) & (!\add|Y\(19) & !\add|Y\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(17),
	datab => \add|Y\(18),
	datac => \add|Y\(19),
	datad => \add|Y\(16),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X1_Y34_N6
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\add|Y\(29) & (!\add|Y\(28) & (!\add|Y\(30) & !\add|Y\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(29),
	datab => \add|Y\(28),
	datac => \add|Y\(30),
	datad => \add|Y\(31),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X20_Y4_N14
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\add|Y\(26) & (!\add|Y\(24) & (!\add|Y\(25) & !\add|Y\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(26),
	datab => \add|Y\(24),
	datac => \add|Y\(25),
	datad => \add|Y\(27),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X114_Y36_N14
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\add|Y\(21) & (!\add|Y\(22) & (!\add|Y\(23) & !\add|Y\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Y\(21),
	datab => \add|Y\(22),
	datac => \add|Y\(23),
	datad => \add|Y\(20),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X52_Y61_N24
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~6_combout\ & (\Equal0~9_combout\ & (\Equal0~8_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X52_Y61_N4
\Equal0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~22_combout\ = (\Equal0~15_combout\ & (\Equal0~5_combout\ & (\Equal0~21_combout\ & \Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~15_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~21_combout\,
	datad => \Equal0~10_combout\,
	combout => \Equal0~22_combout\);

-- Location: LCCOMB_X1_Y46_N14
\AltB~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \AltB~3_combout\ = (\ib[63]~62_combout\ & ((\A[63]~input_o\ $ (\NotA~input_o\)) # (!\add|ic[63]~62_combout\))) # (!\ib[63]~62_combout\ & (!\add|ic[63]~62_combout\ & (\A[63]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \ib[63]~62_combout\,
	datac => \NotA~input_o\,
	datad => \add|ic[63]~62_combout\,
	combout => \AltB~3_combout\);

-- Location: LCCOMB_X1_Y46_N10
\AltB~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AltB~2_combout\ = (\ExtWord~input_o\ & (\add|Ovfl~combout\ $ ((\add|Y\(31))))) # (!\ExtWord~input_o\ & (((\AltB~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|Ovfl~combout\,
	datab => \add|Y\(31),
	datac => \AltB~3_combout\,
	datad => \ExtWord~input_o\,
	combout => \AltB~2_combout\);

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(4) <= \Y[4]~output_o\;

ww_Y(5) <= \Y[5]~output_o\;

ww_Y(6) <= \Y[6]~output_o\;

ww_Y(7) <= \Y[7]~output_o\;

ww_Y(8) <= \Y[8]~output_o\;

ww_Y(9) <= \Y[9]~output_o\;

ww_Y(10) <= \Y[10]~output_o\;

ww_Y(11) <= \Y[11]~output_o\;

ww_Y(12) <= \Y[12]~output_o\;

ww_Y(13) <= \Y[13]~output_o\;

ww_Y(14) <= \Y[14]~output_o\;

ww_Y(15) <= \Y[15]~output_o\;

ww_Y(16) <= \Y[16]~output_o\;

ww_Y(17) <= \Y[17]~output_o\;

ww_Y(18) <= \Y[18]~output_o\;

ww_Y(19) <= \Y[19]~output_o\;

ww_Y(20) <= \Y[20]~output_o\;

ww_Y(21) <= \Y[21]~output_o\;

ww_Y(22) <= \Y[22]~output_o\;

ww_Y(23) <= \Y[23]~output_o\;

ww_Y(24) <= \Y[24]~output_o\;

ww_Y(25) <= \Y[25]~output_o\;

ww_Y(26) <= \Y[26]~output_o\;

ww_Y(27) <= \Y[27]~output_o\;

ww_Y(28) <= \Y[28]~output_o\;

ww_Y(29) <= \Y[29]~output_o\;

ww_Y(30) <= \Y[30]~output_o\;

ww_Y(31) <= \Y[31]~output_o\;

ww_Y(32) <= \Y[32]~output_o\;

ww_Y(33) <= \Y[33]~output_o\;

ww_Y(34) <= \Y[34]~output_o\;

ww_Y(35) <= \Y[35]~output_o\;

ww_Y(36) <= \Y[36]~output_o\;

ww_Y(37) <= \Y[37]~output_o\;

ww_Y(38) <= \Y[38]~output_o\;

ww_Y(39) <= \Y[39]~output_o\;

ww_Y(40) <= \Y[40]~output_o\;

ww_Y(41) <= \Y[41]~output_o\;

ww_Y(42) <= \Y[42]~output_o\;

ww_Y(43) <= \Y[43]~output_o\;

ww_Y(44) <= \Y[44]~output_o\;

ww_Y(45) <= \Y[45]~output_o\;

ww_Y(46) <= \Y[46]~output_o\;

ww_Y(47) <= \Y[47]~output_o\;

ww_Y(48) <= \Y[48]~output_o\;

ww_Y(49) <= \Y[49]~output_o\;

ww_Y(50) <= \Y[50]~output_o\;

ww_Y(51) <= \Y[51]~output_o\;

ww_Y(52) <= \Y[52]~output_o\;

ww_Y(53) <= \Y[53]~output_o\;

ww_Y(54) <= \Y[54]~output_o\;

ww_Y(55) <= \Y[55]~output_o\;

ww_Y(56) <= \Y[56]~output_o\;

ww_Y(57) <= \Y[57]~output_o\;

ww_Y(58) <= \Y[58]~output_o\;

ww_Y(59) <= \Y[59]~output_o\;

ww_Y(60) <= \Y[60]~output_o\;

ww_Y(61) <= \Y[61]~output_o\;

ww_Y(62) <= \Y[62]~output_o\;

ww_Y(63) <= \Y[63]~output_o\;

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;

ww_Zero <= \Zero~output_o\;

ww_AltB <= \AltB~output_o\;

ww_AltBu <= \AltBu~output_o\;
END structure;


