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

-- DATE "07/09/2024 10:57:25"

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
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BinaryMultiplier IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	product : OUT std_logic_vector(15 DOWNTO 0)
	);
END BinaryMultiplier;

-- Design Ports Information
-- product[0]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[1]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[3]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[5]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[6]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[7]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[8]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[9]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[10]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[11]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[12]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[13]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[14]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[15]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BinaryMultiplier IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_product : std_logic_vector(15 DOWNTO 0);
SIGNAL \product[0]~output_o\ : std_logic;
SIGNAL \product[1]~output_o\ : std_logic;
SIGNAL \product[2]~output_o\ : std_logic;
SIGNAL \product[3]~output_o\ : std_logic;
SIGNAL \product[4]~output_o\ : std_logic;
SIGNAL \product[5]~output_o\ : std_logic;
SIGNAL \product[6]~output_o\ : std_logic;
SIGNAL \product[7]~output_o\ : std_logic;
SIGNAL \product[8]~output_o\ : std_logic;
SIGNAL \product[9]~output_o\ : std_logic;
SIGNAL \product[10]~output_o\ : std_logic;
SIGNAL \product[11]~output_o\ : std_logic;
SIGNAL \product[12]~output_o\ : std_logic;
SIGNAL \product[13]~output_o\ : std_logic;
SIGNAL \product[14]~output_o\ : std_logic;
SIGNAL \product[15]~output_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \result~0_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \result~1_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \result~2_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \result~3_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~7_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \result~4_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \Add2~7_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \result~5_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add1~13_combout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \Add3~7_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \result~6_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11_combout\ : std_logic;
SIGNAL \Add2~13_combout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~5_combout\ : std_logic;
SIGNAL \Add4~7_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \result~7_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Add1~19_combout\ : std_logic;
SIGNAL \Add2~12\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11_combout\ : std_logic;
SIGNAL \Add3~13_combout\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~5_combout\ : std_logic;
SIGNAL \Add5~7_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17_combout\ : std_logic;
SIGNAL \Add2~19_combout\ : std_logic;
SIGNAL \Add3~12\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~11_combout\ : std_logic;
SIGNAL \Add4~13_combout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~5_combout\ : std_logic;
SIGNAL \Add6~7_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~25_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~17_combout\ : std_logic;
SIGNAL \Add3~19_combout\ : std_logic;
SIGNAL \Add4~12\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~11_combout\ : std_logic;
SIGNAL \Add5~13_combout\ : std_logic;
SIGNAL \Add6~6\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~25_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~17_combout\ : std_logic;
SIGNAL \Add4~19_combout\ : std_logic;
SIGNAL \Add5~12\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~11_combout\ : std_logic;
SIGNAL \Add6~13_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add4~25_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~17_combout\ : std_logic;
SIGNAL \Add5~19_combout\ : std_logic;
SIGNAL \Add6~12\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add5~25_combout\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~17_combout\ : std_logic;
SIGNAL \Add6~19_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \Add6~18\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Add6~25_combout\ : std_logic;
SIGNAL \Add6~21\ : std_logic;
SIGNAL \Add6~22_combout\ : std_logic;
SIGNAL \Add6~24_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_b <= b;
product <= ww_product;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y9_N2
\product[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~0_combout\,
	devoe => ww_devoe,
	o => \product[0]~output_o\);

-- Location: IOOBUF_X34_Y11_N9
\product[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~31_combout\,
	devoe => ww_devoe,
	o => \product[1]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\product[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~4_combout\,
	devoe => ww_devoe,
	o => \product[2]~output_o\);

-- Location: IOOBUF_X34_Y19_N9
\product[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~4_combout\,
	devoe => ww_devoe,
	o => \product[3]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\product[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~4_combout\,
	devoe => ww_devoe,
	o => \product[4]~output_o\);

-- Location: IOOBUF_X34_Y10_N2
\product[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add4~4_combout\,
	devoe => ww_devoe,
	o => \product[5]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\product[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add5~4_combout\,
	devoe => ww_devoe,
	o => \product[6]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\product[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~4_combout\,
	devoe => ww_devoe,
	o => \product[7]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\product[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~7_combout\,
	devoe => ww_devoe,
	o => \product[8]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\product[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~10_combout\,
	devoe => ww_devoe,
	o => \product[9]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\product[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~13_combout\,
	devoe => ww_devoe,
	o => \product[10]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\product[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~16_combout\,
	devoe => ww_devoe,
	o => \product[11]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\product[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~19_combout\,
	devoe => ww_devoe,
	o => \product[12]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\product[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~25_combout\,
	devoe => ww_devoe,
	o => \product[13]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\product[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~24_combout\,
	devoe => ww_devoe,
	o => \product[14]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\product[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \product[15]~output_o\);

-- Location: IOIBUF_X34_Y7_N22
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X33_Y9_N8
\result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~0_combout\ = (\a[0]~input_o\ & \b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[0]~input_o\,
	datad => \b[0]~input_o\,
	combout => \result~0_combout\);

-- Location: IOIBUF_X34_Y19_N1
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X34_Y8_N8
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X29_Y13_N24
\result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~1_combout\ = (\a[1]~input_o\ & \b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \result~1_combout\);

-- Location: LCCOMB_X29_Y13_N4
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\a[0]~input_o\ & (\result~1_combout\ $ (VCC))) # (!\a[0]~input_o\ & (\result~1_combout\ & VCC))
-- \Add0~15\ = CARRY((\a[0]~input_o\ & \result~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \result~1_combout\,
	datad => VCC,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X29_Y13_N0
\Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\b[1]~input_o\ & (\Add0~14_combout\)) # (!\b[1]~input_o\ & (((\a[1]~input_o\ & \b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \Add0~14_combout\,
	datac => \a[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \Add0~31_combout\);

-- Location: IOIBUF_X34_Y10_N8
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X29_Y13_N2
\result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~2_combout\ = (\b[0]~input_o\ & \a[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[0]~input_o\,
	datad => \a[2]~input_o\,
	combout => \result~2_combout\);

-- Location: LCCOMB_X29_Y13_N6
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\a[1]~input_o\ & ((\result~2_combout\ & (\Add0~15\ & VCC)) # (!\result~2_combout\ & (!\Add0~15\)))) # (!\a[1]~input_o\ & ((\result~2_combout\ & (!\Add0~15\)) # (!\result~2_combout\ & ((\Add0~15\) # (GND)))))
-- \Add0~17\ = CARRY((\a[1]~input_o\ & (!\result~2_combout\ & !\Add0~15\)) # (!\a[1]~input_o\ & ((!\Add0~15\) # (!\result~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \result~2_combout\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X29_Y13_N26
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\b[1]~input_o\ & (\Add0~16_combout\)) # (!\b[1]~input_o\ & (((\b[0]~input_o\ & \a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \b[0]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[2]~input_o\,
	combout => \Add0~32_combout\);

-- Location: IOIBUF_X34_Y18_N15
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X29_Y15_N10
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\a[0]~input_o\ & (\Add0~32_combout\ $ (VCC))) # (!\a[0]~input_o\ & (\Add0~32_combout\ & VCC))
-- \Add1~3\ = CARRY((\a[0]~input_o\ & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \Add0~32_combout\,
	datad => VCC,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X29_Y15_N0
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\b[2]~input_o\ & ((\Add1~2_combout\))) # (!\b[2]~input_o\ & (\Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~32_combout\,
	datac => \b[2]~input_o\,
	datad => \Add1~2_combout\,
	combout => \Add1~4_combout\);

-- Location: IOIBUF_X28_Y24_N15
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X29_Y13_N28
\result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~3_combout\ = (\b[0]~input_o\ & \a[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[0]~input_o\,
	datad => \a[3]~input_o\,
	combout => \result~3_combout\);

-- Location: LCCOMB_X29_Y13_N8
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = ((\result~3_combout\ $ (\a[2]~input_o\ $ (!\Add0~17\)))) # (GND)
-- \Add0~19\ = CARRY((\result~3_combout\ & ((\a[2]~input_o\) # (!\Add0~17\))) # (!\result~3_combout\ & (\a[2]~input_o\ & !\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \result~3_combout\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X29_Y13_N20
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\b[1]~input_o\ & (((\Add0~18_combout\)))) # (!\b[1]~input_o\ & (\b[0]~input_o\ & ((\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \b[0]~input_o\,
	datac => \Add0~18_combout\,
	datad => \a[3]~input_o\,
	combout => \Add0~33_combout\);

-- Location: LCCOMB_X29_Y15_N12
\Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (\a[1]~input_o\ & ((\Add0~33_combout\ & (\Add1~3\ & VCC)) # (!\Add0~33_combout\ & (!\Add1~3\)))) # (!\a[1]~input_o\ & ((\Add0~33_combout\ & (!\Add1~3\)) # (!\Add0~33_combout\ & ((\Add1~3\) # (GND)))))
-- \Add1~6\ = CARRY((\a[1]~input_o\ & (!\Add0~33_combout\ & !\Add1~3\)) # (!\a[1]~input_o\ & ((!\Add1~3\) # (!\Add0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \Add0~33_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~5_combout\,
	cout => \Add1~6\);

-- Location: LCCOMB_X29_Y15_N26
\Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~7_combout\ = (\b[2]~input_o\ & (\Add1~5_combout\)) # (!\b[2]~input_o\ & ((\Add0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~5_combout\,
	datab => \Add0~33_combout\,
	datac => \b[2]~input_o\,
	combout => \Add1~7_combout\);

-- Location: LCCOMB_X28_Y15_N4
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\a[0]~input_o\ & (\Add1~7_combout\ $ (VCC))) # (!\a[0]~input_o\ & (\Add1~7_combout\ & VCC))
-- \Add2~3\ = CARRY((\a[0]~input_o\ & \Add1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \Add1~7_combout\,
	datad => VCC,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X28_Y15_N24
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\b[3]~input_o\ & (\Add2~2_combout\)) # (!\b[3]~input_o\ & ((\Add1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datac => \Add2~2_combout\,
	datad => \Add1~7_combout\,
	combout => \Add2~4_combout\);

-- Location: IOIBUF_X34_Y17_N1
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X30_Y13_N24
\result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~4_combout\ = (\b[0]~input_o\ & \a[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[0]~input_o\,
	datad => \a[4]~input_o\,
	combout => \result~4_combout\);

-- Location: LCCOMB_X29_Y13_N10
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\result~4_combout\ & ((\a[3]~input_o\ & (\Add0~19\ & VCC)) # (!\a[3]~input_o\ & (!\Add0~19\)))) # (!\result~4_combout\ & ((\a[3]~input_o\ & (!\Add0~19\)) # (!\a[3]~input_o\ & ((\Add0~19\) # (GND)))))
-- \Add0~21\ = CARRY((\result~4_combout\ & (!\a[3]~input_o\ & !\Add0~19\)) # (!\result~4_combout\ & ((!\Add0~19\) # (!\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \result~4_combout\,
	datab => \a[3]~input_o\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X30_Y13_N6
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\b[1]~input_o\ & (((\Add0~20_combout\)))) # (!\b[1]~input_o\ & (\b[0]~input_o\ & ((\a[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \Add0~20_combout\,
	datac => \b[1]~input_o\,
	datad => \a[4]~input_o\,
	combout => \Add0~34_combout\);

-- Location: LCCOMB_X29_Y15_N14
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\a[2]~input_o\ $ (\Add0~34_combout\ $ (!\Add1~6\)))) # (GND)
-- \Add1~9\ = CARRY((\a[2]~input_o\ & ((\Add0~34_combout\) # (!\Add1~6\))) # (!\a[2]~input_o\ & (\Add0~34_combout\ & !\Add1~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \Add0~34_combout\,
	datad => VCC,
	cin => \Add1~6\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X29_Y15_N4
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\b[2]~input_o\ & (\Add1~8_combout\)) # (!\b[2]~input_o\ & ((\Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datac => \Add1~8_combout\,
	datad => \Add0~34_combout\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X28_Y15_N6
\Add2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~5_combout\ = (\Add1~10_combout\ & ((\a[1]~input_o\ & (\Add2~3\ & VCC)) # (!\a[1]~input_o\ & (!\Add2~3\)))) # (!\Add1~10_combout\ & ((\a[1]~input_o\ & (!\Add2~3\)) # (!\a[1]~input_o\ & ((\Add2~3\) # (GND)))))
-- \Add2~6\ = CARRY((\Add1~10_combout\ & (!\a[1]~input_o\ & !\Add2~3\)) # (!\Add1~10_combout\ & ((!\Add2~3\) # (!\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~5_combout\,
	cout => \Add2~6\);

-- Location: LCCOMB_X28_Y15_N26
\Add2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~7_combout\ = (\b[3]~input_o\ & (\Add2~5_combout\)) # (!\b[3]~input_o\ & ((\Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datac => \Add2~5_combout\,
	datad => \Add1~10_combout\,
	combout => \Add2~7_combout\);

-- Location: LCCOMB_X28_Y14_N12
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\a[0]~input_o\ & (\Add2~7_combout\ $ (VCC))) # (!\a[0]~input_o\ & (\Add2~7_combout\ & VCC))
-- \Add3~3\ = CARRY((\a[0]~input_o\ & \Add2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \Add2~7_combout\,
	datad => VCC,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: IOIBUF_X34_Y9_N8
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: LCCOMB_X28_Y14_N0
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\b[4]~input_o\ & (\Add3~2_combout\)) # (!\b[4]~input_o\ & ((\Add2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datac => \b[4]~input_o\,
	datad => \Add2~7_combout\,
	combout => \Add3~4_combout\);

-- Location: IOIBUF_X34_Y17_N15
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X30_Y13_N2
\result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~5_combout\ = (\b[0]~input_o\ & \a[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[0]~input_o\,
	datad => \a[5]~input_o\,
	combout => \result~5_combout\);

-- Location: LCCOMB_X29_Y13_N12
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = ((\result~5_combout\ $ (\a[4]~input_o\ $ (!\Add0~21\)))) # (GND)
-- \Add0~23\ = CARRY((\result~5_combout\ & ((\a[4]~input_o\) # (!\Add0~21\))) # (!\result~5_combout\ & (\a[4]~input_o\ & !\Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \result~5_combout\,
	datab => \a[4]~input_o\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X30_Y13_N8
\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (\b[1]~input_o\ & (((\Add0~22_combout\)))) # (!\b[1]~input_o\ & (\b[0]~input_o\ & ((\a[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \Add0~22_combout\,
	datac => \b[1]~input_o\,
	datad => \a[5]~input_o\,
	combout => \Add0~35_combout\);

-- Location: LCCOMB_X29_Y15_N16
\Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (\a[3]~input_o\ & ((\Add0~35_combout\ & (\Add1~9\ & VCC)) # (!\Add0~35_combout\ & (!\Add1~9\)))) # (!\a[3]~input_o\ & ((\Add0~35_combout\ & (!\Add1~9\)) # (!\Add0~35_combout\ & ((\Add1~9\) # (GND)))))
-- \Add1~12\ = CARRY((\a[3]~input_o\ & (!\Add0~35_combout\ & !\Add1~9\)) # (!\a[3]~input_o\ & ((!\Add1~9\) # (!\Add0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \Add0~35_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~11_combout\,
	cout => \Add1~12\);

-- Location: LCCOMB_X29_Y15_N6
\Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~13_combout\ = (\b[2]~input_o\ & ((\Add1~11_combout\))) # (!\b[2]~input_o\ & (\Add0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datac => \Add0~35_combout\,
	datad => \Add1~11_combout\,
	combout => \Add1~13_combout\);

-- Location: LCCOMB_X28_Y15_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\Add1~13_combout\ $ (\a[2]~input_o\ $ (!\Add2~6\)))) # (GND)
-- \Add2~9\ = CARRY((\Add1~13_combout\ & ((\a[2]~input_o\) # (!\Add2~6\))) # (!\Add1~13_combout\ & (\a[2]~input_o\ & !\Add2~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~13_combout\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \Add2~6\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X28_Y15_N20
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\b[3]~input_o\ & (\Add2~8_combout\)) # (!\b[3]~input_o\ & ((\Add1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datac => \Add2~8_combout\,
	datad => \Add1~13_combout\,
	combout => \Add2~10_combout\);

-- Location: LCCOMB_X28_Y14_N14
\Add3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~5_combout\ = (\a[1]~input_o\ & ((\Add2~10_combout\ & (\Add3~3\ & VCC)) # (!\Add2~10_combout\ & (!\Add3~3\)))) # (!\a[1]~input_o\ & ((\Add2~10_combout\ & (!\Add3~3\)) # (!\Add2~10_combout\ & ((\Add3~3\) # (GND)))))
-- \Add3~6\ = CARRY((\a[1]~input_o\ & (!\Add2~10_combout\ & !\Add3~3\)) # (!\a[1]~input_o\ & ((!\Add3~3\) # (!\Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \Add2~10_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~5_combout\,
	cout => \Add3~6\);

-- Location: LCCOMB_X28_Y14_N10
\Add3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~7_combout\ = (\b[4]~input_o\ & ((\Add3~5_combout\))) # (!\b[4]~input_o\ & (\Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~10_combout\,
	datac => \b[4]~input_o\,
	datad => \Add3~5_combout\,
	combout => \Add3~7_combout\);

-- Location: LCCOMB_X28_Y10_N12
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\a[0]~input_o\ & (\Add3~7_combout\ $ (VCC))) # (!\a[0]~input_o\ & (\Add3~7_combout\ & VCC))
-- \Add4~3\ = CARRY((\a[0]~input_o\ & \Add3~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \Add3~7_combout\,
	datad => VCC,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: IOIBUF_X34_Y7_N15
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: LCCOMB_X28_Y10_N8
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (\b[5]~input_o\ & (\Add4~2_combout\)) # (!\b[5]~input_o\ & ((\Add3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \b[5]~input_o\,
	datac => \Add3~7_combout\,
	combout => \Add4~4_combout\);

-- Location: IOIBUF_X30_Y0_N1
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X34_Y5_N15
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X29_Y13_N30
\result~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~6_combout\ = (\a[6]~input_o\ & \b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[6]~input_o\,
	datad => \b[0]~input_o\,
	combout => \result~6_combout\);

-- Location: LCCOMB_X29_Y13_N14
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\result~6_combout\ & ((\a[5]~input_o\ & (\Add0~23\ & VCC)) # (!\a[5]~input_o\ & (!\Add0~23\)))) # (!\result~6_combout\ & ((\a[5]~input_o\ & (!\Add0~23\)) # (!\a[5]~input_o\ & ((\Add0~23\) # (GND)))))
-- \Add0~25\ = CARRY((\result~6_combout\ & (!\a[5]~input_o\ & !\Add0~23\)) # (!\result~6_combout\ & ((!\Add0~23\) # (!\a[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \result~6_combout\,
	datab => \a[5]~input_o\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X29_Y13_N22
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\b[1]~input_o\ & (\Add0~24_combout\)) # (!\b[1]~input_o\ & (((\a[6]~input_o\ & \b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \Add0~24_combout\,
	datac => \a[6]~input_o\,
	datad => \b[0]~input_o\,
	combout => \Add0~36_combout\);

-- Location: LCCOMB_X29_Y15_N18
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = ((\Add0~36_combout\ $ (\a[4]~input_o\ $ (!\Add1~12\)))) # (GND)
-- \Add1~15\ = CARRY((\Add0~36_combout\ & ((\a[4]~input_o\) # (!\Add1~12\))) # (!\Add0~36_combout\ & (\a[4]~input_o\ & !\Add1~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \a[4]~input_o\,
	datad => VCC,
	cin => \Add1~12\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X29_Y15_N8
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\b[2]~input_o\ & (\Add1~14_combout\)) # (!\b[2]~input_o\ & ((\Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \Add1~14_combout\,
	datac => \Add0~36_combout\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X28_Y15_N10
\Add2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~11_combout\ = (\a[3]~input_o\ & ((\Add1~16_combout\ & (\Add2~9\ & VCC)) # (!\Add1~16_combout\ & (!\Add2~9\)))) # (!\a[3]~input_o\ & ((\Add1~16_combout\ & (!\Add2~9\)) # (!\Add1~16_combout\ & ((\Add2~9\) # (GND)))))
-- \Add2~12\ = CARRY((\a[3]~input_o\ & (!\Add1~16_combout\ & !\Add2~9\)) # (!\a[3]~input_o\ & ((!\Add2~9\) # (!\Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \Add1~16_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~11_combout\,
	cout => \Add2~12\);

-- Location: LCCOMB_X28_Y15_N30
\Add2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~13_combout\ = (\b[3]~input_o\ & (\Add2~11_combout\)) # (!\b[3]~input_o\ & ((\Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~11_combout\,
	datac => \Add1~16_combout\,
	datad => \b[3]~input_o\,
	combout => \Add2~13_combout\);

-- Location: LCCOMB_X28_Y14_N16
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((\Add2~13_combout\ $ (\a[2]~input_o\ $ (!\Add3~6\)))) # (GND)
-- \Add3~9\ = CARRY((\Add2~13_combout\ & ((\a[2]~input_o\) # (!\Add3~6\))) # (!\Add2~13_combout\ & (\a[2]~input_o\ & !\Add3~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~13_combout\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \Add3~6\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X28_Y14_N28
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\b[4]~input_o\ & ((\Add3~8_combout\))) # (!\b[4]~input_o\ & (\Add2~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~13_combout\,
	datac => \b[4]~input_o\,
	datad => \Add3~8_combout\,
	combout => \Add3~10_combout\);

-- Location: LCCOMB_X28_Y10_N14
\Add4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~5_combout\ = (\a[1]~input_o\ & ((\Add3~10_combout\ & (\Add4~3\ & VCC)) # (!\Add3~10_combout\ & (!\Add4~3\)))) # (!\a[1]~input_o\ & ((\Add3~10_combout\ & (!\Add4~3\)) # (!\Add3~10_combout\ & ((\Add4~3\) # (GND)))))
-- \Add4~6\ = CARRY((\a[1]~input_o\ & (!\Add3~10_combout\ & !\Add4~3\)) # (!\a[1]~input_o\ & ((!\Add4~3\) # (!\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \Add3~10_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~5_combout\,
	cout => \Add4~6\);

-- Location: LCCOMB_X28_Y10_N2
\Add4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~7_combout\ = (\b[5]~input_o\ & (\Add4~5_combout\)) # (!\b[5]~input_o\ & ((\Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~5_combout\,
	datac => \b[5]~input_o\,
	datad => \Add3~10_combout\,
	combout => \Add4~7_combout\);

-- Location: LCCOMB_X29_Y7_N0
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\a[0]~input_o\ & (\Add4~7_combout\ $ (VCC))) # (!\a[0]~input_o\ & (\Add4~7_combout\ & VCC))
-- \Add5~3\ = CARRY((\a[0]~input_o\ & \Add4~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \Add4~7_combout\,
	datad => VCC,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X29_Y7_N24
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (\b[6]~input_o\ & ((\Add5~2_combout\))) # (!\b[6]~input_o\ & (\Add4~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datac => \Add4~7_combout\,
	datad => \Add5~2_combout\,
	combout => \Add5~4_combout\);

-- Location: IOIBUF_X30_Y0_N15
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: IOIBUF_X34_Y11_N1
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X30_Y13_N12
\result~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~7_combout\ = (\b[0]~input_o\ & \a[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[0]~input_o\,
	datad => \a[7]~input_o\,
	combout => \result~7_combout\);

-- Location: LCCOMB_X29_Y13_N16
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = ((\result~7_combout\ $ (\a[6]~input_o\ $ (!\Add0~25\)))) # (GND)
-- \Add0~27\ = CARRY((\result~7_combout\ & ((\a[6]~input_o\) # (!\Add0~25\))) # (!\result~7_combout\ & (\a[6]~input_o\ & !\Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \result~7_combout\,
	datab => \a[6]~input_o\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X30_Y13_N18
\Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (\b[1]~input_o\ & (((\Add0~26_combout\)))) # (!\b[1]~input_o\ & (\b[0]~input_o\ & ((\a[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \Add0~26_combout\,
	datac => \b[1]~input_o\,
	datad => \a[7]~input_o\,
	combout => \Add0~37_combout\);

-- Location: LCCOMB_X29_Y15_N20
\Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (\Add0~37_combout\ & ((\a[5]~input_o\ & (\Add1~15\ & VCC)) # (!\a[5]~input_o\ & (!\Add1~15\)))) # (!\Add0~37_combout\ & ((\a[5]~input_o\ & (!\Add1~15\)) # (!\a[5]~input_o\ & ((\Add1~15\) # (GND)))))
-- \Add1~18\ = CARRY((\Add0~37_combout\ & (!\a[5]~input_o\ & !\Add1~15\)) # (!\Add0~37_combout\ & ((!\Add1~15\) # (!\a[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~37_combout\,
	datab => \a[5]~input_o\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~17_combout\,
	cout => \Add1~18\);

-- Location: LCCOMB_X29_Y15_N2
\Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~19_combout\ = (\b[2]~input_o\ & ((\Add1~17_combout\))) # (!\b[2]~input_o\ & (\Add0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~37_combout\,
	datab => \Add1~17_combout\,
	datac => \b[2]~input_o\,
	combout => \Add1~19_combout\);

-- Location: LCCOMB_X28_Y15_N12
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = ((\a[4]~input_o\ $ (\Add1~19_combout\ $ (!\Add2~12\)))) # (GND)
-- \Add2~15\ = CARRY((\a[4]~input_o\ & ((\Add1~19_combout\) # (!\Add2~12\))) # (!\a[4]~input_o\ & (\Add1~19_combout\ & !\Add2~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \Add1~19_combout\,
	datad => VCC,
	cin => \Add2~12\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X28_Y15_N0
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\b[3]~input_o\ & (\Add2~14_combout\)) # (!\b[3]~input_o\ & ((\Add1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datac => \Add2~14_combout\,
	datad => \Add1~19_combout\,
	combout => \Add2~16_combout\);

-- Location: LCCOMB_X28_Y14_N18
\Add3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~11_combout\ = (\a[3]~input_o\ & ((\Add2~16_combout\ & (\Add3~9\ & VCC)) # (!\Add2~16_combout\ & (!\Add3~9\)))) # (!\a[3]~input_o\ & ((\Add2~16_combout\ & (!\Add3~9\)) # (!\Add2~16_combout\ & ((\Add3~9\) # (GND)))))
-- \Add3~12\ = CARRY((\a[3]~input_o\ & (!\Add2~16_combout\ & !\Add3~9\)) # (!\a[3]~input_o\ & ((!\Add3~9\) # (!\Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \Add2~16_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~11_combout\,
	cout => \Add3~12\);

-- Location: LCCOMB_X28_Y14_N6
\Add3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~13_combout\ = (\b[4]~input_o\ & (\Add3~11_combout\)) # (!\b[4]~input_o\ & ((\Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~11_combout\,
	datac => \b[4]~input_o\,
	datad => \Add2~16_combout\,
	combout => \Add3~13_combout\);

-- Location: LCCOMB_X28_Y10_N16
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = ((\Add3~13_combout\ $ (\a[2]~input_o\ $ (!\Add4~6\)))) # (GND)
-- \Add4~9\ = CARRY((\Add3~13_combout\ & ((\a[2]~input_o\) # (!\Add4~6\))) # (!\Add3~13_combout\ & (\a[2]~input_o\ & !\Add4~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~13_combout\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \Add4~6\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X28_Y10_N4
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\b[5]~input_o\ & ((\Add4~8_combout\))) # (!\b[5]~input_o\ & (\Add3~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~13_combout\,
	datac => \b[5]~input_o\,
	datad => \Add4~8_combout\,
	combout => \Add4~10_combout\);

-- Location: LCCOMB_X29_Y7_N2
\Add5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~5_combout\ = (\a[1]~input_o\ & ((\Add4~10_combout\ & (\Add5~3\ & VCC)) # (!\Add4~10_combout\ & (!\Add5~3\)))) # (!\a[1]~input_o\ & ((\Add4~10_combout\ & (!\Add5~3\)) # (!\Add4~10_combout\ & ((\Add5~3\) # (GND)))))
-- \Add5~6\ = CARRY((\a[1]~input_o\ & (!\Add4~10_combout\ & !\Add5~3\)) # (!\a[1]~input_o\ & ((!\Add5~3\) # (!\Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \Add4~10_combout\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~5_combout\,
	cout => \Add5~6\);

-- Location: LCCOMB_X29_Y7_N18
\Add5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~7_combout\ = (\b[6]~input_o\ & (\Add5~5_combout\)) # (!\b[6]~input_o\ & ((\Add4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~5_combout\,
	datac => \Add4~10_combout\,
	datad => \b[6]~input_o\,
	combout => \Add5~7_combout\);

-- Location: LCCOMB_X30_Y4_N2
\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\a[0]~input_o\ & (\Add5~7_combout\ $ (VCC))) # (!\a[0]~input_o\ & (\Add5~7_combout\ & VCC))
-- \Add6~3\ = CARRY((\a[0]~input_o\ & \Add5~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \Add5~7_combout\,
	datad => VCC,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X30_Y4_N0
\Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (\b[7]~input_o\ & (\Add6~2_combout\)) # (!\b[7]~input_o\ & ((\Add5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[7]~input_o\,
	datac => \Add6~2_combout\,
	datad => \Add5~7_combout\,
	combout => \Add6~4_combout\);

-- Location: LCCOMB_X29_Y13_N18
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = \Add0~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~27\,
	combout => \Add0~28_combout\);

-- Location: LCCOMB_X29_Y15_N28
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\b[1]~input_o\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[1]~input_o\,
	datac => \Add0~28_combout\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X29_Y15_N22
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\Add0~30_combout\ & (\Add1~18\ $ (GND))) # (!\Add0~30_combout\ & (!\Add1~18\ & VCC))
-- \Add1~21\ = CARRY((\Add0~30_combout\ & !\Add1~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \Add1~18\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X29_Y15_N30
\Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~25_combout\ = (\b[2]~input_o\ & (((\Add1~20_combout\)))) # (!\b[2]~input_o\ & (\Add0~28_combout\ & (\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \Add0~28_combout\,
	datac => \b[1]~input_o\,
	datad => \Add1~20_combout\,
	combout => \Add1~25_combout\);

-- Location: LCCOMB_X28_Y15_N14
\Add2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~17_combout\ = (\Add1~25_combout\ & (!\Add2~15\)) # (!\Add1~25_combout\ & ((\Add2~15\) # (GND)))
-- \Add2~18\ = CARRY((!\Add2~15\) # (!\Add1~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~25_combout\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~17_combout\,
	cout => \Add2~18\);

-- Location: LCCOMB_X28_Y15_N2
\Add2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~19_combout\ = (\b[3]~input_o\ & (\Add2~17_combout\)) # (!\b[3]~input_o\ & ((\Add1~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \Add2~17_combout\,
	datac => \Add1~25_combout\,
	combout => \Add2~19_combout\);

-- Location: LCCOMB_X28_Y14_N20
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\Add2~19_combout\ & (\Add3~12\ $ (GND))) # (!\Add2~19_combout\ & (!\Add3~12\ & VCC))
-- \Add3~15\ = CARRY((\Add2~19_combout\ & !\Add3~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~19_combout\,
	datad => VCC,
	cin => \Add3~12\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X28_Y14_N8
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (\b[4]~input_o\ & ((\Add3~14_combout\))) # (!\b[4]~input_o\ & (\Add2~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~19_combout\,
	datab => \Add3~14_combout\,
	datac => \b[4]~input_o\,
	combout => \Add3~16_combout\);

-- Location: LCCOMB_X28_Y10_N18
\Add4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~11_combout\ = (\Add3~16_combout\ & (!\Add4~9\)) # (!\Add3~16_combout\ & ((\Add4~9\) # (GND)))
-- \Add4~12\ = CARRY((!\Add4~9\) # (!\Add3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~16_combout\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~11_combout\,
	cout => \Add4~12\);

-- Location: LCCOMB_X28_Y10_N6
\Add4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~13_combout\ = (\b[5]~input_o\ & ((\Add4~11_combout\))) # (!\b[5]~input_o\ & (\Add3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~16_combout\,
	datac => \b[5]~input_o\,
	datad => \Add4~11_combout\,
	combout => \Add4~13_combout\);

-- Location: LCCOMB_X29_Y7_N4
\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (\Add4~13_combout\ & (\Add5~6\ $ (GND))) # (!\Add4~13_combout\ & (!\Add5~6\ & VCC))
-- \Add5~9\ = CARRY((\Add4~13_combout\ & !\Add5~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~13_combout\,
	datad => VCC,
	cin => \Add5~6\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X29_Y7_N20
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\b[6]~input_o\ & ((\Add5~8_combout\))) # (!\b[6]~input_o\ & (\Add4~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~13_combout\,
	datac => \Add5~8_combout\,
	datad => \b[6]~input_o\,
	combout => \Add5~10_combout\);

-- Location: LCCOMB_X30_Y4_N4
\Add6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~5_combout\ = (\Add5~10_combout\ & (!\Add6~3\)) # (!\Add5~10_combout\ & ((\Add6~3\) # (GND)))
-- \Add6~6\ = CARRY((!\Add6~3\) # (!\Add5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~10_combout\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~5_combout\,
	cout => \Add6~6\);

-- Location: LCCOMB_X30_Y4_N26
\Add6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~7_combout\ = (\b[7]~input_o\ & ((\Add6~5_combout\))) # (!\b[7]~input_o\ & (\Add5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~10_combout\,
	datac => \Add6~5_combout\,
	datad => \b[7]~input_o\,
	combout => \Add6~7_combout\);

-- Location: LCCOMB_X29_Y15_N24
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = \Add1~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~21\,
	combout => \Add1~22_combout\);

-- Location: LCCOMB_X28_Y15_N28
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\Add1~22_combout\ & \b[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~22_combout\,
	datad => \b[2]~input_o\,
	combout => \Add1~24_combout\);

-- Location: LCCOMB_X28_Y15_N16
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (\Add1~24_combout\ & (\Add2~18\ $ (GND))) # (!\Add1~24_combout\ & (!\Add2~18\ & VCC))
-- \Add2~21\ = CARRY((\Add1~24_combout\ & !\Add2~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~24_combout\,
	datad => VCC,
	cin => \Add2~18\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X28_Y15_N22
\Add2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~25_combout\ = (\b[3]~input_o\ & (\Add2~20_combout\)) # (!\b[3]~input_o\ & (((\Add1~22_combout\ & \b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \Add2~20_combout\,
	datac => \Add1~22_combout\,
	datad => \b[2]~input_o\,
	combout => \Add2~25_combout\);

-- Location: LCCOMB_X28_Y14_N22
\Add3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~17_combout\ = (\Add2~25_combout\ & (!\Add3~15\)) # (!\Add2~25_combout\ & ((\Add3~15\) # (GND)))
-- \Add3~18\ = CARRY((!\Add3~15\) # (!\Add2~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~25_combout\,
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~17_combout\,
	cout => \Add3~18\);

-- Location: LCCOMB_X28_Y14_N2
\Add3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~19_combout\ = (\b[4]~input_o\ & (\Add3~17_combout\)) # (!\b[4]~input_o\ & ((\Add2~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~17_combout\,
	datac => \b[4]~input_o\,
	datad => \Add2~25_combout\,
	combout => \Add3~19_combout\);

-- Location: LCCOMB_X28_Y10_N20
\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (\Add3~19_combout\ & (\Add4~12\ $ (GND))) # (!\Add3~19_combout\ & (!\Add4~12\ & VCC))
-- \Add4~15\ = CARRY((\Add3~19_combout\ & !\Add4~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~19_combout\,
	datad => VCC,
	cin => \Add4~12\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X28_Y10_N0
\Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (\b[5]~input_o\ & ((\Add4~14_combout\))) # (!\b[5]~input_o\ & (\Add3~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~19_combout\,
	datac => \b[5]~input_o\,
	datad => \Add4~14_combout\,
	combout => \Add4~16_combout\);

-- Location: LCCOMB_X29_Y7_N6
\Add5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~11_combout\ = (\Add4~16_combout\ & (!\Add5~9\)) # (!\Add4~16_combout\ & ((\Add5~9\) # (GND)))
-- \Add5~12\ = CARRY((!\Add5~9\) # (!\Add4~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~16_combout\,
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~11_combout\,
	cout => \Add5~12\);

-- Location: LCCOMB_X29_Y7_N30
\Add5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~13_combout\ = (\b[6]~input_o\ & ((\Add5~11_combout\))) # (!\b[6]~input_o\ & (\Add4~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~16_combout\,
	datac => \Add5~11_combout\,
	datad => \b[6]~input_o\,
	combout => \Add5~13_combout\);

-- Location: LCCOMB_X30_Y4_N6
\Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (\Add5~13_combout\ & (\Add6~6\ $ (GND))) # (!\Add5~13_combout\ & (!\Add6~6\ & VCC))
-- \Add6~9\ = CARRY((\Add5~13_combout\ & !\Add6~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add5~13_combout\,
	datad => VCC,
	cin => \Add6~6\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X30_Y4_N20
\Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (\b[7]~input_o\ & (\Add6~8_combout\)) # (!\b[7]~input_o\ & ((\Add5~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~8_combout\,
	datab => \Add5~13_combout\,
	datad => \b[7]~input_o\,
	combout => \Add6~10_combout\);

-- Location: LCCOMB_X28_Y15_N18
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = \Add2~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add2~21\,
	combout => \Add2~22_combout\);

-- Location: LCCOMB_X28_Y14_N4
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\Add2~22_combout\ & \b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~22_combout\,
	datac => \b[3]~input_o\,
	combout => \Add2~24_combout\);

-- Location: LCCOMB_X28_Y14_N24
\Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (\Add2~24_combout\ & (\Add3~18\ $ (GND))) # (!\Add2~24_combout\ & (!\Add3~18\ & VCC))
-- \Add3~21\ = CARRY((\Add2~24_combout\ & !\Add3~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~24_combout\,
	datad => VCC,
	cin => \Add3~18\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X28_Y14_N30
\Add3~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~25_combout\ = (\b[4]~input_o\ & (((\Add3~20_combout\)))) # (!\b[4]~input_o\ & (\b[3]~input_o\ & (\Add2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \Add2~22_combout\,
	datac => \b[4]~input_o\,
	datad => \Add3~20_combout\,
	combout => \Add3~25_combout\);

-- Location: LCCOMB_X28_Y10_N22
\Add4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~17_combout\ = (\Add3~25_combout\ & (!\Add4~15\)) # (!\Add3~25_combout\ & ((\Add4~15\) # (GND)))
-- \Add4~18\ = CARRY((!\Add4~15\) # (!\Add3~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~25_combout\,
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~17_combout\,
	cout => \Add4~18\);

-- Location: LCCOMB_X28_Y10_N10
\Add4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~19_combout\ = (\b[5]~input_o\ & (\Add4~17_combout\)) # (!\b[5]~input_o\ & ((\Add3~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~17_combout\,
	datab => \Add3~25_combout\,
	datac => \b[5]~input_o\,
	combout => \Add4~19_combout\);

-- Location: LCCOMB_X29_Y7_N8
\Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (\Add4~19_combout\ & (\Add5~12\ $ (GND))) # (!\Add4~19_combout\ & (!\Add5~12\ & VCC))
-- \Add5~15\ = CARRY((\Add4~19_combout\ & !\Add5~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~19_combout\,
	datad => VCC,
	cin => \Add5~12\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X29_Y7_N16
\Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (\b[6]~input_o\ & ((\Add5~14_combout\))) # (!\b[6]~input_o\ & (\Add4~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~19_combout\,
	datac => \Add5~14_combout\,
	datad => \b[6]~input_o\,
	combout => \Add5~16_combout\);

-- Location: LCCOMB_X30_Y4_N8
\Add6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~11_combout\ = (\Add5~16_combout\ & (!\Add6~9\)) # (!\Add5~16_combout\ & ((\Add6~9\) # (GND)))
-- \Add6~12\ = CARRY((!\Add6~9\) # (!\Add5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~16_combout\,
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~11_combout\,
	cout => \Add6~12\);

-- Location: LCCOMB_X30_Y4_N22
\Add6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~13_combout\ = (\b[7]~input_o\ & ((\Add6~11_combout\))) # (!\b[7]~input_o\ & (\Add5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~16_combout\,
	datac => \Add6~11_combout\,
	datad => \b[7]~input_o\,
	combout => \Add6~13_combout\);

-- Location: LCCOMB_X28_Y14_N26
\Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = \Add3~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add3~21\,
	combout => \Add3~22_combout\);

-- Location: LCCOMB_X28_Y10_N28
\Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (\Add3~22_combout\ & \b[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~22_combout\,
	datad => \b[4]~input_o\,
	combout => \Add3~24_combout\);

-- Location: LCCOMB_X28_Y10_N24
\Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (\Add3~24_combout\ & (\Add4~18\ $ (GND))) # (!\Add3~24_combout\ & (!\Add4~18\ & VCC))
-- \Add4~21\ = CARRY((\Add3~24_combout\ & !\Add4~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~24_combout\,
	datad => VCC,
	cin => \Add4~18\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCCOMB_X28_Y10_N30
\Add4~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~25_combout\ = (\b[5]~input_o\ & (((\Add4~20_combout\)))) # (!\b[5]~input_o\ & (\Add3~22_combout\ & ((\b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~22_combout\,
	datab => \Add4~20_combout\,
	datac => \b[5]~input_o\,
	datad => \b[4]~input_o\,
	combout => \Add4~25_combout\);

-- Location: LCCOMB_X29_Y7_N10
\Add5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~17_combout\ = (\Add4~25_combout\ & (!\Add5~15\)) # (!\Add4~25_combout\ & ((\Add5~15\) # (GND)))
-- \Add5~18\ = CARRY((!\Add5~15\) # (!\Add4~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~25_combout\,
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~17_combout\,
	cout => \Add5~18\);

-- Location: LCCOMB_X29_Y7_N26
\Add5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~19_combout\ = (\b[6]~input_o\ & (\Add5~17_combout\)) # (!\b[6]~input_o\ & ((\Add4~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~17_combout\,
	datab => \Add4~25_combout\,
	datad => \b[6]~input_o\,
	combout => \Add5~19_combout\);

-- Location: LCCOMB_X30_Y4_N10
\Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (\Add5~19_combout\ & (\Add6~12\ $ (GND))) # (!\Add5~19_combout\ & (!\Add6~12\ & VCC))
-- \Add6~15\ = CARRY((\Add5~19_combout\ & !\Add6~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add5~19_combout\,
	datad => VCC,
	cin => \Add6~12\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: LCCOMB_X30_Y4_N24
\Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = (\b[7]~input_o\ & (\Add6~14_combout\)) # (!\b[7]~input_o\ & ((\Add5~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~14_combout\,
	datab => \Add5~19_combout\,
	datad => \b[7]~input_o\,
	combout => \Add6~16_combout\);

-- Location: LCCOMB_X28_Y10_N26
\Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = \Add4~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add4~21\,
	combout => \Add4~22_combout\);

-- Location: LCCOMB_X29_Y7_N28
\Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (\Add4~22_combout\ & \b[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~22_combout\,
	datac => \b[5]~input_o\,
	combout => \Add4~24_combout\);

-- Location: LCCOMB_X29_Y7_N12
\Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (\Add4~24_combout\ & (\Add5~18\ $ (GND))) # (!\Add4~24_combout\ & (!\Add5~18\ & VCC))
-- \Add5~21\ = CARRY((\Add4~24_combout\ & !\Add5~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~24_combout\,
	datad => VCC,
	cin => \Add5~18\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: LCCOMB_X29_Y7_N22
\Add5~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~25_combout\ = (\b[6]~input_o\ & (\Add5~20_combout\)) # (!\b[6]~input_o\ & (((\Add4~22_combout\ & \b[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~20_combout\,
	datab => \Add4~22_combout\,
	datac => \b[5]~input_o\,
	datad => \b[6]~input_o\,
	combout => \Add5~25_combout\);

-- Location: LCCOMB_X30_Y4_N12
\Add6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~17_combout\ = (\Add5~25_combout\ & (!\Add6~15\)) # (!\Add5~25_combout\ & ((\Add6~15\) # (GND)))
-- \Add6~18\ = CARRY((!\Add6~15\) # (!\Add5~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~25_combout\,
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~17_combout\,
	cout => \Add6~18\);

-- Location: LCCOMB_X30_Y4_N18
\Add6~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~19_combout\ = (\b[7]~input_o\ & ((\Add6~17_combout\))) # (!\b[7]~input_o\ & (\Add5~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[7]~input_o\,
	datac => \Add5~25_combout\,
	datad => \Add6~17_combout\,
	combout => \Add6~19_combout\);

-- Location: LCCOMB_X29_Y7_N14
\Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = \Add5~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add5~21\,
	combout => \Add5~22_combout\);

-- Location: LCCOMB_X29_Y5_N16
\Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (\Add5~22_combout\ & \b[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~22_combout\,
	datad => \b[6]~input_o\,
	combout => \Add5~24_combout\);

-- Location: LCCOMB_X30_Y4_N14
\Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~20_combout\ = (\Add5~24_combout\ & (\Add6~18\ $ (GND))) # (!\Add5~24_combout\ & (!\Add6~18\ & VCC))
-- \Add6~21\ = CARRY((\Add5~24_combout\ & !\Add6~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add5~24_combout\,
	datad => VCC,
	cin => \Add6~18\,
	combout => \Add6~20_combout\,
	cout => \Add6~21\);

-- Location: LCCOMB_X30_Y4_N30
\Add6~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~25_combout\ = (\b[7]~input_o\ & (((\Add6~20_combout\)))) # (!\b[7]~input_o\ & (\b[6]~input_o\ & (\Add5~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \Add5~22_combout\,
	datac => \Add6~20_combout\,
	datad => \b[7]~input_o\,
	combout => \Add6~25_combout\);

-- Location: LCCOMB_X30_Y4_N16
\Add6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~22_combout\ = \Add6~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add6~21\,
	combout => \Add6~22_combout\);

-- Location: LCCOMB_X30_Y4_N28
\Add6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~24_combout\ = (\b[7]~input_o\ & \Add6~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[7]~input_o\,
	datad => \Add6~22_combout\,
	combout => \Add6~24_combout\);

ww_product(0) <= \product[0]~output_o\;

ww_product(1) <= \product[1]~output_o\;

ww_product(2) <= \product[2]~output_o\;

ww_product(3) <= \product[3]~output_o\;

ww_product(4) <= \product[4]~output_o\;

ww_product(5) <= \product[5]~output_o\;

ww_product(6) <= \product[6]~output_o\;

ww_product(7) <= \product[7]~output_o\;

ww_product(8) <= \product[8]~output_o\;

ww_product(9) <= \product[9]~output_o\;

ww_product(10) <= \product[10]~output_o\;

ww_product(11) <= \product[11]~output_o\;

ww_product(12) <= \product[12]~output_o\;

ww_product(13) <= \product[13]~output_o\;

ww_product(14) <= \product[14]~output_o\;

ww_product(15) <= \product[15]~output_o\;
END structure;


