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
-- Generated on "07/03/2024 12:09:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Decoder_2to4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Decoder_2to4_vhd_vec_tst IS
END Decoder_2to4_vhd_vec_tst;
ARCHITECTURE Decoder_2to4_arch OF Decoder_2to4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Decoder_2to4
	PORT (
	A : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Decoder_2to4
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	Y => Y
	);
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '0';
	WAIT FOR 400000 ps;
	A(1) <= '1';
	WAIT FOR 400000 ps;
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		A(0) <= '0';
		WAIT FOR 200000 ps;
		A(0) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
END Decoder_2to4_arch;
