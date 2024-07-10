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

-- DATE "07/10/2024 11:19:50"

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

ENTITY 	multy IS
    PORT (
	x : IN std_logic_vector(3 DOWNTO 0);
	y : IN std_logic_vector(3 DOWNTO 0);
	p : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END multy;

-- Design Ports Information
-- p[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p[4]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p[5]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p[6]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multy IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_p : std_logic_vector(7 DOWNTO 0);
SIGNAL \p[0]~output_o\ : std_logic;
SIGNAL \p[1]~output_o\ : std_logic;
SIGNAL \p[2]~output_o\ : std_logic;
SIGNAL \p[3]~output_o\ : std_logic;
SIGNAL \p[4]~output_o\ : std_logic;
SIGNAL \p[5]~output_o\ : std_logic;
SIGNAL \p[6]~output_o\ : std_logic;
SIGNAL \p[7]~output_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \p~0_combout\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \cell_1|FA1|sum~0_combout\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \cell_1|FA2|sum~4_combout\ : std_logic;
SIGNAL \cell_1|FA2|sum~5_combout\ : std_logic;
SIGNAL \cell_2|FA1|sum~2_combout\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \cell_1|FA2|cout~3_combout\ : std_logic;
SIGNAL \cell_1|FA2|cout~9_combout\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \cell_1|FA3|sum~combout\ : std_logic;
SIGNAL \cell_2|FA2|sum~combout\ : std_logic;
SIGNAL \cell_3|FA1|sum~2_combout\ : std_logic;
SIGNAL \cell_2|FA2|cout~0_combout\ : std_logic;
SIGNAL \cell_1|FA3|cout~0_combout\ : std_logic;
SIGNAL \cell_2|FA3|sum~combout\ : std_logic;
SIGNAL \cell_3|FA2|sum~combout\ : std_logic;
SIGNAL \cell_2|FA3|cout~0_combout\ : std_logic;
SIGNAL \cell_2|FA4|sum~2_combout\ : std_logic;
SIGNAL \cell_3|FA2|cout~0_combout\ : std_logic;
SIGNAL \cell_3|FA3|sum~combout\ : std_logic;
SIGNAL \cell_3|FA3|cout~0_combout\ : std_logic;
SIGNAL \cell_2|FA4|cout~0_combout\ : std_logic;
SIGNAL \cell_3|FA4|sum~0_combout\ : std_logic;
SIGNAL \cell_3|FA4|cout~0_combout\ : std_logic;
SIGNAL G1 : std_logic_vector(3 DOWNTO 0);
SIGNAL G2 : std_logic_vector(3 DOWNTO 0);
SIGNAL G0 : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_x <= x;
ww_y <= y;
p <= ww_p;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y0_N23
\p[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p~0_combout\,
	devoe => ww_devoe,
	o => \p[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\p[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cell_1|FA1|sum~0_combout\,
	devoe => ww_devoe,
	o => \p[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\p[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cell_2|FA1|sum~2_combout\,
	devoe => ww_devoe,
	o => \p[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\p[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cell_3|FA1|sum~2_combout\,
	devoe => ww_devoe,
	o => \p[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\p[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cell_3|FA2|sum~combout\,
	devoe => ww_devoe,
	o => \p[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\p[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cell_3|FA3|sum~combout\,
	devoe => ww_devoe,
	o => \p[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\p[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cell_3|FA4|sum~0_combout\,
	devoe => ww_devoe,
	o => \p[6]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\p[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cell_3|FA4|cout~0_combout\,
	devoe => ww_devoe,
	o => \p[7]~output_o\);

-- Location: IOIBUF_X34_Y12_N8
\x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: LCCOMB_X16_Y4_N8
\p~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p~0_combout\ = (\x[0]~input_o\ & \y[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[0]~input_o\,
	datad => \y[0]~input_o\,
	combout => \p~0_combout\);

-- Location: IOIBUF_X18_Y0_N1
\y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: LCCOMB_X16_Y4_N26
\cell_1|FA1|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cell_1|FA1|sum~0_combout\ = (\y[1]~input_o\ & (\x[0]~input_o\ $ (((\x[1]~input_o\ & \y[0]~input_o\))))) # (!\y[1]~input_o\ & (\x[1]~input_o\ & ((\y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[1]~input_o\,
	datab => \x[1]~input_o\,
	datac => \x[0]~input_o\,
	datad => \y[0]~input_o\,
	combout => \cell_1|FA1|sum~0_combout\);

-- Location: IOIBUF_X11_Y0_N8
\y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: LCCOMB_X16_Y4_N4
\cell_1|FA2|sum~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cell_1|FA2|sum~4_combout\ = (\x[1]~input_o\ & (\y[1]~input_o\ & ((!\y[0]~input_o\) # (!\x[0]~input_o\)))) # (!\x[1]~input_o\ & (((\y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[1]~input_o\,
	datab => \x[1]~input_o\,
	datac => \x[0]~input_o\,
	datad => \y[0]~input_o\,
	combout => \cell_1|FA2|sum~4_combout\);

-- Location: LCCOMB_X16_Y4_N6
\cell_1|FA2|sum~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cell_1|FA2|sum~5_combout\ = (\x[1]~input_o\ & (\cell_1|FA2|sum~4_combout\ $ (((\x[2]~input_o\ & \y[0]~input_o\))))) # (!\x[1]~input_o\ & (\x[2]~input_o\ & (\cell_1|FA2|sum~4_combout\ & \y[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[1]~input_o\,
	datac => \cell_1|FA2|sum~4_combout\,
	datad => \y[0]~input_o\,
	combout => \cell_1|FA2|sum~5_combout\);

-- Location: LCCOMB_X16_Y4_N20
\cell_2|FA1|sum~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cell_2|FA1|sum~2_combout\ = \cell_1|FA2|sum~5_combout\ $ (((\y[2]~input_o\ & \x[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datac => \x[0]~input_o\,
	datad => \cell_1|FA2|sum~5_combout\,
	combout => \cell_2|FA1|sum~2_combout\);

-- Location: IOIBUF_X16_Y0_N15
\y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: LCCOMB_X16_Y4_N16
\cell_1|FA2|cout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cell_1|FA2|cout~3_combout\ = (\x[0]~input_o\) # (\x[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[0]~input_o\,
	datad => \x[2]~input_o\,
	combout => \cell_1|FA2|cout~3_combout\);

-- Location: LCCOMB_X16_Y4_N18
\cell_1|FA2|cout~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cell_1|FA2|cout~9_combout\ = (\x[1]~input_o\ & (\cell_1|FA2|cout~3_combout\ & (\y[1]~input_o\ & \y[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \cell_1|FA2|cout~3_combout\,
	datac => \y[1]~input_o\,
	datad => \y[0]~input_o\,
	combout => \cell_1|FA2|cout~9_combout\);

-- Location: LCCOMB_X16_Y4_N0
\G0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- G0(2) = (\x[2]~input_o\ & \y[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[2]~input_o\,
	datac => \y[1]~input_o\,
	combout => G0(2));

-- Location: IOIBUF_X16_Y0_N1
\x[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: LCCOMB_X16_Y4_N2
\cell_1|FA3|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \cell_1|FA3|sum~combout\ = \cell_1|FA2|cout~9_combout\ $ (G0(2) $ (((\x[3]~input_o\ & \y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cell_1|FA2|cout~9_combout\,
	datab => G0(2),
	datac => \x[3]~input_o\,
	datad => \y[0]~input_o\,
	combout => \cell_1|FA3|sum~combout\);

-- Location: LCCOMB_X16_Y4_N28
\G1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- G1(1) = (\y[2]~input_o\ & \x[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[2]~input_o\,
	datad => \x[1]~input_o\,
	combout => G1(1));

-- Location: LCCOMB_X16_Y4_N12
\G1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- G1(0) = (\y[2]~input_o\ & \x[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datac => \x[0]~input_o\,
	combout => G1(0));

-- Location: LCCOMB_X16_Y4_N14
\cell_2|FA2|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \cell_2|FA2|sum~combout\ = \cell_1|FA3|sum~combout\ $ (G1(1) $ (((\cell_1|FA2|sum~5_combout\ & G1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cell_1|FA2|sum~5_combout\,
	datab => \cell_1|FA3|sum~combout\,
	datac => G1(1),
	datad => G1(0),
	combout => \cell_2|FA2|sum~combout\);

-- Location: LCCOMB_X16_Y4_N22
\cell_3|FA1|sum~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cell_3|FA1|sum~2_combout\ = \cell_2|FA2|sum~combout\ $ (((\x[0]~input_o\ & \y[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \y[3]~input_o\,
	datac => \cell_2|FA2|sum~combout\,
	combout => \cell_3|FA1|sum~2_combout\);

-- Location: LCCOMB_X16_Y4_N30
\G2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- G2(0) = (\x[0]~input_o\ & \y[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[0]~input_o\,
	datad => \y[3]~input_o\,
	combout => G2(0));

-- Location: LCCOMB_X16_Y2_N0
\G2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- G2(1) = (\y[3]~input_o\ & \x[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[3]~input_o\,
	datad => \x[1]~input_o\,
	combout => G2(1));

-- Location: LCCOMB_X16_Y4_N24
\cell_2|FA2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cell_2|FA2|cout~0_combout\ = (\cell_1|FA3|sum~combout\ & ((G1(1)) # ((\cell_1|FA2|sum~5_combout\ & G1(0))))) # (!\cell_1|FA3|sum~combout\ & (\cell_1|FA2|sum~5_combout\ & (G1(1) & G1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cell_1|FA2|sum~5_combout\,
	datab => \cell_1|FA3|sum~combout\,
	datac => G1(1),
	datad => G1(0),
	combout => \cell_2|FA2|cout~0_combout\);

-- Location: LCCOMB_X16_Y2_N28
\G1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- G1(2) = (\x[2]~input_o\ & \y[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datac => \y[2]~input_o\,
	combout => G1(2));

-- Location: LCCOMB_X16_Y2_N26
\G0[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- G0(3) = (\x[3]~input_o\ & \y[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datad => \y[1]~input_o\,
	combout => G0(3));

-- Location: LCCOMB_X16_Y4_N10
\cell_1|FA3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cell_1|FA3|cout~0_combout\ = (\cell_1|FA2|cout~9_combout\ & ((G0(2)) # ((\x[3]~input_o\ & \y[0]~input_o\)))) # (!\cell_1|FA2|cout~9_combout\ & (G0(2) & (\x[3]~input_o\ & \y[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cell_1|FA2|cout~9_combout\,
	datab => G0(2),
	datac => \x[3]~input_o\,
	datad => \y[0]~input_o\,
	combout => \cell_1|FA3|cout~0_combout\);

-- Location: LCCOMB_X16_Y2_N30
\cell_2|FA3|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \cell_2|FA3|sum~combout\ = \cell_2|FA2|cout~0_combout\ $ (G1(2) $ (G0(3) $ (\cell_1|FA3|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cell_2|FA2|cout~0_combout\,
	datab => G1(2),
	datac => G0(3),
	datad => \cell_1|FA3|cout~0_combout\,
	combout => \cell_2|FA3|sum~combout\);

-- Location: LCCOMB_X16_Y2_N24
\cell_3|FA2|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \cell_3|FA2|sum~combout\ = G2(1) $ (\cell_2|FA3|sum~combout\ $ (((G2(0) & \cell_2|FA2|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => G2(0),
	datab => G2(1),
	datac => \cell_2|FA3|sum~combout\,
	datad => \cell_2|FA2|sum~combout\,
	combout => \cell_3|FA2|sum~combout\);

-- Location: LCCOMB_X16_Y2_N22
\cell_2|FA3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cell_2|FA3|cout~0_combout\ = (\cell_2|FA2|cout~0_combout\ & ((G1(2)) # (G0(3) $ (\cell_1|FA3|cout~0_combout\)))) # (!\cell_2|FA2|cout~0_combout\ & (G1(2) & (G0(3) $ (\cell_1|FA3|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cell_2|FA2|cout~0_combout\,
	datab => G1(2),
	datac => G0(3),
	datad => \cell_1|FA3|cout~0_combout\,
	combout => \cell_2|FA3|cout~0_combout\);

-- Location: LCCOMB_X16_Y2_N20
\cell_2|FA4|sum~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cell_2|FA4|sum~2_combout\ = (\x[3]~input_o\ & (\y[2]~input_o\ $ (((\cell_1|FA3|cout~0_combout\ & \y[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \cell_1|FA3|cout~0_combout\,
	datac => \y[2]~input_o\,
	datad => \y[1]~input_o\,
	combout => \cell_2|FA4|sum~2_combout\);

-- Location: LCCOMB_X16_Y2_N4
\cell_3|FA2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cell_3|FA2|cout~0_combout\ = (G2(1) & ((\cell_2|FA3|sum~combout\) # ((G2(0) & \cell_2|FA2|sum~combout\)))) # (!G2(1) & (G2(0) & (\cell_2|FA3|sum~combout\ & \cell_2|FA2|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => G2(0),
	datab => G2(1),
	datac => \cell_2|FA3|sum~combout\,
	datad => \cell_2|FA2|sum~combout\,
	combout => \cell_3|FA2|cout~0_combout\);

-- Location: LCCOMB_X16_Y2_N10
\G2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- G2(2) = (\y[3]~input_o\ & \x[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[3]~input_o\,
	datac => \x[2]~input_o\,
	combout => G2(2));

-- Location: LCCOMB_X16_Y2_N8
\cell_3|FA3|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \cell_3|FA3|sum~combout\ = \cell_2|FA3|cout~0_combout\ $ (\cell_2|FA4|sum~2_combout\ $ (\cell_3|FA2|cout~0_combout\ $ (G2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cell_2|FA3|cout~0_combout\,
	datab => \cell_2|FA4|sum~2_combout\,
	datac => \cell_3|FA2|cout~0_combout\,
	datad => G2(2),
	combout => \cell_3|FA3|sum~combout\);

-- Location: LCCOMB_X16_Y2_N18
\cell_3|FA3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cell_3|FA3|cout~0_combout\ = (\cell_3|FA2|cout~0_combout\ & ((G2(2)) # (\cell_2|FA3|cout~0_combout\ $ (\cell_2|FA4|sum~2_combout\)))) # (!\cell_3|FA2|cout~0_combout\ & (G2(2) & (\cell_2|FA3|cout~0_combout\ $ (\cell_2|FA4|sum~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cell_2|FA3|cout~0_combout\,
	datab => \cell_2|FA4|sum~2_combout\,
	datac => \cell_3|FA2|cout~0_combout\,
	datad => G2(2),
	combout => \cell_3|FA3|cout~0_combout\);

-- Location: LCCOMB_X16_Y2_N12
\G1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- G1(3) = (\y[2]~input_o\ & \x[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[2]~input_o\,
	datad => \x[3]~input_o\,
	combout => G1(3));

-- Location: LCCOMB_X16_Y2_N6
\cell_2|FA4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cell_2|FA4|cout~0_combout\ = (\cell_2|FA3|cout~0_combout\ & ((G1(3)) # ((\cell_1|FA3|cout~0_combout\ & G0(3))))) # (!\cell_2|FA3|cout~0_combout\ & (\cell_1|FA3|cout~0_combout\ & (G0(3) & G1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cell_2|FA3|cout~0_combout\,
	datab => \cell_1|FA3|cout~0_combout\,
	datac => G0(3),
	datad => G1(3),
	combout => \cell_2|FA4|cout~0_combout\);

-- Location: LCCOMB_X16_Y2_N16
\cell_3|FA4|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cell_3|FA4|sum~0_combout\ = \cell_3|FA3|cout~0_combout\ $ (\cell_2|FA4|cout~0_combout\ $ (((\x[3]~input_o\ & \y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \cell_3|FA3|cout~0_combout\,
	datac => \y[3]~input_o\,
	datad => \cell_2|FA4|cout~0_combout\,
	combout => \cell_3|FA4|sum~0_combout\);

-- Location: LCCOMB_X16_Y2_N2
\cell_3|FA4|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cell_3|FA4|cout~0_combout\ = (\cell_3|FA3|cout~0_combout\ & ((\cell_2|FA4|cout~0_combout\) # ((\x[3]~input_o\ & \y[3]~input_o\)))) # (!\cell_3|FA3|cout~0_combout\ & (\x[3]~input_o\ & (\y[3]~input_o\ & \cell_2|FA4|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \cell_3|FA3|cout~0_combout\,
	datac => \y[3]~input_o\,
	datad => \cell_2|FA4|cout~0_combout\,
	combout => \cell_3|FA4|cout~0_combout\);

ww_p(0) <= \p[0]~output_o\;

ww_p(1) <= \p[1]~output_o\;

ww_p(2) <= \p[2]~output_o\;

ww_p(3) <= \p[3]~output_o\;

ww_p(4) <= \p[4]~output_o\;

ww_p(5) <= \p[5]~output_o\;

ww_p(6) <= \p[6]~output_o\;

ww_p(7) <= \p[7]~output_o\;
END structure;


