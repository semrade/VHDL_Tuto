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
-- Generated on "07/03/2024 14:24:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Counter_4bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Counter_4bit_vhd_vec_tst IS
END Counter_4bit_vhd_vec_tst;
ARCHITECTURE Counter_4bit_arch OF Counter_4bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RESET : STD_LOGIC;
COMPONENT Counter_4bit
	PORT (
	CLK : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	RESET : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Counter_4bit
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	Q => Q,
	RESET => RESET
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 25000 ps;
	CLK <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '0';
	WAIT FOR 680000 ps;
	RESET <= '1';
WAIT;
END PROCESS t_prcs_RESET;
END Counter_4bit_arch;
