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
-- Generated on "10/24/2019 14:46:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MIPS
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MIPS_vhd_vec_tst IS
END MIPS_vhd_vec_tst;
ARCHITECTURE MIPS_arch OF MIPS_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL ula_instr : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL ula_out_teste : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL we_uc : STD_LOGIC;
COMPONENT MIPS
	PORT (
	clk : IN STD_LOGIC;
	ula_instr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	ula_out_teste : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	we_uc : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MIPS
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	ula_instr => ula_instr,
	ula_out_teste => ula_out_teste,
	we_uc => we_uc
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- ula_instr[5]
t_prcs_ula_instr_5: PROCESS
BEGIN
	ula_instr(5) <= '1';
	WAIT FOR 110000 ps;
	ula_instr(5) <= '0';
WAIT;
END PROCESS t_prcs_ula_instr_5;
-- ula_instr[4]
t_prcs_ula_instr_4: PROCESS
BEGIN
	ula_instr(4) <= '0';
WAIT;
END PROCESS t_prcs_ula_instr_4;
-- ula_instr[3]
t_prcs_ula_instr_3: PROCESS
BEGIN
	ula_instr(3) <= '0';
WAIT;
END PROCESS t_prcs_ula_instr_3;
-- ula_instr[2]
t_prcs_ula_instr_2: PROCESS
BEGIN
	ula_instr(2) <= '0';
WAIT;
END PROCESS t_prcs_ula_instr_2;
-- ula_instr[1]
t_prcs_ula_instr_1: PROCESS
BEGIN
	ula_instr(1) <= '0';
	WAIT FOR 50000 ps;
	ula_instr(1) <= '1';
	WAIT FOR 60000 ps;
	ula_instr(1) <= '0';
WAIT;
END PROCESS t_prcs_ula_instr_1;
-- ula_instr[0]
t_prcs_ula_instr_0: PROCESS
BEGIN
	ula_instr(0) <= '0';
WAIT;
END PROCESS t_prcs_ula_instr_0;

-- we_uc
t_prcs_we_uc: PROCESS
BEGIN
	we_uc <= '1';
WAIT;
END PROCESS t_prcs_we_uc;
END MIPS_arch;