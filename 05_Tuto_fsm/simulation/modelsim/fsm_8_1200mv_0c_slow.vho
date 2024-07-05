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

-- DATE "07/05/2024 14:59:00"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	elevator_Controller IS
    PORT (
	clk : IN std_logic;
	n_reset : IN std_logic;
	call_floor1 : IN std_logic;
	call_floor2 : IN std_logic;
	door_close : IN std_logic;
	move_up : BUFFER std_logic;
	move_down : BUFFER std_logic;
	open_door : BUFFER std_logic
	);
END elevator_Controller;

-- Design Ports Information
-- move_up	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- move_down	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- open_door	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- call_floor2	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_reset	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- call_floor1	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- door_close	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF elevator_Controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_n_reset : std_logic;
SIGNAL ww_call_floor1 : std_logic;
SIGNAL ww_call_floor2 : std_logic;
SIGNAL ww_door_close : std_logic;
SIGNAL ww_move_up : std_logic;
SIGNAL ww_move_down : std_logic;
SIGNAL ww_open_door : std_logic;
SIGNAL \n_reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \move_up~output_o\ : std_logic;
SIGNAL \move_down~output_o\ : std_logic;
SIGNAL \open_door~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \call_floor2~input_o\ : std_logic;
SIGNAL \call_floor1~input_o\ : std_logic;
SIGNAL \door_close~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \n_reset~input_o\ : std_logic;
SIGNAL \n_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.FLOOR2~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.MOVING_DOWN~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \state.FLOOR1~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.MOVING_UP~q\ : std_logic;
SIGNAL \open_door~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_n_reset <= n_reset;
ww_call_floor1 <= call_floor1;
ww_call_floor2 <= call_floor2;
ww_door_close <= door_close;
move_up <= ww_move_up;
move_down <= ww_move_down;
open_door <= ww_open_door;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\n_reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \n_reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y22_N16
\move_up~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.MOVING_UP~q\,
	devoe => ww_devoe,
	o => \move_up~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\move_down~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.MOVING_DOWN~q\,
	devoe => ww_devoe,
	o => \move_down~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\open_door~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \open_door~0_combout\,
	devoe => ww_devoe,
	o => \open_door~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X1_Y24_N1
\call_floor2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_call_floor2,
	o => \call_floor2~input_o\);

-- Location: IOIBUF_X1_Y24_N8
\call_floor1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_call_floor1,
	o => \call_floor1~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\door_close~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_door_close,
	o => \door_close~input_o\);

-- Location: LCCOMB_X1_Y23_N2
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\call_floor1~input_o\ & (((\door_close~input_o\) # (\state.FLOOR1~q\)) # (!\call_floor2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \call_floor1~input_o\,
	datab => \call_floor2~input_o\,
	datac => \door_close~input_o\,
	datad => \state.FLOOR1~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X1_Y23_N28
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\state.MOVING_DOWN~q\ & ((\state.MOVING_UP~q\) # ((\state.FLOOR2~q\ & \Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.MOVING_DOWN~q\,
	datab => \state.MOVING_UP~q\,
	datac => \state.FLOOR2~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: IOIBUF_X0_Y11_N15
\n_reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_reset,
	o => \n_reset~input_o\);

-- Location: CLKCTRL_G4
\n_reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \n_reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \n_reset~inputclkctrl_outclk\);

-- Location: FF_X1_Y23_N29
\state.FLOOR2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \n_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.FLOOR2~q\);

-- Location: LCCOMB_X1_Y23_N30
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\call_floor1~input_o\ & \state.FLOOR2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \call_floor1~input_o\,
	datad => \state.FLOOR2~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X1_Y23_N31
\state.MOVING_DOWN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \n_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.MOVING_DOWN~q\);

-- Location: LCCOMB_X1_Y23_N0
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\call_floor2~input_o\ & (((!\call_floor1~input_o\ & !\door_close~input_o\)) # (!\state.FLOOR2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \call_floor1~input_o\,
	datab => \call_floor2~input_o\,
	datac => \door_close~input_o\,
	datad => \state.FLOOR2~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X1_Y23_N6
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\state.MOVING_DOWN~q\ & ((\state.MOVING_UP~q\) # ((\state.FLOOR1~q\) # (!\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.MOVING_DOWN~q\,
	datab => \state.MOVING_UP~q\,
	datac => \state.FLOOR1~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X1_Y23_N7
\state.FLOOR1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	clrn => \n_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.FLOOR1~q\);

-- Location: LCCOMB_X1_Y23_N24
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\call_floor2~input_o\ & !\state.FLOOR1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \call_floor2~input_o\,
	datad => \state.FLOOR1~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X1_Y23_N25
\state.MOVING_UP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \n_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.MOVING_UP~q\);

-- Location: LCCOMB_X1_Y23_N16
\open_door~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \open_door~0_combout\ = (\state.FLOOR2~q\) # (!\state.FLOOR1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.FLOOR1~q\,
	datad => \state.FLOOR2~q\,
	combout => \open_door~0_combout\);

ww_move_up <= \move_up~output_o\;

ww_move_down <= \move_down~output_o\;

ww_open_door <= \open_door~output_o\;
END structure;


