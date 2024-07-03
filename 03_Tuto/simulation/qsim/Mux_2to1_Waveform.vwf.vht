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
-- Generated on "07/03/2024 11:48:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mux_2to1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mux_2to1_vhd_vec_tst IS
END Mux_2to1_vhd_vec_tst;
ARCHITECTURE Mux_2to1_arch OF Mux_2to1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL Sel : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
COMPONENT Mux_2to1
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	Sel : IN STD_LOGIC;
	Y : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Mux_2to1
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Sel => Sel,
	Y => Y
	);

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '0';
	WAIT FOR 300000 ps;
	A <= '1';
	WAIT FOR 300000 ps;
	A <= '0';
	WAIT FOR 300000 ps;
	A <= '1';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		B <= '0';
		WAIT FOR 150000 ps;
		B <= '1';
		WAIT FOR 150000 ps;
	END LOOP;
	B <= '0';
WAIT;
END PROCESS t_prcs_B;

-- Sel
t_prcs_Sel: PROCESS
BEGIN
LOOP
	Sel <= '0';
	WAIT FOR 500000 ps;
	Sel <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Sel;
END Mux_2to1_arch;
