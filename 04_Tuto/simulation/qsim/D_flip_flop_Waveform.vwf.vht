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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "07/03/2024 13:53:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          D_flip_flop
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY D_flip_flop_vhd_vec_tst IS
END D_flip_flop_vhd_vec_tst;
ARCHITECTURE D_flip_flop_arch OF D_flip_flop_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
COMPONENT D_flip_flop
	PORT (
	CLK : IN STD_LOGIC;
	D : IN STD_LOGIC;
	Q : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : D_flip_flop
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	D => D,
	Q => Q
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- D
t_prcs_D: PROCESS
BEGIN
LOOP
	D <= '0';
	WAIT FOR 100000 ps;
	D <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_D;
END D_flip_flop_arch;
