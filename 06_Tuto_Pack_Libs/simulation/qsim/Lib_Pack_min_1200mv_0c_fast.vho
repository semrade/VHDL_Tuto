-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "07/09/2024 10:03:32"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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
LIBRARY STD;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	custom_exemple IS
    PORT (
	a : IN STD.STANDARD.integer;
	b : IN STD.STANDARD.integer;
	result : OUT STD.STANDARD.integer
	);
END custom_exemple;

-- Design Ports Information
-- result[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[16]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[17]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[18]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[19]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[20]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[21]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[22]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[23]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[24]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[25]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[26]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[27]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[28]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[29]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[30]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[31]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[16]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[16]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[17]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[17]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[18]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[18]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[19]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[19]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[20]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[20]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[21]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[21]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[22]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[22]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[23]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[23]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[24]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[24]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[25]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[25]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[26]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[26]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[27]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[27]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[28]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[28]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[29]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[29]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[30]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[30]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[31]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[31]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF custom_exemple IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(31 DOWNTO 0);
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \result[14]~output_o\ : std_logic;
SIGNAL \result[15]~output_o\ : std_logic;
SIGNAL \result[16]~output_o\ : std_logic;
SIGNAL \result[17]~output_o\ : std_logic;
SIGNAL \result[18]~output_o\ : std_logic;
SIGNAL \result[19]~output_o\ : std_logic;
SIGNAL \result[20]~output_o\ : std_logic;
SIGNAL \result[21]~output_o\ : std_logic;
SIGNAL \result[22]~output_o\ : std_logic;
SIGNAL \result[23]~output_o\ : std_logic;
SIGNAL \result[24]~output_o\ : std_logic;
SIGNAL \result[25]~output_o\ : std_logic;
SIGNAL \result[26]~output_o\ : std_logic;
SIGNAL \result[27]~output_o\ : std_logic;
SIGNAL \result[28]~output_o\ : std_logic;
SIGNAL \result[29]~output_o\ : std_logic;
SIGNAL \result[30]~output_o\ : std_logic;
SIGNAL \result[31]~output_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \b[16]~input_o\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \b[17]~input_o\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \b[18]~input_o\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \b[19]~input_o\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \b[20]~input_o\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \b[21]~input_o\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \b[22]~input_o\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \b[23]~input_o\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \b[24]~input_o\ : std_logic;
SIGNAL \a[24]~input_o\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \b[25]~input_o\ : std_logic;
SIGNAL \a[25]~input_o\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \a[26]~input_o\ : std_logic;
SIGNAL \b[26]~input_o\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \b[27]~input_o\ : std_logic;
SIGNAL \a[27]~input_o\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \a[28]~input_o\ : std_logic;
SIGNAL \b[28]~input_o\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \b[29]~input_o\ : std_logic;
SIGNAL \a[29]~input_o\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \b[30]~input_o\ : std_logic;
SIGNAL \a[30]~input_o\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \b[31]~input_o\ : std_logic;
SIGNAL \a[31]~input_o\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(a, 32);
ww_b <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(b, 32);
result <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_result));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y0_N2
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~0_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~2_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~4_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~6_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~8_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~10_combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~12_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~14_combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~16_combout\,
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~18_combout\,
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~20_combout\,
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~22_combout\,
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\result[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~24_combout\,
	devoe => ww_devoe,
	o => \result[12]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\result[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~26_combout\,
	devoe => ww_devoe,
	o => \result[13]~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\result[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~28_combout\,
	devoe => ww_devoe,
	o => \result[14]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\result[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~30_combout\,
	devoe => ww_devoe,
	o => \result[15]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\result[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~32_combout\,
	devoe => ww_devoe,
	o => \result[16]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\result[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~34_combout\,
	devoe => ww_devoe,
	o => \result[17]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\result[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~36_combout\,
	devoe => ww_devoe,
	o => \result[18]~output_o\);

-- Location: IOOBUF_X34_Y11_N9
\result[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~38_combout\,
	devoe => ww_devoe,
	o => \result[19]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\result[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~40_combout\,
	devoe => ww_devoe,
	o => \result[20]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\result[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~42_combout\,
	devoe => ww_devoe,
	o => \result[21]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\result[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~44_combout\,
	devoe => ww_devoe,
	o => \result[22]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\result[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~46_combout\,
	devoe => ww_devoe,
	o => \result[23]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\result[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~48_combout\,
	devoe => ww_devoe,
	o => \result[24]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\result[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~50_combout\,
	devoe => ww_devoe,
	o => \result[25]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\result[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~52_combout\,
	devoe => ww_devoe,
	o => \result[26]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\result[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~54_combout\,
	devoe => ww_devoe,
	o => \result[27]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\result[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~56_combout\,
	devoe => ww_devoe,
	o => \result[28]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\result[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~58_combout\,
	devoe => ww_devoe,
	o => \result[29]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\result[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~60_combout\,
	devoe => ww_devoe,
	o => \result[30]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\result[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~62_combout\,
	devoe => ww_devoe,
	o => \result[31]~output_o\);

-- Location: IOIBUF_X18_Y24_N22
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X23_Y4_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & (\a[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\b[0]~input_o\ & \a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X34_Y9_N1
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X23_Y4_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\b[1]~input_o\ & ((\a[1]~input_o\ & (\Add0~1\ & VCC)) # (!\a[1]~input_o\ & (!\Add0~1\)))) # (!\b[1]~input_o\ & ((\a[1]~input_o\ & (!\Add0~1\)) # (!\a[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\b[1]~input_o\ & (!\a[1]~input_o\ & !\Add0~1\)) # (!\b[1]~input_o\ & ((!\Add0~1\) # (!\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: IOIBUF_X16_Y0_N8
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X23_Y4_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\b[2]~input_o\ $ (\a[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\b[2]~input_o\ & ((\a[2]~input_o\) # (!\Add0~3\))) # (!\b[2]~input_o\ & (\a[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: IOIBUF_X18_Y0_N22
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X23_Y4_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\a[3]~input_o\ & ((\b[3]~input_o\ & (\Add0~5\ & VCC)) # (!\b[3]~input_o\ & (!\Add0~5\)))) # (!\a[3]~input_o\ & ((\b[3]~input_o\ & (!\Add0~5\)) # (!\b[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\a[3]~input_o\ & (!\b[3]~input_o\ & !\Add0~5\)) # (!\a[3]~input_o\ & ((!\Add0~5\) # (!\b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: IOIBUF_X25_Y24_N8
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X34_Y8_N22
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X23_Y4_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\b[4]~input_o\ $ (\a[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\b[4]~input_o\ & ((\a[4]~input_o\) # (!\Add0~7\))) # (!\b[4]~input_o\ & (\a[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \a[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: IOIBUF_X18_Y24_N15
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X23_Y4_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\b[5]~input_o\ & ((\a[5]~input_o\ & (\Add0~9\ & VCC)) # (!\a[5]~input_o\ & (!\Add0~9\)))) # (!\b[5]~input_o\ & ((\a[5]~input_o\ & (!\Add0~9\)) # (!\a[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\b[5]~input_o\ & (!\a[5]~input_o\ & !\Add0~9\)) # (!\b[5]~input_o\ & ((!\Add0~9\) # (!\a[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \a[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: IOIBUF_X34_Y11_N1
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: LCCOMB_X23_Y4_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\a[6]~input_o\ $ (\b[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\a[6]~input_o\ & ((\b[6]~input_o\) # (!\Add0~11\))) # (!\a[6]~input_o\ & (\b[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \b[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: IOIBUF_X21_Y0_N15
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X23_Y4_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\b[7]~input_o\ & ((\a[7]~input_o\ & (\Add0~13\ & VCC)) # (!\a[7]~input_o\ & (!\Add0~13\)))) # (!\b[7]~input_o\ & ((\a[7]~input_o\ & (!\Add0~13\)) # (!\a[7]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\b[7]~input_o\ & (!\a[7]~input_o\ & !\Add0~13\)) # (!\b[7]~input_o\ & ((!\Add0~13\) # (!\a[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \a[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: IOIBUF_X34_Y10_N8
\b[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: LCCOMB_X23_Y4_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\b[8]~input_o\ $ (\a[8]~input_o\ $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\b[8]~input_o\ & ((\a[8]~input_o\) # (!\Add0~15\))) # (!\b[8]~input_o\ & (\a[8]~input_o\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[8]~input_o\,
	datab => \a[8]~input_o\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: IOIBUF_X7_Y0_N15
\b[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: IOIBUF_X34_Y8_N8
\a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: LCCOMB_X23_Y4_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\b[9]~input_o\ & ((\a[9]~input_o\ & (\Add0~17\ & VCC)) # (!\a[9]~input_o\ & (!\Add0~17\)))) # (!\b[9]~input_o\ & ((\a[9]~input_o\ & (!\Add0~17\)) # (!\a[9]~input_o\ & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((\b[9]~input_o\ & (!\a[9]~input_o\ & !\Add0~17\)) # (!\b[9]~input_o\ & ((!\Add0~17\) # (!\a[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[9]~input_o\,
	datab => \a[9]~input_o\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: IOIBUF_X7_Y0_N22
\b[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: IOIBUF_X13_Y0_N22
\a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: LCCOMB_X23_Y4_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\b[10]~input_o\ $ (\a[10]~input_o\ $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\b[10]~input_o\ & ((\a[10]~input_o\) # (!\Add0~19\))) # (!\b[10]~input_o\ & (\a[10]~input_o\ & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[10]~input_o\,
	datab => \a[10]~input_o\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: IOIBUF_X30_Y0_N15
\b[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: LCCOMB_X23_Y4_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\b[11]~input_o\ & ((\a[11]~input_o\ & (\Add0~21\ & VCC)) # (!\a[11]~input_o\ & (!\Add0~21\)))) # (!\b[11]~input_o\ & ((\a[11]~input_o\ & (!\Add0~21\)) # (!\a[11]~input_o\ & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((\b[11]~input_o\ & (!\a[11]~input_o\ & !\Add0~21\)) # (!\b[11]~input_o\ & ((!\Add0~21\) # (!\a[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[11]~input_o\,
	datab => \a[11]~input_o\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: IOIBUF_X21_Y24_N15
\b[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: LCCOMB_X23_Y4_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\b[12]~input_o\ $ (\a[12]~input_o\ $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((\b[12]~input_o\ & ((\a[12]~input_o\) # (!\Add0~23\))) # (!\b[12]~input_o\ & (\a[12]~input_o\ & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[12]~input_o\,
	datab => \a[12]~input_o\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: IOIBUF_X30_Y0_N8
\a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\b[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: LCCOMB_X23_Y4_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\a[13]~input_o\ & ((\b[13]~input_o\ & (\Add0~25\ & VCC)) # (!\b[13]~input_o\ & (!\Add0~25\)))) # (!\a[13]~input_o\ & ((\b[13]~input_o\ & (!\Add0~25\)) # (!\b[13]~input_o\ & ((\Add0~25\) # (GND)))))
-- \Add0~27\ = CARRY((\a[13]~input_o\ & (!\b[13]~input_o\ & !\Add0~25\)) # (!\a[13]~input_o\ & ((!\Add0~25\) # (!\b[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datab => \b[13]~input_o\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: IOIBUF_X21_Y0_N8
\a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: IOIBUF_X23_Y24_N22
\b[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: LCCOMB_X23_Y4_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((\a[14]~input_o\ $ (\b[14]~input_o\ $ (!\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((\a[14]~input_o\ & ((\b[14]~input_o\) # (!\Add0~27\))) # (!\a[14]~input_o\ & (\b[14]~input_o\ & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[14]~input_o\,
	datab => \b[14]~input_o\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: IOIBUF_X5_Y0_N15
\a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: IOIBUF_X25_Y24_N22
\b[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: LCCOMB_X23_Y4_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\a[15]~input_o\ & ((\b[15]~input_o\ & (\Add0~29\ & VCC)) # (!\b[15]~input_o\ & (!\Add0~29\)))) # (!\a[15]~input_o\ & ((\b[15]~input_o\ & (!\Add0~29\)) # (!\b[15]~input_o\ & ((\Add0~29\) # (GND)))))
-- \Add0~31\ = CARRY((\a[15]~input_o\ & (!\b[15]~input_o\ & !\Add0~29\)) # (!\a[15]~input_o\ & ((!\Add0~29\) # (!\b[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \b[15]~input_o\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: IOIBUF_X1_Y0_N22
\a[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\b[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(16),
	o => \b[16]~input_o\);

-- Location: LCCOMB_X23_Y3_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = ((\a[16]~input_o\ $ (\b[16]~input_o\ $ (!\Add0~31\)))) # (GND)
-- \Add0~33\ = CARRY((\a[16]~input_o\ & ((\b[16]~input_o\) # (!\Add0~31\))) # (!\a[16]~input_o\ & (\b[16]~input_o\ & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[16]~input_o\,
	datab => \b[16]~input_o\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: IOIBUF_X1_Y0_N1
\a[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

-- Location: IOIBUF_X34_Y9_N8
\b[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(17),
	o => \b[17]~input_o\);

-- Location: LCCOMB_X23_Y3_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\a[17]~input_o\ & ((\b[17]~input_o\ & (\Add0~33\ & VCC)) # (!\b[17]~input_o\ & (!\Add0~33\)))) # (!\a[17]~input_o\ & ((\b[17]~input_o\ & (!\Add0~33\)) # (!\b[17]~input_o\ & ((\Add0~33\) # (GND)))))
-- \Add0~35\ = CARRY((\a[17]~input_o\ & (!\b[17]~input_o\ & !\Add0~33\)) # (!\a[17]~input_o\ & ((!\Add0~33\) # (!\b[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[17]~input_o\,
	datab => \b[17]~input_o\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: IOIBUF_X0_Y5_N22
\b[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(18),
	o => \b[18]~input_o\);

-- Location: IOIBUF_X34_Y7_N15
\a[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

-- Location: LCCOMB_X23_Y3_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\b[18]~input_o\ $ (\a[18]~input_o\ $ (!\Add0~35\)))) # (GND)
-- \Add0~37\ = CARRY((\b[18]~input_o\ & ((\a[18]~input_o\) # (!\Add0~35\))) # (!\b[18]~input_o\ & (\a[18]~input_o\ & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[18]~input_o\,
	datab => \a[18]~input_o\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: IOIBUF_X16_Y0_N1
\a[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

-- Location: IOIBUF_X34_Y7_N22
\b[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(19),
	o => \b[19]~input_o\);

-- Location: LCCOMB_X23_Y3_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\a[19]~input_o\ & ((\b[19]~input_o\ & (\Add0~37\ & VCC)) # (!\b[19]~input_o\ & (!\Add0~37\)))) # (!\a[19]~input_o\ & ((\b[19]~input_o\ & (!\Add0~37\)) # (!\b[19]~input_o\ & ((\Add0~37\) # (GND)))))
-- \Add0~39\ = CARRY((\a[19]~input_o\ & (!\b[19]~input_o\ & !\Add0~37\)) # (!\a[19]~input_o\ & ((!\Add0~37\) # (!\b[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[19]~input_o\,
	datab => \b[19]~input_o\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: IOIBUF_X18_Y0_N15
\a[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\b[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(20),
	o => \b[20]~input_o\);

-- Location: LCCOMB_X23_Y3_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((\a[20]~input_o\ $ (\b[20]~input_o\ $ (!\Add0~39\)))) # (GND)
-- \Add0~41\ = CARRY((\a[20]~input_o\ & ((\b[20]~input_o\) # (!\Add0~39\))) # (!\a[20]~input_o\ & (\b[20]~input_o\ & !\Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[20]~input_o\,
	datab => \b[20]~input_o\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: IOIBUF_X25_Y0_N1
\b[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(21),
	o => \b[21]~input_o\);

-- Location: IOIBUF_X34_Y3_N15
\a[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

-- Location: LCCOMB_X23_Y3_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\b[21]~input_o\ & ((\a[21]~input_o\ & (\Add0~41\ & VCC)) # (!\a[21]~input_o\ & (!\Add0~41\)))) # (!\b[21]~input_o\ & ((\a[21]~input_o\ & (!\Add0~41\)) # (!\a[21]~input_o\ & ((\Add0~41\) # (GND)))))
-- \Add0~43\ = CARRY((\b[21]~input_o\ & (!\a[21]~input_o\ & !\Add0~41\)) # (!\b[21]~input_o\ & ((!\Add0~41\) # (!\a[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[21]~input_o\,
	datab => \a[21]~input_o\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: IOIBUF_X34_Y5_N22
\b[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(22),
	o => \b[22]~input_o\);

-- Location: IOIBUF_X21_Y0_N22
\a[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

-- Location: LCCOMB_X23_Y3_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((\b[22]~input_o\ $ (\a[22]~input_o\ $ (!\Add0~43\)))) # (GND)
-- \Add0~45\ = CARRY((\b[22]~input_o\ & ((\a[22]~input_o\) # (!\Add0~43\))) # (!\b[22]~input_o\ & (\a[22]~input_o\ & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[22]~input_o\,
	datab => \a[22]~input_o\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: IOIBUF_X34_Y8_N15
\a[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\b[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(23),
	o => \b[23]~input_o\);

-- Location: LCCOMB_X23_Y3_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\a[23]~input_o\ & ((\b[23]~input_o\ & (\Add0~45\ & VCC)) # (!\b[23]~input_o\ & (!\Add0~45\)))) # (!\a[23]~input_o\ & ((\b[23]~input_o\ & (!\Add0~45\)) # (!\b[23]~input_o\ & ((\Add0~45\) # (GND)))))
-- \Add0~47\ = CARRY((\a[23]~input_o\ & (!\b[23]~input_o\ & !\Add0~45\)) # (!\a[23]~input_o\ & ((!\Add0~45\) # (!\b[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[23]~input_o\,
	datab => \b[23]~input_o\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: IOIBUF_X7_Y0_N8
\b[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(24),
	o => \b[24]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\a[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(24),
	o => \a[24]~input_o\);

-- Location: LCCOMB_X23_Y3_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((\b[24]~input_o\ $ (\a[24]~input_o\ $ (!\Add0~47\)))) # (GND)
-- \Add0~49\ = CARRY((\b[24]~input_o\ & ((\a[24]~input_o\) # (!\Add0~47\))) # (!\b[24]~input_o\ & (\a[24]~input_o\ & !\Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[24]~input_o\,
	datab => \a[24]~input_o\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: IOIBUF_X34_Y5_N15
\b[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(25),
	o => \b[25]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\a[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(25),
	o => \a[25]~input_o\);

-- Location: LCCOMB_X23_Y3_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\b[25]~input_o\ & ((\a[25]~input_o\ & (\Add0~49\ & VCC)) # (!\a[25]~input_o\ & (!\Add0~49\)))) # (!\b[25]~input_o\ & ((\a[25]~input_o\ & (!\Add0~49\)) # (!\a[25]~input_o\ & ((\Add0~49\) # (GND)))))
-- \Add0~51\ = CARRY((\b[25]~input_o\ & (!\a[25]~input_o\ & !\Add0~49\)) # (!\b[25]~input_o\ & ((!\Add0~49\) # (!\a[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[25]~input_o\,
	datab => \a[25]~input_o\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: IOIBUF_X0_Y11_N15
\a[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(26),
	o => \a[26]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\b[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(26),
	o => \b[26]~input_o\);

-- Location: LCCOMB_X23_Y3_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = ((\a[26]~input_o\ $ (\b[26]~input_o\ $ (!\Add0~51\)))) # (GND)
-- \Add0~53\ = CARRY((\a[26]~input_o\ & ((\b[26]~input_o\) # (!\Add0~51\))) # (!\a[26]~input_o\ & (\b[26]~input_o\ & !\Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[26]~input_o\,
	datab => \b[26]~input_o\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: IOIBUF_X0_Y11_N22
\b[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(27),
	o => \b[27]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\a[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(27),
	o => \a[27]~input_o\);

-- Location: LCCOMB_X23_Y3_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\b[27]~input_o\ & ((\a[27]~input_o\ & (\Add0~53\ & VCC)) # (!\a[27]~input_o\ & (!\Add0~53\)))) # (!\b[27]~input_o\ & ((\a[27]~input_o\ & (!\Add0~53\)) # (!\a[27]~input_o\ & ((\Add0~53\) # (GND)))))
-- \Add0~55\ = CARRY((\b[27]~input_o\ & (!\a[27]~input_o\ & !\Add0~53\)) # (!\b[27]~input_o\ & ((!\Add0~53\) # (!\a[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[27]~input_o\,
	datab => \a[27]~input_o\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: IOIBUF_X9_Y0_N1
\a[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(28),
	o => \a[28]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\b[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(28),
	o => \b[28]~input_o\);

-- Location: LCCOMB_X23_Y3_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = ((\a[28]~input_o\ $ (\b[28]~input_o\ $ (!\Add0~55\)))) # (GND)
-- \Add0~57\ = CARRY((\a[28]~input_o\ & ((\b[28]~input_o\) # (!\Add0~55\))) # (!\a[28]~input_o\ & (\b[28]~input_o\ & !\Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datab => \b[28]~input_o\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: IOIBUF_X11_Y0_N22
\b[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(29),
	o => \b[29]~input_o\);

-- Location: IOIBUF_X34_Y6_N15
\a[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(29),
	o => \a[29]~input_o\);

-- Location: LCCOMB_X23_Y3_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\b[29]~input_o\ & ((\a[29]~input_o\ & (\Add0~57\ & VCC)) # (!\a[29]~input_o\ & (!\Add0~57\)))) # (!\b[29]~input_o\ & ((\a[29]~input_o\ & (!\Add0~57\)) # (!\a[29]~input_o\ & ((\Add0~57\) # (GND)))))
-- \Add0~59\ = CARRY((\b[29]~input_o\ & (!\a[29]~input_o\ & !\Add0~57\)) # (!\b[29]~input_o\ & ((!\Add0~57\) # (!\a[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[29]~input_o\,
	datab => \a[29]~input_o\,
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: IOIBUF_X25_Y0_N22
\b[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(30),
	o => \b[30]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\a[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(30),
	o => \a[30]~input_o\);

-- Location: LCCOMB_X23_Y3_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = ((\b[30]~input_o\ $ (\a[30]~input_o\ $ (!\Add0~59\)))) # (GND)
-- \Add0~61\ = CARRY((\b[30]~input_o\ & ((\a[30]~input_o\) # (!\Add0~59\))) # (!\b[30]~input_o\ & (\a[30]~input_o\ & !\Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[30]~input_o\,
	datab => \a[30]~input_o\,
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: IOIBUF_X25_Y0_N8
\b[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(31),
	o => \b[31]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\a[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(31),
	o => \a[31]~input_o\);

-- Location: LCCOMB_X23_Y3_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \b[31]~input_o\ $ (\Add0~61\ $ (\a[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b[31]~input_o\,
	datad => \a[31]~input_o\,
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(11) <= \result[11]~output_o\;

ww_result(12) <= \result[12]~output_o\;

ww_result(13) <= \result[13]~output_o\;

ww_result(14) <= \result[14]~output_o\;

ww_result(15) <= \result[15]~output_o\;

ww_result(16) <= \result[16]~output_o\;

ww_result(17) <= \result[17]~output_o\;

ww_result(18) <= \result[18]~output_o\;

ww_result(19) <= \result[19]~output_o\;

ww_result(20) <= \result[20]~output_o\;

ww_result(21) <= \result[21]~output_o\;

ww_result(22) <= \result[22]~output_o\;

ww_result(23) <= \result[23]~output_o\;

ww_result(24) <= \result[24]~output_o\;

ww_result(25) <= \result[25]~output_o\;

ww_result(26) <= \result[26]~output_o\;

ww_result(27) <= \result[27]~output_o\;

ww_result(28) <= \result[28]~output_o\;

ww_result(29) <= \result[29]~output_o\;

ww_result(30) <= \result[30]~output_o\;

ww_result(31) <= \result[31]~output_o\;
END structure;


