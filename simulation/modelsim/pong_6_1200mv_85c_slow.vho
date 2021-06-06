-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/06/2021 00:50:11"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pong IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	start : IN std_logic;
	B1_up : IN std_logic;
	B1_dw : IN std_logic;
	B2_up : IN std_logic;
	B2_dw : IN std_logic;
	score1 : BUFFER std_logic_vector(6 DOWNTO 0);
	score2 : BUFFER std_logic_vector(6 DOWNTO 0);
	M1 : BUFFER std_logic_vector(15 DOWNTO 0);
	M2 : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END pong;

-- Design Ports Information
-- score1[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score1[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score1[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score1[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score1[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score1[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score2[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score2[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score2[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score2[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score2[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score2[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- score2[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[0]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[1]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[2]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[7]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[8]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[9]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[10]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[11]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[12]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[13]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[14]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1[15]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2[0]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2[1]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2[2]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2[3]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2[4]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2[5]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2[6]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2[7]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2[8]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2[9]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2[10]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2[11]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2[12]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2[13]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2[14]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2[15]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1_up	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1_dw	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2_up	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2_dw	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pong IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_B1_up : std_logic;
SIGNAL ww_B1_dw : std_logic;
SIGNAL ww_B2_up : std_logic;
SIGNAL ww_B2_dw : std_logic;
SIGNAL ww_score1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_score2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_M1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_M2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \timer_raq|Equal0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timer_ball|Equal0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \score1[0]~output_o\ : std_logic;
SIGNAL \score1[1]~output_o\ : std_logic;
SIGNAL \score1[2]~output_o\ : std_logic;
SIGNAL \score1[3]~output_o\ : std_logic;
SIGNAL \score1[4]~output_o\ : std_logic;
SIGNAL \score1[5]~output_o\ : std_logic;
SIGNAL \score1[6]~output_o\ : std_logic;
SIGNAL \score2[0]~output_o\ : std_logic;
SIGNAL \score2[1]~output_o\ : std_logic;
SIGNAL \score2[2]~output_o\ : std_logic;
SIGNAL \score2[3]~output_o\ : std_logic;
SIGNAL \score2[4]~output_o\ : std_logic;
SIGNAL \score2[5]~output_o\ : std_logic;
SIGNAL \score2[6]~output_o\ : std_logic;
SIGNAL \M1[0]~output_o\ : std_logic;
SIGNAL \M1[1]~output_o\ : std_logic;
SIGNAL \M1[2]~output_o\ : std_logic;
SIGNAL \M1[3]~output_o\ : std_logic;
SIGNAL \M1[4]~output_o\ : std_logic;
SIGNAL \M1[5]~output_o\ : std_logic;
SIGNAL \M1[6]~output_o\ : std_logic;
SIGNAL \M1[7]~output_o\ : std_logic;
SIGNAL \M1[8]~output_o\ : std_logic;
SIGNAL \M1[9]~output_o\ : std_logic;
SIGNAL \M1[10]~output_o\ : std_logic;
SIGNAL \M1[11]~output_o\ : std_logic;
SIGNAL \M1[12]~output_o\ : std_logic;
SIGNAL \M1[13]~output_o\ : std_logic;
SIGNAL \M1[14]~output_o\ : std_logic;
SIGNAL \M1[15]~output_o\ : std_logic;
SIGNAL \M2[0]~output_o\ : std_logic;
SIGNAL \M2[1]~output_o\ : std_logic;
SIGNAL \M2[2]~output_o\ : std_logic;
SIGNAL \M2[3]~output_o\ : std_logic;
SIGNAL \M2[4]~output_o\ : std_logic;
SIGNAL \M2[5]~output_o\ : std_logic;
SIGNAL \M2[6]~output_o\ : std_logic;
SIGNAL \M2[7]~output_o\ : std_logic;
SIGNAL \M2[8]~output_o\ : std_logic;
SIGNAL \M2[9]~output_o\ : std_logic;
SIGNAL \M2[10]~output_o\ : std_logic;
SIGNAL \M2[11]~output_o\ : std_logic;
SIGNAL \M2[12]~output_o\ : std_logic;
SIGNAL \M2[13]~output_o\ : std_logic;
SIGNAL \M2[14]~output_o\ : std_logic;
SIGNAL \M2[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \timer_for_speed|temp[0]~28_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[0]~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \timer_for_speed|temp[0]~29\ : std_logic;
SIGNAL \timer_for_speed|temp[1]~30_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[1]~31\ : std_logic;
SIGNAL \timer_for_speed|temp[2]~32_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[2]~33\ : std_logic;
SIGNAL \timer_for_speed|temp[3]~34_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[3]~35\ : std_logic;
SIGNAL \timer_for_speed|temp[4]~36_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[4]~37\ : std_logic;
SIGNAL \timer_for_speed|temp[5]~38_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[5]~39\ : std_logic;
SIGNAL \timer_for_speed|temp[6]~40_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[6]~41\ : std_logic;
SIGNAL \timer_for_speed|temp[7]~42_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[7]~43\ : std_logic;
SIGNAL \timer_for_speed|temp[8]~44_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[8]~45\ : std_logic;
SIGNAL \timer_for_speed|temp[9]~46_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[9]~47\ : std_logic;
SIGNAL \timer_for_speed|temp[10]~48_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[10]~49\ : std_logic;
SIGNAL \timer_for_speed|temp[11]~50_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[11]~51\ : std_logic;
SIGNAL \timer_for_speed|temp[12]~52_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[12]~53\ : std_logic;
SIGNAL \timer_for_speed|temp[13]~54_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[13]~55\ : std_logic;
SIGNAL \timer_for_speed|temp[14]~56_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[14]~57\ : std_logic;
SIGNAL \timer_for_speed|temp[15]~58_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[15]~59\ : std_logic;
SIGNAL \timer_for_speed|temp[16]~60_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[16]~61\ : std_logic;
SIGNAL \timer_for_speed|temp[17]~62_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[17]~63\ : std_logic;
SIGNAL \timer_for_speed|temp[18]~64_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[18]~65\ : std_logic;
SIGNAL \timer_for_speed|temp[19]~66_combout\ : std_logic;
SIGNAL \timer_for_speed|Equal0~5_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[19]~67\ : std_logic;
SIGNAL \timer_for_speed|temp[20]~68_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[20]~69\ : std_logic;
SIGNAL \timer_for_speed|temp[21]~70_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[21]~71\ : std_logic;
SIGNAL \timer_for_speed|temp[22]~72_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[22]~73\ : std_logic;
SIGNAL \timer_for_speed|temp[23]~74_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[23]~75\ : std_logic;
SIGNAL \timer_for_speed|temp[24]~76_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[24]~77\ : std_logic;
SIGNAL \timer_for_speed|temp[25]~78_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[25]~79\ : std_logic;
SIGNAL \timer_for_speed|temp[26]~80_combout\ : std_logic;
SIGNAL \timer_for_speed|temp[26]~81\ : std_logic;
SIGNAL \timer_for_speed|temp[27]~82_combout\ : std_logic;
SIGNAL \timer_for_speed|Equal0~7_combout\ : std_logic;
SIGNAL \timer_for_speed|Equal0~6_combout\ : std_logic;
SIGNAL \timer_for_speed|Equal0~0_combout\ : std_logic;
SIGNAL \timer_for_speed|Equal0~2_combout\ : std_logic;
SIGNAL \timer_for_speed|Equal0~1_combout\ : std_logic;
SIGNAL \timer_for_speed|Equal0~3_combout\ : std_logic;
SIGNAL \timer_for_speed|Equal0~4_combout\ : std_logic;
SIGNAL \timer_for_speed|Equal0~combout\ : std_logic;
SIGNAL \speed_up|Add0~0_combout\ : std_logic;
SIGNAL \speed_up|temp~0_combout\ : std_logic;
SIGNAL \ball_logic|tempY[0]~2_combout\ : std_logic;
SIGNAL \ball_FSM|Selector5~4_combout\ : std_logic;
SIGNAL \timer_raq|temp[0]~24_combout\ : std_logic;
SIGNAL \timer_raq|temp[0]~25\ : std_logic;
SIGNAL \timer_raq|temp[1]~26_combout\ : std_logic;
SIGNAL \timer_raq|temp[1]~27\ : std_logic;
SIGNAL \timer_raq|temp[2]~28_combout\ : std_logic;
SIGNAL \timer_raq|temp[2]~29\ : std_logic;
SIGNAL \timer_raq|temp[3]~30_combout\ : std_logic;
SIGNAL \timer_raq|temp[3]~31\ : std_logic;
SIGNAL \timer_raq|temp[4]~32_combout\ : std_logic;
SIGNAL \timer_raq|temp[4]~33\ : std_logic;
SIGNAL \timer_raq|temp[5]~34_combout\ : std_logic;
SIGNAL \timer_raq|temp[5]~35\ : std_logic;
SIGNAL \timer_raq|temp[6]~36_combout\ : std_logic;
SIGNAL \timer_raq|temp[6]~37\ : std_logic;
SIGNAL \timer_raq|temp[7]~38_combout\ : std_logic;
SIGNAL \timer_raq|temp[7]~39\ : std_logic;
SIGNAL \timer_raq|temp[8]~40_combout\ : std_logic;
SIGNAL \timer_raq|temp[8]~41\ : std_logic;
SIGNAL \timer_raq|temp[9]~42_combout\ : std_logic;
SIGNAL \timer_raq|temp[9]~43\ : std_logic;
SIGNAL \timer_raq|temp[10]~44_combout\ : std_logic;
SIGNAL \timer_raq|temp[10]~45\ : std_logic;
SIGNAL \timer_raq|temp[11]~46_combout\ : std_logic;
SIGNAL \timer_raq|temp[11]~47\ : std_logic;
SIGNAL \timer_raq|temp[12]~48_combout\ : std_logic;
SIGNAL \timer_raq|temp[12]~49\ : std_logic;
SIGNAL \timer_raq|temp[13]~50_combout\ : std_logic;
SIGNAL \timer_raq|temp[13]~51\ : std_logic;
SIGNAL \timer_raq|temp[14]~52_combout\ : std_logic;
SIGNAL \timer_raq|temp[14]~53\ : std_logic;
SIGNAL \timer_raq|temp[15]~54_combout\ : std_logic;
SIGNAL \timer_raq|temp[15]~55\ : std_logic;
SIGNAL \timer_raq|temp[16]~56_combout\ : std_logic;
SIGNAL \timer_raq|temp[16]~57\ : std_logic;
SIGNAL \timer_raq|temp[17]~58_combout\ : std_logic;
SIGNAL \timer_raq|temp[17]~59\ : std_logic;
SIGNAL \timer_raq|temp[18]~60_combout\ : std_logic;
SIGNAL \timer_raq|temp[18]~61\ : std_logic;
SIGNAL \timer_raq|temp[19]~62_combout\ : std_logic;
SIGNAL \timer_raq|Equal0~5_combout\ : std_logic;
SIGNAL \timer_raq|temp[19]~63\ : std_logic;
SIGNAL \timer_raq|temp[20]~64_combout\ : std_logic;
SIGNAL \timer_raq|temp[20]~65\ : std_logic;
SIGNAL \timer_raq|temp[21]~66_combout\ : std_logic;
SIGNAL \timer_raq|temp[21]~67\ : std_logic;
SIGNAL \timer_raq|temp[22]~68_combout\ : std_logic;
SIGNAL \timer_raq|temp[22]~69\ : std_logic;
SIGNAL \timer_raq|temp[23]~70_combout\ : std_logic;
SIGNAL \timer_raq|Equal0~6_combout\ : std_logic;
SIGNAL \timer_raq|Equal0~1_combout\ : std_logic;
SIGNAL \timer_raq|Equal0~2_combout\ : std_logic;
SIGNAL \timer_raq|Equal0~0_combout\ : std_logic;
SIGNAL \timer_raq|Equal0~3_combout\ : std_logic;
SIGNAL \timer_raq|Equal0~4_combout\ : std_logic;
SIGNAL \timer_raq|Equal0~combout\ : std_logic;
SIGNAL \timer_raq|Equal0~clkctrl_outclk\ : std_logic;
SIGNAL \B2_up~input_o\ : std_logic;
SIGNAL \B2_dw~input_o\ : std_logic;
SIGNAL \racket_logic|raq2_next[0]~0_combout\ : std_logic;
SIGNAL \racket_logic|Add3~0_combout\ : std_logic;
SIGNAL \B1_dw~input_o\ : std_logic;
SIGNAL \B1_up~input_o\ : std_logic;
SIGNAL \racket_logic|temp1~5_combout\ : std_logic;
SIGNAL \racket_logic|raq1_next[2]~2_combout\ : std_logic;
SIGNAL \racket_logic|raq1_next[1]~3_combout\ : std_logic;
SIGNAL \racket_logic|temp1~4_combout\ : std_logic;
SIGNAL \racket_logic|Add1~0_combout\ : std_logic;
SIGNAL \racket_logic|raq1_next[2]~4_combout\ : std_logic;
SIGNAL \racket_logic|temp1~3_combout\ : std_logic;
SIGNAL \racket_logic|temp1[2]~2_combout\ : std_logic;
SIGNAL \racket_logic|temp2~1_combout\ : std_logic;
SIGNAL \racket_logic|raq2_next[2]~2_combout\ : std_logic;
SIGNAL \racket_logic|temp2~0_combout\ : std_logic;
SIGNAL \racket_logic|raq2_next[1]~1_combout\ : std_logic;
SIGNAL \racket_logic|temp2~2_combout\ : std_logic;
SIGNAL \ball_FSM|process_1~6_combout\ : std_logic;
SIGNAL \ball_FSM|Equal9~1_combout\ : std_logic;
SIGNAL \ball_FSM|process_1~7_combout\ : std_logic;
SIGNAL \ball_FSM|process_1~4_combout\ : std_logic;
SIGNAL \ball_FSM|process_1~5_combout\ : std_logic;
SIGNAL \ball_FSM|Selector3~1_combout\ : std_logic;
SIGNAL \ball_FSM|Selector5~6_combout\ : std_logic;
SIGNAL \ball_logic|tempX[1]~4_cout\ : std_logic;
SIGNAL \ball_logic|tempX[1]~6\ : std_logic;
SIGNAL \ball_logic|tempX[2]~8_combout\ : std_logic;
SIGNAL \ball_logic|tempX[1]~7_combout\ : std_logic;
SIGNAL \ball_logic|tempX[2]~9\ : std_logic;
SIGNAL \ball_logic|tempX[3]~10_combout\ : std_logic;
SIGNAL \ball_FSM|Equal10~0_combout\ : std_logic;
SIGNAL \ball_FSM|process_1~10_combout\ : std_logic;
SIGNAL \ball_FSM|Selector8~2_combout\ : std_logic;
SIGNAL \ball_FSM|Selector7~2_combout\ : std_logic;
SIGNAL \ball_FSM|Equal3~0_combout\ : std_logic;
SIGNAL \ball_FSM|Selector5~8_combout\ : std_logic;
SIGNAL \ball_FSM|Selector5~5_combout\ : std_logic;
SIGNAL \ball_FSM|Selector5~7_combout\ : std_logic;
SIGNAL \ball_FSM|pr_state.right_up~q\ : std_logic;
SIGNAL \ball_logic|tempY[0]~0_combout\ : std_logic;
SIGNAL \ball_logic|Add3~0_combout\ : std_logic;
SIGNAL \ball_logic|Add3~1_combout\ : std_logic;
SIGNAL \ball_FSM|Selector7~3_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \ball_FSM|process_1~8_combout\ : std_logic;
SIGNAL \ball_FSM|Equal3~1_combout\ : std_logic;
SIGNAL \ball_FSM|process_1~9_combout\ : std_logic;
SIGNAL \ball_FSM|Selector3~0_combout\ : std_logic;
SIGNAL \ball_FSM|Selector3~2_combout\ : std_logic;
SIGNAL \ball_FSM|Selector3~3_combout\ : std_logic;
SIGNAL \ball_FSM|pr_state.mov_right~q\ : std_logic;
SIGNAL \ball_FSM|Selector6~2_combout\ : std_logic;
SIGNAL \ball_FSM|Selector7~5_combout\ : std_logic;
SIGNAL \ball_FSM|Equal10~15_combout\ : std_logic;
SIGNAL \ball_FSM|process_1~11_combout\ : std_logic;
SIGNAL \ball_FSM|process_1~0_combout\ : std_logic;
SIGNAL \ball_FSM|process_1~1_combout\ : std_logic;
SIGNAL \ball_FSM|Selector4~1_combout\ : std_logic;
SIGNAL \ball_FSM|Selector7~4_combout\ : std_logic;
SIGNAL \ball_FSM|pr_state.left_up~q\ : std_logic;
SIGNAL \ball_FSM|Selector8~3_combout\ : std_logic;
SIGNAL \ball_FSM|Selector8~5_combout\ : std_logic;
SIGNAL \ball_FSM|Selector8~4_combout\ : std_logic;
SIGNAL \ball_FSM|pr_state.left_down~q\ : std_logic;
SIGNAL \ball_logic|Add3~2_combout\ : std_logic;
SIGNAL \ball_FSM|Selector6~3_combout\ : std_logic;
SIGNAL \ball_FSM|Selector6~5_combout\ : std_logic;
SIGNAL \ball_FSM|Selector6~4_combout\ : std_logic;
SIGNAL \ball_FSM|pr_state.right_down~q\ : std_logic;
SIGNAL \ball_FSM|WideOr3~0_combout\ : std_logic;
SIGNAL \ball_logic|tempX[1]~5_combout\ : std_logic;
SIGNAL \ball_FSM|Equal10~13_combout\ : std_logic;
SIGNAL \ball_FSM|process_1~2_combout\ : std_logic;
SIGNAL \ball_FSM|Equal9~0_combout\ : std_logic;
SIGNAL \ball_FSM|process_1~3_combout\ : std_logic;
SIGNAL \ball_FSM|Selector4~0_combout\ : std_logic;
SIGNAL \ball_FSM|Selector4~2_combout\ : std_logic;
SIGNAL \ball_FSM|pr_state.mov_left~q\ : std_logic;
SIGNAL \ball_FSM|Selector2~0_combout\ : std_logic;
SIGNAL \ball_FSM|pr_state.mark2~q\ : std_logic;
SIGNAL \ball_FSM|Selector0~0_combout\ : std_logic;
SIGNAL \ball_FSM|Selector0~1_combout\ : std_logic;
SIGNAL \ball_FSM|pr_state.stby~q\ : std_logic;
SIGNAL \rst_play~combout\ : std_logic;
SIGNAL \speed_up|Add0~1\ : std_logic;
SIGNAL \speed_up|Add0~2_combout\ : std_logic;
SIGNAL \speed_up|temp~1_combout\ : std_logic;
SIGNAL \speed_up|Add0~3\ : std_logic;
SIGNAL \speed_up|Add0~4_combout\ : std_logic;
SIGNAL \speed_up|temp~2_combout\ : std_logic;
SIGNAL \speed_up|Add0~5\ : std_logic;
SIGNAL \speed_up|Add0~6_combout\ : std_logic;
SIGNAL \speed_up|temp~3_combout\ : std_logic;
SIGNAL \speed_up|Add0~7\ : std_logic;
SIGNAL \speed_up|Add0~8_combout\ : std_logic;
SIGNAL \speed_up|temp~4_combout\ : std_logic;
SIGNAL \speed_up|Add0~9\ : std_logic;
SIGNAL \speed_up|Add0~10_combout\ : std_logic;
SIGNAL \speed_up|temp~5_combout\ : std_logic;
SIGNAL \speed_up|Add0~11\ : std_logic;
SIGNAL \speed_up|Add0~12_combout\ : std_logic;
SIGNAL \speed_up|temp~7_combout\ : std_logic;
SIGNAL \speed_up|Add0~13\ : std_logic;
SIGNAL \speed_up|Add0~14_combout\ : std_logic;
SIGNAL \speed_up|temp~6_combout\ : std_logic;
SIGNAL \speed_up|Add0~15\ : std_logic;
SIGNAL \speed_up|Add0~16_combout\ : std_logic;
SIGNAL \speed_up|temp~9_combout\ : std_logic;
SIGNAL \speed_up|Add0~17\ : std_logic;
SIGNAL \speed_up|Add0~18_combout\ : std_logic;
SIGNAL \speed_up|temp~8_combout\ : std_logic;
SIGNAL \speed_up|Add0~19\ : std_logic;
SIGNAL \speed_up|Add0~20_combout\ : std_logic;
SIGNAL \speed_up|temp~10_combout\ : std_logic;
SIGNAL \speed_up|Add0~21\ : std_logic;
SIGNAL \speed_up|Add0~22_combout\ : std_logic;
SIGNAL \speed_up|temp~11_combout\ : std_logic;
SIGNAL \speed_up|Add0~23\ : std_logic;
SIGNAL \speed_up|Add0~24_combout\ : std_logic;
SIGNAL \speed_up|temp~12_combout\ : std_logic;
SIGNAL \speed_up|Add0~25\ : std_logic;
SIGNAL \speed_up|Add0~26_combout\ : std_logic;
SIGNAL \speed_up|temp~13_combout\ : std_logic;
SIGNAL \speed_up|Add0~27\ : std_logic;
SIGNAL \speed_up|Add0~28_combout\ : std_logic;
SIGNAL \speed_up|temp~14_combout\ : std_logic;
SIGNAL \speed_up|Add0~29\ : std_logic;
SIGNAL \speed_up|Add0~30_combout\ : std_logic;
SIGNAL \speed_up|temp~15_combout\ : std_logic;
SIGNAL \speed_up|Add0~31\ : std_logic;
SIGNAL \speed_up|Add0~32_combout\ : std_logic;
SIGNAL \speed_up|temp~17_combout\ : std_logic;
SIGNAL \speed_up|Add0~33\ : std_logic;
SIGNAL \speed_up|Add0~34_combout\ : std_logic;
SIGNAL \speed_up|LessThan0~0_combout\ : std_logic;
SIGNAL \speed_up|LessThan0~1_combout\ : std_logic;
SIGNAL \speed_up|LessThan0~2_combout\ : std_logic;
SIGNAL \speed_up|LessThan0~3_combout\ : std_logic;
SIGNAL \speed_up|LessThan0~4_combout\ : std_logic;
SIGNAL \speed_up|LessThan0~5_combout\ : std_logic;
SIGNAL \speed_up|temp~18_combout\ : std_logic;
SIGNAL \speed_up|Add0~37\ : std_logic;
SIGNAL \speed_up|Add0~38_combout\ : std_logic;
SIGNAL \speed_up|temp~16_combout\ : std_logic;
SIGNAL \speed_up|Add0~35\ : std_logic;
SIGNAL \speed_up|Add0~36_combout\ : std_logic;
SIGNAL \speed_up|temp[22]~feeder_combout\ : std_logic;
SIGNAL \timer_ball|temp[0]~24_combout\ : std_logic;
SIGNAL \timer_ball|temp[0]~25\ : std_logic;
SIGNAL \timer_ball|temp[1]~26_combout\ : std_logic;
SIGNAL \timer_ball|temp[1]~27\ : std_logic;
SIGNAL \timer_ball|temp[2]~28_combout\ : std_logic;
SIGNAL \timer_ball|temp[2]~29\ : std_logic;
SIGNAL \timer_ball|temp[3]~30_combout\ : std_logic;
SIGNAL \timer_ball|temp[3]~31\ : std_logic;
SIGNAL \timer_ball|temp[4]~32_combout\ : std_logic;
SIGNAL \timer_ball|temp[4]~33\ : std_logic;
SIGNAL \timer_ball|temp[5]~34_combout\ : std_logic;
SIGNAL \timer_ball|temp[5]~35\ : std_logic;
SIGNAL \timer_ball|temp[6]~36_combout\ : std_logic;
SIGNAL \timer_ball|temp[6]~37\ : std_logic;
SIGNAL \timer_ball|temp[7]~38_combout\ : std_logic;
SIGNAL \timer_ball|temp[7]~39\ : std_logic;
SIGNAL \timer_ball|temp[8]~40_combout\ : std_logic;
SIGNAL \timer_ball|temp[8]~41\ : std_logic;
SIGNAL \timer_ball|temp[9]~42_combout\ : std_logic;
SIGNAL \timer_ball|temp[9]~43\ : std_logic;
SIGNAL \timer_ball|temp[10]~44_combout\ : std_logic;
SIGNAL \timer_ball|temp[10]~45\ : std_logic;
SIGNAL \timer_ball|temp[11]~46_combout\ : std_logic;
SIGNAL \timer_ball|temp[11]~47\ : std_logic;
SIGNAL \timer_ball|temp[12]~48_combout\ : std_logic;
SIGNAL \timer_ball|temp[12]~49\ : std_logic;
SIGNAL \timer_ball|temp[13]~50_combout\ : std_logic;
SIGNAL \timer_ball|temp[13]~51\ : std_logic;
SIGNAL \timer_ball|temp[14]~52_combout\ : std_logic;
SIGNAL \timer_ball|temp[14]~53\ : std_logic;
SIGNAL \timer_ball|temp[15]~54_combout\ : std_logic;
SIGNAL \timer_ball|temp[15]~55\ : std_logic;
SIGNAL \timer_ball|temp[16]~56_combout\ : std_logic;
SIGNAL \timer_ball|temp[16]~57\ : std_logic;
SIGNAL \timer_ball|temp[17]~58_combout\ : std_logic;
SIGNAL \timer_ball|temp[17]~59\ : std_logic;
SIGNAL \timer_ball|temp[18]~60_combout\ : std_logic;
SIGNAL \timer_ball|temp[18]~61\ : std_logic;
SIGNAL \timer_ball|temp[19]~62_combout\ : std_logic;
SIGNAL \timer_ball|temp[19]~63\ : std_logic;
SIGNAL \timer_ball|temp[20]~64_combout\ : std_logic;
SIGNAL \timer_ball|temp[20]~65\ : std_logic;
SIGNAL \timer_ball|temp[21]~66_combout\ : std_logic;
SIGNAL \timer_ball|temp[21]~67\ : std_logic;
SIGNAL \timer_ball|temp[22]~68_combout\ : std_logic;
SIGNAL \timer_ball|Equal0~11_combout\ : std_logic;
SIGNAL \timer_ball|temp[22]~69\ : std_logic;
SIGNAL \timer_ball|temp[23]~70_combout\ : std_logic;
SIGNAL \timer_ball|Equal0~12_combout\ : std_logic;
SIGNAL \timer_ball|Equal0~13_combout\ : std_logic;
SIGNAL \timer_ball|Equal0~10_combout\ : std_logic;
SIGNAL \timer_ball|Equal0~5_combout\ : std_logic;
SIGNAL \timer_ball|Equal0~6_combout\ : std_logic;
SIGNAL \timer_ball|Equal0~8_combout\ : std_logic;
SIGNAL \timer_ball|Equal0~7_combout\ : std_logic;
SIGNAL \timer_ball|Equal0~9_combout\ : std_logic;
SIGNAL \timer_ball|Equal0~1_combout\ : std_logic;
SIGNAL \timer_ball|Equal0~2_combout\ : std_logic;
SIGNAL \timer_ball|Equal0~0_combout\ : std_logic;
SIGNAL \timer_ball|Equal0~3_combout\ : std_logic;
SIGNAL \timer_ball|Equal0~4_combout\ : std_logic;
SIGNAL \timer_ball|Equal0~combout\ : std_logic;
SIGNAL \timer_ball|Equal0~clkctrl_outclk\ : std_logic;
SIGNAL \ball_logic|xb_next~0_combout\ : std_logic;
SIGNAL \ball_logic|xb_next[0]~1_combout\ : std_logic;
SIGNAL \ball_FSM|Equal10~14_combout\ : std_logic;
SIGNAL \ball_FSM|Selector1~0_combout\ : std_logic;
SIGNAL \ball_FSM|pr_state.mark1~q\ : std_logic;
SIGNAL \score_logic|temp1[0]~0_combout\ : std_logic;
SIGNAL \score_logic|temp1[1]~1_combout\ : std_logic;
SIGNAL \score_logic|temp1[2]~2_combout\ : std_logic;
SIGNAL \score_logic|temp1[3]~3_combout\ : std_logic;
SIGNAL \score_logic|temp1[3]~4_combout\ : std_logic;
SIGNAL \bin_to_sseg_1|Mux6~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_1|Mux5~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_1|Mux4~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_1|Mux3~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_1|Mux2~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_1|Mux1~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_1|Mux0~0_combout\ : std_logic;
SIGNAL \score_logic|temp2[0]~0_combout\ : std_logic;
SIGNAL \score_logic|temp2[1]~1_combout\ : std_logic;
SIGNAL \score_logic|temp2[2]~2_combout\ : std_logic;
SIGNAL \score_logic|temp2[3]~3_combout\ : std_logic;
SIGNAL \score_logic|temp2[3]~4_combout\ : std_logic;
SIGNAL \bin_to_sseg_2|Mux6~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_2|Mux5~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_2|Mux4~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_2|Mux3~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_2|Mux2~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_2|Mux1~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_2|Mux0~0_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_37~feeder_combout\ : std_logic;
SIGNAL \timer_fps|Add0~0_combout\ : std_logic;
SIGNAL \timer_fps|count_next[0]~6_combout\ : std_logic;
SIGNAL \timer_fps|Add0~1\ : std_logic;
SIGNAL \timer_fps|Add0~2_combout\ : std_logic;
SIGNAL \timer_fps|Add0~3\ : std_logic;
SIGNAL \timer_fps|Add0~4_combout\ : std_logic;
SIGNAL \timer_fps|count_next[2]~5_combout\ : std_logic;
SIGNAL \timer_fps|Add0~5\ : std_logic;
SIGNAL \timer_fps|Add0~6_combout\ : std_logic;
SIGNAL \timer_fps|count_next[3]~4_combout\ : std_logic;
SIGNAL \timer_fps|Equal0~3_combout\ : std_logic;
SIGNAL \timer_fps|Add0~7\ : std_logic;
SIGNAL \timer_fps|Add0~8_combout\ : std_logic;
SIGNAL \timer_fps|count_next[4]~3_combout\ : std_logic;
SIGNAL \timer_fps|Add0~9\ : std_logic;
SIGNAL \timer_fps|Add0~10_combout\ : std_logic;
SIGNAL \timer_fps|Add0~11\ : std_logic;
SIGNAL \timer_fps|Add0~12_combout\ : std_logic;
SIGNAL \timer_fps|count_next[6]~2_combout\ : std_logic;
SIGNAL \timer_fps|Add0~13\ : std_logic;
SIGNAL \timer_fps|Add0~14_combout\ : std_logic;
SIGNAL \timer_fps|Add0~15\ : std_logic;
SIGNAL \timer_fps|Add0~16_combout\ : std_logic;
SIGNAL \timer_fps|Add0~17\ : std_logic;
SIGNAL \timer_fps|Add0~18_combout\ : std_logic;
SIGNAL \timer_fps|Add0~19\ : std_logic;
SIGNAL \timer_fps|Add0~20_combout\ : std_logic;
SIGNAL \timer_fps|count_next[10]~1_combout\ : std_logic;
SIGNAL \timer_fps|Add0~21\ : std_logic;
SIGNAL \timer_fps|Add0~22_combout\ : std_logic;
SIGNAL \timer_fps|Equal0~1_combout\ : std_logic;
SIGNAL \timer_fps|Equal0~2_combout\ : std_logic;
SIGNAL \timer_fps|Add0~23\ : std_logic;
SIGNAL \timer_fps|Add0~24_combout\ : std_logic;
SIGNAL \timer_fps|Add0~25\ : std_logic;
SIGNAL \timer_fps|Add0~26_combout\ : std_logic;
SIGNAL \timer_fps|Add0~27\ : std_logic;
SIGNAL \timer_fps|Add0~28_combout\ : std_logic;
SIGNAL \timer_fps|count_next[14]~0_combout\ : std_logic;
SIGNAL \timer_fps|Add0~29\ : std_logic;
SIGNAL \timer_fps|Add0~30_combout\ : std_logic;
SIGNAL \timer_fps|Equal0~0_combout\ : std_logic;
SIGNAL \timer_fps|Equal0~4_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_37~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_38~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_38~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_39~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_39~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_40~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_40~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_41~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_41~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_42~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_42~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_43~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_44~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_45~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_46~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_46~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_47~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_47~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_48~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_48~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_49~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_49~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_50~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_51~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_51~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_52~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_53~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_54~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_55~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_56~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_57~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_57~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_58~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_59~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_59~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_60~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_60~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_61~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_62~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_63~q\ : std_logic;
SIGNAL \left_display|pr_state.stby~0_combout\ : std_logic;
SIGNAL \left_display|pr_state.stby~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_0~0_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_0~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_1~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_1~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_2~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_3~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_3~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_4~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_4~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_5~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_5~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_6~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_6~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_7~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_7~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_8~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_9~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_10~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_11~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_12~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_13~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_13~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_14~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_15~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_15~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_16~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_16~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_17~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_17~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_18~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_18~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_19~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_19~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_20~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_21~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_22~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_22~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_23~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_23~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_24~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_24~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_25~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_25~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_26~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_26~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_27~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_27~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_28~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_28~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_29~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_29~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_30~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_31~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_31~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_32~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_33~feeder_combout\ : std_logic;
SIGNAL \left_display|pr_state.LED_33~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_34~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_35~q\ : std_logic;
SIGNAL \left_display|pr_state.LED_36~q\ : std_logic;
SIGNAL \left_display|WideOr8~1_combout\ : std_logic;
SIGNAL \left_display|WideOr8~0_combout\ : std_logic;
SIGNAL \left_display|WideOr8~combout\ : std_logic;
SIGNAL \left_display|WideOr12~1_combout\ : std_logic;
SIGNAL \left_display|WideOr12~0_combout\ : std_logic;
SIGNAL \left_display|WideOr12~combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][25]~q\ : std_logic;
SIGNAL \array_reg|array_reg[0][17]~q\ : std_logic;
SIGNAL \left_display|Selector1~2_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][41]~q\ : std_logic;
SIGNAL \array_reg|array_reg[0][33]~q\ : std_logic;
SIGNAL \left_display|Selector1~1_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][49]~q\ : std_logic;
SIGNAL \array_reg|array_reg[0][57]~q\ : std_logic;
SIGNAL \left_display|Selector1~0_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][9]~q\ : std_logic;
SIGNAL \array_reg|array_reg[0][1]~q\ : std_logic;
SIGNAL \left_display|Selector1~3_combout\ : std_logic;
SIGNAL \left_display|Selector1~4_combout\ : std_logic;
SIGNAL \ball_FSM|Equal10~1_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix~30_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][34]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix~29_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][42]~q\ : std_logic;
SIGNAL \left_display|Selector2~1_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix~28_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][50]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix~70_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][58]~q\ : std_logic;
SIGNAL \left_display|Selector2~0_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix~31_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][26]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix~32_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][18]~q\ : std_logic;
SIGNAL \left_display|Selector2~2_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix~71_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][2]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix~33_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][10]~q\ : std_logic;
SIGNAL \left_display|Selector2~3_combout\ : std_logic;
SIGNAL \left_display|Selector2~4_combout\ : std_logic;
SIGNAL \left_display|WideOr14~1_combout\ : std_logic;
SIGNAL \left_display|WideOr14~0_combout\ : std_logic;
SIGNAL \left_display|WideOr14~combout\ : std_logic;
SIGNAL \ball_FSM|Equal10~2_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix[52]~34_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][52]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix[60]~72_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][60]~q\ : std_logic;
SIGNAL \left_display|Selector4~0_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix[44]~35_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][44]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix[36]~36_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][36]~q\ : std_logic;
SIGNAL \left_display|Selector4~1_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix[12]~39_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][12]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix[4]~73_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][4]~q\ : std_logic;
SIGNAL \left_display|Selector4~3_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix[28]~37_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][28]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix[20]~38_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][20]~q\ : std_logic;
SIGNAL \left_display|Selector4~2_combout\ : std_logic;
SIGNAL \left_display|Selector4~4_combout\ : std_logic;
SIGNAL \left_display|WideOr10~1_combout\ : std_logic;
SIGNAL \left_display|WideOr10~0_combout\ : std_logic;
SIGNAL \left_display|WideOr10~combout\ : std_logic;
SIGNAL \left_display|WideOr4~0_combout\ : std_logic;
SIGNAL \left_display|WideOr4~1_combout\ : std_logic;
SIGNAL \left_display|WideOr4~combout\ : std_logic;
SIGNAL \left_display|WideOr0~1_combout\ : std_logic;
SIGNAL \left_display|WideOr0~0_combout\ : std_logic;
SIGNAL \left_display|WideOr0~combout\ : std_logic;
SIGNAL \ball_FSM|Equal10~3_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix[43]~41_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][43]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix[35]~42_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][35]~q\ : std_logic;
SIGNAL \left_display|Selector3~1_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix[27]~43_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][27]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix[19]~44_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][19]~q\ : std_logic;
SIGNAL \left_display|Selector3~2_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix[11]~45_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][11]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix[3]~75_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][3]~q\ : std_logic;
SIGNAL \left_display|Selector3~3_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix[51]~40_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][51]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix[59]~74_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][59]~q\ : std_logic;
SIGNAL \left_display|Selector3~0_combout\ : std_logic;
SIGNAL \left_display|Selector3~4_combout\ : std_logic;
SIGNAL \ball_FSM|Equal10~4_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix[53]~46_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][53]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix[61]~76_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][61]~q\ : std_logic;
SIGNAL \left_display|Selector5~0_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix[37]~48_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][37]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix[45]~47_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][45]~q\ : std_logic;
SIGNAL \left_display|Selector5~1_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix[21]~50_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][21]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix[29]~49_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][29]~q\ : std_logic;
SIGNAL \left_display|Selector5~2_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix[13]~51_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][13]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix[5]~77_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][5]~q\ : std_logic;
SIGNAL \left_display|Selector5~3_combout\ : std_logic;
SIGNAL \left_display|Selector5~4_combout\ : std_logic;
SIGNAL \left_display|WideOr6~0_combout\ : std_logic;
SIGNAL \left_display|WideOr6~1_combout\ : std_logic;
SIGNAL \left_display|WideOr6~combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix[32]~54_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][32]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix[40]~53_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][40]~q\ : std_logic;
SIGNAL \left_display|Selector0~1_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix[24]~55_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][24]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix[16]~56_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][16]~q\ : std_logic;
SIGNAL \left_display|Selector0~2_combout\ : std_logic;
SIGNAL \left_matrix_vector|Equal15~1_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][0]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix[8]~57_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][8]~q\ : std_logic;
SIGNAL \left_display|Selector0~3_combout\ : std_logic;
SIGNAL \left_matrix_vector|Equal15~0_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][56]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix[48]~52_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][48]~q\ : std_logic;
SIGNAL \left_display|Selector0~0_combout\ : std_logic;
SIGNAL \left_display|Selector0~4_combout\ : std_logic;
SIGNAL \left_display|WideOr2~1_combout\ : std_logic;
SIGNAL \left_display|WideOr2~0_combout\ : std_logic;
SIGNAL \left_display|WideOr2~combout\ : std_logic;
SIGNAL \ball_FSM|Equal10~5_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix~78_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][62]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix~58_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][54]~q\ : std_logic;
SIGNAL \left_display|Selector6~0_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix~62_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][22]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix~61_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][30]~q\ : std_logic;
SIGNAL \left_display|Selector6~2_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix~59_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][46]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix~60_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][38]~q\ : std_logic;
SIGNAL \left_display|Selector6~1_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix~79_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][6]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix~63_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][14]~q\ : std_logic;
SIGNAL \left_display|Selector6~3_combout\ : std_logic;
SIGNAL \left_display|Selector6~4_combout\ : std_logic;
SIGNAL \ball_FSM|Equal10~6_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix[39]~66_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][39]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix[47]~65_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][47]~q\ : std_logic;
SIGNAL \left_display|Selector7~1_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix[7]~81_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][7]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix[15]~69_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][15]~q\ : std_logic;
SIGNAL \left_display|Selector7~3_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix[31]~67_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][31]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix[23]~68_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][23]~q\ : std_logic;
SIGNAL \left_display|Selector7~2_combout\ : std_logic;
SIGNAL \left_matrix_vector|matrix[55]~64_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][55]~q\ : std_logic;
SIGNAL \left_matrix_vector|matrix[63]~80_combout\ : std_logic;
SIGNAL \array_reg|array_reg[0][63]~q\ : std_logic;
SIGNAL \left_display|Selector7~0_combout\ : std_logic;
SIGNAL \left_display|Selector7~4_combout\ : std_logic;
SIGNAL \ball_FSM|Equal10~7_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix~33_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][9]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix~70_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][1]~q\ : std_logic;
SIGNAL \right_display|Selector1~3_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix~29_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][41]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix~30_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][33]~q\ : std_logic;
SIGNAL \right_display|Selector1~1_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix~32_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][25]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix~31_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][17]~q\ : std_logic;
SIGNAL \right_display|Selector1~2_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix~28_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][49]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix~69_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][57]~q\ : std_logic;
SIGNAL \right_display|Selector1~0_combout\ : std_logic;
SIGNAL \right_display|Selector1~4_combout\ : std_logic;
SIGNAL \ball_FSM|Equal10~8_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix[18]~37_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][18]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix[26]~38_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][26]~q\ : std_logic;
SIGNAL \right_display|Selector2~2_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix[42]~35_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][42]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix[34]~36_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][34]~q\ : std_logic;
SIGNAL \right_display|Selector2~1_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix[50]~34_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][50]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix[58]~71_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][58]~q\ : std_logic;
SIGNAL \right_display|Selector2~0_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix[10]~39_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][10]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix[2]~72_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][2]~q\ : std_logic;
SIGNAL \right_display|Selector2~3_combout\ : std_logic;
SIGNAL \right_display|Selector2~4_combout\ : std_logic;
SIGNAL \ball_FSM|Equal10~9_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix[52]~40_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][52]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix[60]~73_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][60]~q\ : std_logic;
SIGNAL \right_display|Selector4~0_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix[28]~44_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][28]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix[20]~43_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][20]~q\ : std_logic;
SIGNAL \right_display|Selector4~2_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix[12]~45_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][12]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix[4]~74_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][4]~q\ : std_logic;
SIGNAL \right_display|Selector4~3_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix[36]~42_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][36]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix[44]~41_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][44]~q\ : std_logic;
SIGNAL \right_display|Selector4~1_combout\ : std_logic;
SIGNAL \right_display|Selector4~4_combout\ : std_logic;
SIGNAL \ball_FSM|Equal10~10_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix[3]~76_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][3]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix[11]~51_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][11]~q\ : std_logic;
SIGNAL \right_display|Selector3~3_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix[35]~48_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][35]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix[43]~47_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][43]~q\ : std_logic;
SIGNAL \right_display|Selector3~1_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix[27]~49_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][27]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix[19]~50_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][19]~q\ : std_logic;
SIGNAL \right_display|Selector3~2_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix[51]~46_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][51]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix[59]~75_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][59]~q\ : std_logic;
SIGNAL \right_display|Selector3~0_combout\ : std_logic;
SIGNAL \right_display|Selector3~4_combout\ : std_logic;
SIGNAL \ball_FSM|Equal10~11_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix~56_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][21]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix~55_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][29]~q\ : std_logic;
SIGNAL \right_display|Selector5~2_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix~52_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][53]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix~77_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][61]~q\ : std_logic;
SIGNAL \right_display|Selector5~0_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix~78_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][5]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix~57_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][13]~q\ : std_logic;
SIGNAL \right_display|Selector5~3_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix~54_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][37]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix~53_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][45]~q\ : std_logic;
SIGNAL \right_display|Selector5~1_combout\ : std_logic;
SIGNAL \right_display|Selector5~4_combout\ : std_logic;
SIGNAL \ball_FSM|Equal10~12_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][40]~q\ : std_logic;
SIGNAL \array_reg|array_reg[1][32]~q\ : std_logic;
SIGNAL \right_display|Selector0~1_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][24]~q\ : std_logic;
SIGNAL \array_reg|array_reg[1][16]~q\ : std_logic;
SIGNAL \right_display|Selector0~2_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][0]~q\ : std_logic;
SIGNAL \array_reg|array_reg[1][8]~q\ : std_logic;
SIGNAL \right_display|Selector0~3_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][48]~q\ : std_logic;
SIGNAL \array_reg|array_reg[1][56]~q\ : std_logic;
SIGNAL \right_display|Selector0~0_combout\ : std_logic;
SIGNAL \right_display|Selector0~4_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix[38]~60_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][38]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix[46]~59_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][46]~q\ : std_logic;
SIGNAL \right_display|Selector6~1_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix[62]~79_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][62]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix[54]~58_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][54]~q\ : std_logic;
SIGNAL \right_display|Selector6~0_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix[14]~63_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][14]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix[6]~80_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][6]~q\ : std_logic;
SIGNAL \right_display|Selector6~3_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix[22]~62_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][22]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix[30]~61_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][30]~q\ : std_logic;
SIGNAL \right_display|Selector6~2_combout\ : std_logic;
SIGNAL \right_display|Selector6~4_combout\ : std_logic;
SIGNAL \right_matrix_vector|Equal15~2_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][7]~q\ : std_logic;
SIGNAL \right_matrix_vector|Equal15~1_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][15]~q\ : std_logic;
SIGNAL \right_display|Selector7~3_combout\ : std_logic;
SIGNAL \right_matrix_vector|Equal15~0_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][63]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix[55]~64_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][55]~q\ : std_logic;
SIGNAL \right_display|Selector7~0_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix[39]~66_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][39]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix[47]~65_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][47]~q\ : std_logic;
SIGNAL \right_display|Selector7~1_combout\ : std_logic;
SIGNAL \right_matrix_vector|matrix[31]~67_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][31]~q\ : std_logic;
SIGNAL \right_matrix_vector|matrix[23]~68_combout\ : std_logic;
SIGNAL \array_reg|array_reg[1][23]~q\ : std_logic;
SIGNAL \right_display|Selector7~2_combout\ : std_logic;
SIGNAL \right_display|Selector7~4_combout\ : std_logic;
SIGNAL \timer_fps|temp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \timer_raq|temp\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \timer_for_speed|temp\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \speed_up|temp\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \ball_logic|tempX\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timer_ball|temp\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \racket_logic|temp2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \racket_logic|temp1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \score_logic|temp2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \right_matrix_vector|matrix\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \ball_logic|tempY\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \left_matrix_vector|matrix\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \score_logic|temp1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_rst_play~combout\ : std_logic;
SIGNAL \left_display|ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \left_display|ALT_INV_WideOr6~combout\ : std_logic;
SIGNAL \left_display|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \left_display|ALT_INV_WideOr4~combout\ : std_logic;
SIGNAL \left_display|ALT_INV_WideOr10~combout\ : std_logic;
SIGNAL \left_display|ALT_INV_WideOr14~combout\ : std_logic;
SIGNAL \left_display|ALT_INV_WideOr12~combout\ : std_logic;
SIGNAL \left_display|ALT_INV_WideOr8~combout\ : std_logic;
SIGNAL \bin_to_sseg_2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_1|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_start <= start;
ww_B1_up <= B1_up;
ww_B1_dw <= B1_dw;
ww_B2_up <= B2_up;
ww_B2_dw <= B2_dw;
score1 <= ww_score1;
score2 <= ww_score2;
M1 <= ww_M1;
M2 <= ww_M2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\timer_raq|Equal0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \timer_raq|Equal0~combout\);

\timer_ball|Equal0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \timer_ball|Equal0~combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_rst_play~combout\ <= NOT \rst_play~combout\;
\left_display|ALT_INV_WideOr2~combout\ <= NOT \left_display|WideOr2~combout\;
\left_display|ALT_INV_WideOr6~combout\ <= NOT \left_display|WideOr6~combout\;
\left_display|ALT_INV_WideOr0~combout\ <= NOT \left_display|WideOr0~combout\;
\left_display|ALT_INV_WideOr4~combout\ <= NOT \left_display|WideOr4~combout\;
\left_display|ALT_INV_WideOr10~combout\ <= NOT \left_display|WideOr10~combout\;
\left_display|ALT_INV_WideOr14~combout\ <= NOT \left_display|WideOr14~combout\;
\left_display|ALT_INV_WideOr12~combout\ <= NOT \left_display|WideOr12~combout\;
\left_display|ALT_INV_WideOr8~combout\ <= NOT \left_display|WideOr8~combout\;
\bin_to_sseg_2|ALT_INV_Mux0~0_combout\ <= NOT \bin_to_sseg_2|Mux0~0_combout\;
\bin_to_sseg_1|ALT_INV_Mux0~0_combout\ <= NOT \bin_to_sseg_1|Mux0~0_combout\;

-- Location: IOOBUF_X32_Y29_N30
\score1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \score1[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\score1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \score1[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\score1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \score1[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\score1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \score1[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\score1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \score1[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\score1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \score1[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\score1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \score1[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\score2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \score2[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\score2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \score2[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\score2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \score2[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\score2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \score2[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\score2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \score2[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\score2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \score2[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\score2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \score2[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\M1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|ALT_INV_WideOr8~combout\,
	devoe => ww_devoe,
	o => \M1[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\M1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|ALT_INV_WideOr12~combout\,
	devoe => ww_devoe,
	o => \M1[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\M1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|Selector1~4_combout\,
	devoe => ww_devoe,
	o => \M1[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\M1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|Selector2~4_combout\,
	devoe => ww_devoe,
	o => \M1[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N30
\M1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|ALT_INV_WideOr14~combout\,
	devoe => ww_devoe,
	o => \M1[4]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\M1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|Selector4~4_combout\,
	devoe => ww_devoe,
	o => \M1[5]~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\M1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|ALT_INV_WideOr10~combout\,
	devoe => ww_devoe,
	o => \M1[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\M1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|ALT_INV_WideOr4~combout\,
	devoe => ww_devoe,
	o => \M1[7]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\M1[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|ALT_INV_WideOr0~combout\,
	devoe => ww_devoe,
	o => \M1[8]~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\M1[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|Selector3~4_combout\,
	devoe => ww_devoe,
	o => \M1[9]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\M1[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|Selector5~4_combout\,
	devoe => ww_devoe,
	o => \M1[10]~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\M1[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|ALT_INV_WideOr6~combout\,
	devoe => ww_devoe,
	o => \M1[11]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\M1[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|Selector0~4_combout\,
	devoe => ww_devoe,
	o => \M1[12]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\M1[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|ALT_INV_WideOr2~combout\,
	devoe => ww_devoe,
	o => \M1[13]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\M1[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|Selector6~4_combout\,
	devoe => ww_devoe,
	o => \M1[14]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\M1[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|Selector7~4_combout\,
	devoe => ww_devoe,
	o => \M1[15]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\M2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|ALT_INV_WideOr8~combout\,
	devoe => ww_devoe,
	o => \M2[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\M2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|ALT_INV_WideOr12~combout\,
	devoe => ww_devoe,
	o => \M2[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\M2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \right_display|Selector1~4_combout\,
	devoe => ww_devoe,
	o => \M2[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\M2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \right_display|Selector2~4_combout\,
	devoe => ww_devoe,
	o => \M2[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\M2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|ALT_INV_WideOr14~combout\,
	devoe => ww_devoe,
	o => \M2[4]~output_o\);

-- Location: IOOBUF_X39_Y0_N23
\M2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \right_display|Selector4~4_combout\,
	devoe => ww_devoe,
	o => \M2[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\M2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|ALT_INV_WideOr10~combout\,
	devoe => ww_devoe,
	o => \M2[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\M2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|ALT_INV_WideOr4~combout\,
	devoe => ww_devoe,
	o => \M2[7]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\M2[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|ALT_INV_WideOr0~combout\,
	devoe => ww_devoe,
	o => \M2[8]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\M2[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \right_display|Selector3~4_combout\,
	devoe => ww_devoe,
	o => \M2[9]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\M2[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \right_display|Selector5~4_combout\,
	devoe => ww_devoe,
	o => \M2[10]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\M2[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|ALT_INV_WideOr6~combout\,
	devoe => ww_devoe,
	o => \M2[11]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\M2[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \right_display|Selector0~4_combout\,
	devoe => ww_devoe,
	o => \M2[12]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\M2[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_display|ALT_INV_WideOr2~combout\,
	devoe => ww_devoe,
	o => \M2[13]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\M2[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \right_display|Selector6~4_combout\,
	devoe => ww_devoe,
	o => \M2[14]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\M2[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \right_display|Selector7~4_combout\,
	devoe => ww_devoe,
	o => \M2[15]~output_o\);

-- Location: IOIBUF_X41_Y15_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G7
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: LCCOMB_X36_Y15_N4
\timer_for_speed|temp[0]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[0]~28_combout\ = \timer_for_speed|temp\(0) $ (VCC)
-- \timer_for_speed|temp[0]~29\ = CARRY(\timer_for_speed|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_for_speed|temp\(0),
	datad => VCC,
	combout => \timer_for_speed|temp[0]~28_combout\,
	cout => \timer_for_speed|temp[0]~29\);

-- Location: LCCOMB_X36_Y15_N2
\timer_for_speed|temp[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[0]~feeder_combout\ = \timer_for_speed|temp[0]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_for_speed|temp[0]~28_combout\,
	combout => \timer_for_speed|temp[0]~feeder_combout\);

-- Location: IOIBUF_X0_Y26_N1
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X36_Y15_N3
\timer_for_speed|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_for_speed|temp[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(0));

-- Location: LCCOMB_X36_Y15_N6
\timer_for_speed|temp[1]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[1]~30_combout\ = (\timer_for_speed|temp\(1) & (!\timer_for_speed|temp[0]~29\)) # (!\timer_for_speed|temp\(1) & ((\timer_for_speed|temp[0]~29\) # (GND)))
-- \timer_for_speed|temp[1]~31\ = CARRY((!\timer_for_speed|temp[0]~29\) # (!\timer_for_speed|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_for_speed|temp\(1),
	datad => VCC,
	cin => \timer_for_speed|temp[0]~29\,
	combout => \timer_for_speed|temp[1]~30_combout\,
	cout => \timer_for_speed|temp[1]~31\);

-- Location: FF_X37_Y15_N5
\timer_for_speed|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \timer_for_speed|temp[1]~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(1));

-- Location: LCCOMB_X36_Y15_N8
\timer_for_speed|temp[2]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[2]~32_combout\ = (\timer_for_speed|temp\(2) & (\timer_for_speed|temp[1]~31\ $ (GND))) # (!\timer_for_speed|temp\(2) & (!\timer_for_speed|temp[1]~31\ & VCC))
-- \timer_for_speed|temp[2]~33\ = CARRY((\timer_for_speed|temp\(2) & !\timer_for_speed|temp[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_for_speed|temp\(2),
	datad => VCC,
	cin => \timer_for_speed|temp[1]~31\,
	combout => \timer_for_speed|temp[2]~32_combout\,
	cout => \timer_for_speed|temp[2]~33\);

-- Location: FF_X36_Y15_N9
\timer_for_speed|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[2]~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(2));

-- Location: LCCOMB_X36_Y15_N10
\timer_for_speed|temp[3]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[3]~34_combout\ = (\timer_for_speed|temp\(3) & (!\timer_for_speed|temp[2]~33\)) # (!\timer_for_speed|temp\(3) & ((\timer_for_speed|temp[2]~33\) # (GND)))
-- \timer_for_speed|temp[3]~35\ = CARRY((!\timer_for_speed|temp[2]~33\) # (!\timer_for_speed|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_for_speed|temp\(3),
	datad => VCC,
	cin => \timer_for_speed|temp[2]~33\,
	combout => \timer_for_speed|temp[3]~34_combout\,
	cout => \timer_for_speed|temp[3]~35\);

-- Location: FF_X36_Y15_N11
\timer_for_speed|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[3]~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(3));

-- Location: LCCOMB_X36_Y15_N12
\timer_for_speed|temp[4]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[4]~36_combout\ = (\timer_for_speed|temp\(4) & (\timer_for_speed|temp[3]~35\ $ (GND))) # (!\timer_for_speed|temp\(4) & (!\timer_for_speed|temp[3]~35\ & VCC))
-- \timer_for_speed|temp[4]~37\ = CARRY((\timer_for_speed|temp\(4) & !\timer_for_speed|temp[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_for_speed|temp\(4),
	datad => VCC,
	cin => \timer_for_speed|temp[3]~35\,
	combout => \timer_for_speed|temp[4]~36_combout\,
	cout => \timer_for_speed|temp[4]~37\);

-- Location: FF_X36_Y15_N13
\timer_for_speed|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[4]~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(4));

-- Location: LCCOMB_X36_Y15_N14
\timer_for_speed|temp[5]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[5]~38_combout\ = (\timer_for_speed|temp\(5) & (!\timer_for_speed|temp[4]~37\)) # (!\timer_for_speed|temp\(5) & ((\timer_for_speed|temp[4]~37\) # (GND)))
-- \timer_for_speed|temp[5]~39\ = CARRY((!\timer_for_speed|temp[4]~37\) # (!\timer_for_speed|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_for_speed|temp\(5),
	datad => VCC,
	cin => \timer_for_speed|temp[4]~37\,
	combout => \timer_for_speed|temp[5]~38_combout\,
	cout => \timer_for_speed|temp[5]~39\);

-- Location: FF_X36_Y15_N15
\timer_for_speed|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[5]~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(5));

-- Location: LCCOMB_X36_Y15_N16
\timer_for_speed|temp[6]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[6]~40_combout\ = (\timer_for_speed|temp\(6) & (\timer_for_speed|temp[5]~39\ $ (GND))) # (!\timer_for_speed|temp\(6) & (!\timer_for_speed|temp[5]~39\ & VCC))
-- \timer_for_speed|temp[6]~41\ = CARRY((\timer_for_speed|temp\(6) & !\timer_for_speed|temp[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_for_speed|temp\(6),
	datad => VCC,
	cin => \timer_for_speed|temp[5]~39\,
	combout => \timer_for_speed|temp[6]~40_combout\,
	cout => \timer_for_speed|temp[6]~41\);

-- Location: FF_X36_Y15_N17
\timer_for_speed|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[6]~40_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(6));

-- Location: LCCOMB_X36_Y15_N18
\timer_for_speed|temp[7]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[7]~42_combout\ = (\timer_for_speed|temp\(7) & (!\timer_for_speed|temp[6]~41\)) # (!\timer_for_speed|temp\(7) & ((\timer_for_speed|temp[6]~41\) # (GND)))
-- \timer_for_speed|temp[7]~43\ = CARRY((!\timer_for_speed|temp[6]~41\) # (!\timer_for_speed|temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_for_speed|temp\(7),
	datad => VCC,
	cin => \timer_for_speed|temp[6]~41\,
	combout => \timer_for_speed|temp[7]~42_combout\,
	cout => \timer_for_speed|temp[7]~43\);

-- Location: FF_X36_Y15_N19
\timer_for_speed|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[7]~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(7));

-- Location: LCCOMB_X36_Y15_N20
\timer_for_speed|temp[8]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[8]~44_combout\ = (\timer_for_speed|temp\(8) & (\timer_for_speed|temp[7]~43\ $ (GND))) # (!\timer_for_speed|temp\(8) & (!\timer_for_speed|temp[7]~43\ & VCC))
-- \timer_for_speed|temp[8]~45\ = CARRY((\timer_for_speed|temp\(8) & !\timer_for_speed|temp[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_for_speed|temp\(8),
	datad => VCC,
	cin => \timer_for_speed|temp[7]~43\,
	combout => \timer_for_speed|temp[8]~44_combout\,
	cout => \timer_for_speed|temp[8]~45\);

-- Location: FF_X36_Y15_N21
\timer_for_speed|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[8]~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(8));

-- Location: LCCOMB_X36_Y15_N22
\timer_for_speed|temp[9]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[9]~46_combout\ = (\timer_for_speed|temp\(9) & (!\timer_for_speed|temp[8]~45\)) # (!\timer_for_speed|temp\(9) & ((\timer_for_speed|temp[8]~45\) # (GND)))
-- \timer_for_speed|temp[9]~47\ = CARRY((!\timer_for_speed|temp[8]~45\) # (!\timer_for_speed|temp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_for_speed|temp\(9),
	datad => VCC,
	cin => \timer_for_speed|temp[8]~45\,
	combout => \timer_for_speed|temp[9]~46_combout\,
	cout => \timer_for_speed|temp[9]~47\);

-- Location: FF_X36_Y15_N23
\timer_for_speed|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[9]~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(9));

-- Location: LCCOMB_X36_Y15_N24
\timer_for_speed|temp[10]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[10]~48_combout\ = (\timer_for_speed|temp\(10) & (\timer_for_speed|temp[9]~47\ $ (GND))) # (!\timer_for_speed|temp\(10) & (!\timer_for_speed|temp[9]~47\ & VCC))
-- \timer_for_speed|temp[10]~49\ = CARRY((\timer_for_speed|temp\(10) & !\timer_for_speed|temp[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_for_speed|temp\(10),
	datad => VCC,
	cin => \timer_for_speed|temp[9]~47\,
	combout => \timer_for_speed|temp[10]~48_combout\,
	cout => \timer_for_speed|temp[10]~49\);

-- Location: FF_X36_Y15_N25
\timer_for_speed|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[10]~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(10));

-- Location: LCCOMB_X36_Y15_N26
\timer_for_speed|temp[11]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[11]~50_combout\ = (\timer_for_speed|temp\(11) & (!\timer_for_speed|temp[10]~49\)) # (!\timer_for_speed|temp\(11) & ((\timer_for_speed|temp[10]~49\) # (GND)))
-- \timer_for_speed|temp[11]~51\ = CARRY((!\timer_for_speed|temp[10]~49\) # (!\timer_for_speed|temp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_for_speed|temp\(11),
	datad => VCC,
	cin => \timer_for_speed|temp[10]~49\,
	combout => \timer_for_speed|temp[11]~50_combout\,
	cout => \timer_for_speed|temp[11]~51\);

-- Location: FF_X36_Y15_N27
\timer_for_speed|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[11]~50_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(11));

-- Location: LCCOMB_X36_Y15_N28
\timer_for_speed|temp[12]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[12]~52_combout\ = (\timer_for_speed|temp\(12) & (\timer_for_speed|temp[11]~51\ $ (GND))) # (!\timer_for_speed|temp\(12) & (!\timer_for_speed|temp[11]~51\ & VCC))
-- \timer_for_speed|temp[12]~53\ = CARRY((\timer_for_speed|temp\(12) & !\timer_for_speed|temp[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_for_speed|temp\(12),
	datad => VCC,
	cin => \timer_for_speed|temp[11]~51\,
	combout => \timer_for_speed|temp[12]~52_combout\,
	cout => \timer_for_speed|temp[12]~53\);

-- Location: FF_X36_Y15_N29
\timer_for_speed|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[12]~52_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(12));

-- Location: LCCOMB_X36_Y15_N30
\timer_for_speed|temp[13]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[13]~54_combout\ = (\timer_for_speed|temp\(13) & (!\timer_for_speed|temp[12]~53\)) # (!\timer_for_speed|temp\(13) & ((\timer_for_speed|temp[12]~53\) # (GND)))
-- \timer_for_speed|temp[13]~55\ = CARRY((!\timer_for_speed|temp[12]~53\) # (!\timer_for_speed|temp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_for_speed|temp\(13),
	datad => VCC,
	cin => \timer_for_speed|temp[12]~53\,
	combout => \timer_for_speed|temp[13]~54_combout\,
	cout => \timer_for_speed|temp[13]~55\);

-- Location: FF_X36_Y15_N31
\timer_for_speed|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[13]~54_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(13));

-- Location: LCCOMB_X36_Y14_N0
\timer_for_speed|temp[14]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[14]~56_combout\ = (\timer_for_speed|temp\(14) & (\timer_for_speed|temp[13]~55\ $ (GND))) # (!\timer_for_speed|temp\(14) & (!\timer_for_speed|temp[13]~55\ & VCC))
-- \timer_for_speed|temp[14]~57\ = CARRY((\timer_for_speed|temp\(14) & !\timer_for_speed|temp[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_for_speed|temp\(14),
	datad => VCC,
	cin => \timer_for_speed|temp[13]~55\,
	combout => \timer_for_speed|temp[14]~56_combout\,
	cout => \timer_for_speed|temp[14]~57\);

-- Location: FF_X36_Y14_N1
\timer_for_speed|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[14]~56_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(14));

-- Location: LCCOMB_X36_Y14_N2
\timer_for_speed|temp[15]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[15]~58_combout\ = (\timer_for_speed|temp\(15) & (!\timer_for_speed|temp[14]~57\)) # (!\timer_for_speed|temp\(15) & ((\timer_for_speed|temp[14]~57\) # (GND)))
-- \timer_for_speed|temp[15]~59\ = CARRY((!\timer_for_speed|temp[14]~57\) # (!\timer_for_speed|temp\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_for_speed|temp\(15),
	datad => VCC,
	cin => \timer_for_speed|temp[14]~57\,
	combout => \timer_for_speed|temp[15]~58_combout\,
	cout => \timer_for_speed|temp[15]~59\);

-- Location: FF_X37_Y15_N9
\timer_for_speed|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \timer_for_speed|temp[15]~58_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(15));

-- Location: LCCOMB_X36_Y14_N4
\timer_for_speed|temp[16]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[16]~60_combout\ = (\timer_for_speed|temp\(16) & (\timer_for_speed|temp[15]~59\ $ (GND))) # (!\timer_for_speed|temp\(16) & (!\timer_for_speed|temp[15]~59\ & VCC))
-- \timer_for_speed|temp[16]~61\ = CARRY((\timer_for_speed|temp\(16) & !\timer_for_speed|temp[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_for_speed|temp\(16),
	datad => VCC,
	cin => \timer_for_speed|temp[15]~59\,
	combout => \timer_for_speed|temp[16]~60_combout\,
	cout => \timer_for_speed|temp[16]~61\);

-- Location: FF_X36_Y14_N5
\timer_for_speed|temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[16]~60_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(16));

-- Location: LCCOMB_X36_Y14_N6
\timer_for_speed|temp[17]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[17]~62_combout\ = (\timer_for_speed|temp\(17) & (!\timer_for_speed|temp[16]~61\)) # (!\timer_for_speed|temp\(17) & ((\timer_for_speed|temp[16]~61\) # (GND)))
-- \timer_for_speed|temp[17]~63\ = CARRY((!\timer_for_speed|temp[16]~61\) # (!\timer_for_speed|temp\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_for_speed|temp\(17),
	datad => VCC,
	cin => \timer_for_speed|temp[16]~61\,
	combout => \timer_for_speed|temp[17]~62_combout\,
	cout => \timer_for_speed|temp[17]~63\);

-- Location: FF_X36_Y14_N7
\timer_for_speed|temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[17]~62_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(17));

-- Location: LCCOMB_X36_Y14_N8
\timer_for_speed|temp[18]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[18]~64_combout\ = (\timer_for_speed|temp\(18) & (\timer_for_speed|temp[17]~63\ $ (GND))) # (!\timer_for_speed|temp\(18) & (!\timer_for_speed|temp[17]~63\ & VCC))
-- \timer_for_speed|temp[18]~65\ = CARRY((\timer_for_speed|temp\(18) & !\timer_for_speed|temp[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_for_speed|temp\(18),
	datad => VCC,
	cin => \timer_for_speed|temp[17]~63\,
	combout => \timer_for_speed|temp[18]~64_combout\,
	cout => \timer_for_speed|temp[18]~65\);

-- Location: FF_X36_Y14_N9
\timer_for_speed|temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[18]~64_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(18));

-- Location: LCCOMB_X36_Y14_N10
\timer_for_speed|temp[19]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[19]~66_combout\ = (\timer_for_speed|temp\(19) & (!\timer_for_speed|temp[18]~65\)) # (!\timer_for_speed|temp\(19) & ((\timer_for_speed|temp[18]~65\) # (GND)))
-- \timer_for_speed|temp[19]~67\ = CARRY((!\timer_for_speed|temp[18]~65\) # (!\timer_for_speed|temp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_for_speed|temp\(19),
	datad => VCC,
	cin => \timer_for_speed|temp[18]~65\,
	combout => \timer_for_speed|temp[19]~66_combout\,
	cout => \timer_for_speed|temp[19]~67\);

-- Location: FF_X36_Y14_N11
\timer_for_speed|temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[19]~66_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(19));

-- Location: LCCOMB_X35_Y14_N0
\timer_for_speed|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|Equal0~5_combout\ = (!\timer_for_speed|temp\(17) & (!\timer_for_speed|temp\(19) & (\timer_for_speed|temp\(18) & \timer_for_speed|temp\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_for_speed|temp\(17),
	datab => \timer_for_speed|temp\(19),
	datac => \timer_for_speed|temp\(18),
	datad => \timer_for_speed|temp\(16),
	combout => \timer_for_speed|Equal0~5_combout\);

-- Location: LCCOMB_X36_Y14_N12
\timer_for_speed|temp[20]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[20]~68_combout\ = (\timer_for_speed|temp\(20) & (\timer_for_speed|temp[19]~67\ $ (GND))) # (!\timer_for_speed|temp\(20) & (!\timer_for_speed|temp[19]~67\ & VCC))
-- \timer_for_speed|temp[20]~69\ = CARRY((\timer_for_speed|temp\(20) & !\timer_for_speed|temp[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_for_speed|temp\(20),
	datad => VCC,
	cin => \timer_for_speed|temp[19]~67\,
	combout => \timer_for_speed|temp[20]~68_combout\,
	cout => \timer_for_speed|temp[20]~69\);

-- Location: FF_X36_Y14_N13
\timer_for_speed|temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[20]~68_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(20));

-- Location: LCCOMB_X36_Y14_N14
\timer_for_speed|temp[21]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[21]~70_combout\ = (\timer_for_speed|temp\(21) & (!\timer_for_speed|temp[20]~69\)) # (!\timer_for_speed|temp\(21) & ((\timer_for_speed|temp[20]~69\) # (GND)))
-- \timer_for_speed|temp[21]~71\ = CARRY((!\timer_for_speed|temp[20]~69\) # (!\timer_for_speed|temp\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_for_speed|temp\(21),
	datad => VCC,
	cin => \timer_for_speed|temp[20]~69\,
	combout => \timer_for_speed|temp[21]~70_combout\,
	cout => \timer_for_speed|temp[21]~71\);

-- Location: FF_X36_Y14_N15
\timer_for_speed|temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[21]~70_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(21));

-- Location: LCCOMB_X36_Y14_N16
\timer_for_speed|temp[22]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[22]~72_combout\ = (\timer_for_speed|temp\(22) & (\timer_for_speed|temp[21]~71\ $ (GND))) # (!\timer_for_speed|temp\(22) & (!\timer_for_speed|temp[21]~71\ & VCC))
-- \timer_for_speed|temp[22]~73\ = CARRY((\timer_for_speed|temp\(22) & !\timer_for_speed|temp[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_for_speed|temp\(22),
	datad => VCC,
	cin => \timer_for_speed|temp[21]~71\,
	combout => \timer_for_speed|temp[22]~72_combout\,
	cout => \timer_for_speed|temp[22]~73\);

-- Location: FF_X36_Y14_N17
\timer_for_speed|temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[22]~72_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(22));

-- Location: LCCOMB_X36_Y14_N18
\timer_for_speed|temp[23]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[23]~74_combout\ = (\timer_for_speed|temp\(23) & (!\timer_for_speed|temp[22]~73\)) # (!\timer_for_speed|temp\(23) & ((\timer_for_speed|temp[22]~73\) # (GND)))
-- \timer_for_speed|temp[23]~75\ = CARRY((!\timer_for_speed|temp[22]~73\) # (!\timer_for_speed|temp\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_for_speed|temp\(23),
	datad => VCC,
	cin => \timer_for_speed|temp[22]~73\,
	combout => \timer_for_speed|temp[23]~74_combout\,
	cout => \timer_for_speed|temp[23]~75\);

-- Location: FF_X36_Y14_N19
\timer_for_speed|temp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[23]~74_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(23));

-- Location: LCCOMB_X36_Y14_N20
\timer_for_speed|temp[24]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[24]~76_combout\ = (\timer_for_speed|temp\(24) & (\timer_for_speed|temp[23]~75\ $ (GND))) # (!\timer_for_speed|temp\(24) & (!\timer_for_speed|temp[23]~75\ & VCC))
-- \timer_for_speed|temp[24]~77\ = CARRY((\timer_for_speed|temp\(24) & !\timer_for_speed|temp[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_for_speed|temp\(24),
	datad => VCC,
	cin => \timer_for_speed|temp[23]~75\,
	combout => \timer_for_speed|temp[24]~76_combout\,
	cout => \timer_for_speed|temp[24]~77\);

-- Location: FF_X36_Y14_N21
\timer_for_speed|temp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[24]~76_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(24));

-- Location: LCCOMB_X36_Y14_N22
\timer_for_speed|temp[25]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[25]~78_combout\ = (\timer_for_speed|temp\(25) & (!\timer_for_speed|temp[24]~77\)) # (!\timer_for_speed|temp\(25) & ((\timer_for_speed|temp[24]~77\) # (GND)))
-- \timer_for_speed|temp[25]~79\ = CARRY((!\timer_for_speed|temp[24]~77\) # (!\timer_for_speed|temp\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_for_speed|temp\(25),
	datad => VCC,
	cin => \timer_for_speed|temp[24]~77\,
	combout => \timer_for_speed|temp[25]~78_combout\,
	cout => \timer_for_speed|temp[25]~79\);

-- Location: FF_X36_Y14_N23
\timer_for_speed|temp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[25]~78_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(25));

-- Location: LCCOMB_X36_Y14_N24
\timer_for_speed|temp[26]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[26]~80_combout\ = (\timer_for_speed|temp\(26) & (\timer_for_speed|temp[25]~79\ $ (GND))) # (!\timer_for_speed|temp\(26) & (!\timer_for_speed|temp[25]~79\ & VCC))
-- \timer_for_speed|temp[26]~81\ = CARRY((\timer_for_speed|temp\(26) & !\timer_for_speed|temp[25]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_for_speed|temp\(26),
	datad => VCC,
	cin => \timer_for_speed|temp[25]~79\,
	combout => \timer_for_speed|temp[26]~80_combout\,
	cout => \timer_for_speed|temp[26]~81\);

-- Location: FF_X36_Y14_N25
\timer_for_speed|temp[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[26]~80_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(26));

-- Location: LCCOMB_X36_Y14_N26
\timer_for_speed|temp[27]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|temp[27]~82_combout\ = \timer_for_speed|temp\(27) $ (\timer_for_speed|temp[26]~81\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_for_speed|temp\(27),
	cin => \timer_for_speed|temp[26]~81\,
	combout => \timer_for_speed|temp[27]~82_combout\);

-- Location: FF_X36_Y14_N27
\timer_for_speed|temp[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_for_speed|temp[27]~82_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_for_speed|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_for_speed|temp\(27));

-- Location: LCCOMB_X36_Y14_N30
\timer_for_speed|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|Equal0~7_combout\ = (!\timer_for_speed|temp\(25) & (\timer_for_speed|temp\(26) & (!\timer_for_speed|temp\(27) & \timer_for_speed|temp\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_for_speed|temp\(25),
	datab => \timer_for_speed|temp\(26),
	datac => \timer_for_speed|temp\(27),
	datad => \timer_for_speed|temp\(24),
	combout => \timer_for_speed|Equal0~7_combout\);

-- Location: LCCOMB_X36_Y14_N28
\timer_for_speed|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|Equal0~6_combout\ = (\timer_for_speed|temp\(20) & (\timer_for_speed|temp\(22) & (\timer_for_speed|temp\(21) & \timer_for_speed|temp\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_for_speed|temp\(20),
	datab => \timer_for_speed|temp\(22),
	datac => \timer_for_speed|temp\(21),
	datad => \timer_for_speed|temp\(23),
	combout => \timer_for_speed|Equal0~6_combout\);

-- Location: LCCOMB_X37_Y15_N12
\timer_for_speed|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|Equal0~0_combout\ = (!\timer_for_speed|temp\(3) & (!\timer_for_speed|temp\(2) & (!\timer_for_speed|temp\(1) & !\timer_for_speed|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_for_speed|temp\(3),
	datab => \timer_for_speed|temp\(2),
	datac => \timer_for_speed|temp\(1),
	datad => \timer_for_speed|temp\(0),
	combout => \timer_for_speed|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y15_N16
\timer_for_speed|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|Equal0~2_combout\ = (!\timer_for_speed|temp\(11) & (!\timer_for_speed|temp\(10) & (\timer_for_speed|temp\(8) & !\timer_for_speed|temp\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_for_speed|temp\(11),
	datab => \timer_for_speed|temp\(10),
	datac => \timer_for_speed|temp\(8),
	datad => \timer_for_speed|temp\(9),
	combout => \timer_for_speed|Equal0~2_combout\);

-- Location: LCCOMB_X37_Y15_N30
\timer_for_speed|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|Equal0~1_combout\ = (!\timer_for_speed|temp\(4) & (!\timer_for_speed|temp\(5) & (!\timer_for_speed|temp\(6) & !\timer_for_speed|temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_for_speed|temp\(4),
	datab => \timer_for_speed|temp\(5),
	datac => \timer_for_speed|temp\(6),
	datad => \timer_for_speed|temp\(7),
	combout => \timer_for_speed|Equal0~1_combout\);

-- Location: LCCOMB_X37_Y15_N18
\timer_for_speed|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|Equal0~3_combout\ = (\timer_for_speed|temp\(13) & (\timer_for_speed|temp\(14) & (\timer_for_speed|temp\(15) & !\timer_for_speed|temp\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_for_speed|temp\(13),
	datab => \timer_for_speed|temp\(14),
	datac => \timer_for_speed|temp\(15),
	datad => \timer_for_speed|temp\(12),
	combout => \timer_for_speed|Equal0~3_combout\);

-- Location: LCCOMB_X37_Y15_N28
\timer_for_speed|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|Equal0~4_combout\ = (\timer_for_speed|Equal0~0_combout\ & (\timer_for_speed|Equal0~2_combout\ & (\timer_for_speed|Equal0~1_combout\ & \timer_for_speed|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_for_speed|Equal0~0_combout\,
	datab => \timer_for_speed|Equal0~2_combout\,
	datac => \timer_for_speed|Equal0~1_combout\,
	datad => \timer_for_speed|Equal0~3_combout\,
	combout => \timer_for_speed|Equal0~4_combout\);

-- Location: LCCOMB_X36_Y15_N0
\timer_for_speed|Equal0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_for_speed|Equal0~combout\ = LCELL((\timer_for_speed|Equal0~5_combout\ & (\timer_for_speed|Equal0~7_combout\ & (\timer_for_speed|Equal0~6_combout\ & \timer_for_speed|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_for_speed|Equal0~5_combout\,
	datab => \timer_for_speed|Equal0~7_combout\,
	datac => \timer_for_speed|Equal0~6_combout\,
	datad => \timer_for_speed|Equal0~4_combout\,
	combout => \timer_for_speed|Equal0~combout\);

-- Location: LCCOMB_X16_Y15_N12
\speed_up|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|Add0~0_combout\ = \speed_up|temp\(4) $ (VCC)
-- \speed_up|Add0~1\ = CARRY(\speed_up|temp\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \speed_up|temp\(4),
	datad => VCC,
	combout => \speed_up|Add0~0_combout\,
	cout => \speed_up|Add0~1\);

-- Location: LCCOMB_X16_Y14_N30
\speed_up|temp~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|temp~0_combout\ = (\speed_up|Add0~0_combout\ & ((\speed_up|Add0~38_combout\) # (!\speed_up|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \speed_up|LessThan0~5_combout\,
	datac => \speed_up|Add0~38_combout\,
	datad => \speed_up|Add0~0_combout\,
	combout => \speed_up|temp~0_combout\);

-- Location: LCCOMB_X22_Y18_N28
\ball_logic|tempY[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_logic|tempY[0]~2_combout\ = !\ball_logic|tempY\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ball_logic|tempY\(0),
	combout => \ball_logic|tempY[0]~2_combout\);

-- Location: LCCOMB_X22_Y18_N4
\ball_FSM|Selector5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector5~4_combout\ = (\ball_FSM|pr_state.right_up~q\ & (((\ball_logic|tempY\(2)) # (!\ball_logic|tempY\(1))) # (!\ball_logic|tempY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|pr_state.right_up~q\,
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_logic|tempY\(1),
	combout => \ball_FSM|Selector5~4_combout\);

-- Location: LCCOMB_X40_Y15_N8
\timer_raq|temp[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[0]~24_combout\ = \timer_raq|temp\(0) $ (VCC)
-- \timer_raq|temp[0]~25\ = CARRY(\timer_raq|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_raq|temp\(0),
	datad => VCC,
	combout => \timer_raq|temp[0]~24_combout\,
	cout => \timer_raq|temp[0]~25\);

-- Location: FF_X39_Y15_N31
\timer_raq|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer_raq|temp[0]~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(0));

-- Location: LCCOMB_X40_Y15_N10
\timer_raq|temp[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[1]~26_combout\ = (\timer_raq|temp\(1) & (!\timer_raq|temp[0]~25\)) # (!\timer_raq|temp\(1) & ((\timer_raq|temp[0]~25\) # (GND)))
-- \timer_raq|temp[1]~27\ = CARRY((!\timer_raq|temp[0]~25\) # (!\timer_raq|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_raq|temp\(1),
	datad => VCC,
	cin => \timer_raq|temp[0]~25\,
	combout => \timer_raq|temp[1]~26_combout\,
	cout => \timer_raq|temp[1]~27\);

-- Location: FF_X39_Y15_N17
\timer_raq|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \timer_raq|temp[1]~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(1));

-- Location: LCCOMB_X40_Y15_N12
\timer_raq|temp[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[2]~28_combout\ = (\timer_raq|temp\(2) & (\timer_raq|temp[1]~27\ $ (GND))) # (!\timer_raq|temp\(2) & (!\timer_raq|temp[1]~27\ & VCC))
-- \timer_raq|temp[2]~29\ = CARRY((\timer_raq|temp\(2) & !\timer_raq|temp[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_raq|temp\(2),
	datad => VCC,
	cin => \timer_raq|temp[1]~27\,
	combout => \timer_raq|temp[2]~28_combout\,
	cout => \timer_raq|temp[2]~29\);

-- Location: FF_X40_Y15_N13
\timer_raq|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[2]~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(2));

-- Location: LCCOMB_X40_Y15_N14
\timer_raq|temp[3]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[3]~30_combout\ = (\timer_raq|temp\(3) & (!\timer_raq|temp[2]~29\)) # (!\timer_raq|temp\(3) & ((\timer_raq|temp[2]~29\) # (GND)))
-- \timer_raq|temp[3]~31\ = CARRY((!\timer_raq|temp[2]~29\) # (!\timer_raq|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_raq|temp\(3),
	datad => VCC,
	cin => \timer_raq|temp[2]~29\,
	combout => \timer_raq|temp[3]~30_combout\,
	cout => \timer_raq|temp[3]~31\);

-- Location: FF_X40_Y15_N15
\timer_raq|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[3]~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(3));

-- Location: LCCOMB_X40_Y15_N16
\timer_raq|temp[4]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[4]~32_combout\ = (\timer_raq|temp\(4) & (\timer_raq|temp[3]~31\ $ (GND))) # (!\timer_raq|temp\(4) & (!\timer_raq|temp[3]~31\ & VCC))
-- \timer_raq|temp[4]~33\ = CARRY((\timer_raq|temp\(4) & !\timer_raq|temp[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_raq|temp\(4),
	datad => VCC,
	cin => \timer_raq|temp[3]~31\,
	combout => \timer_raq|temp[4]~32_combout\,
	cout => \timer_raq|temp[4]~33\);

-- Location: FF_X40_Y15_N17
\timer_raq|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[4]~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(4));

-- Location: LCCOMB_X40_Y15_N18
\timer_raq|temp[5]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[5]~34_combout\ = (\timer_raq|temp\(5) & (!\timer_raq|temp[4]~33\)) # (!\timer_raq|temp\(5) & ((\timer_raq|temp[4]~33\) # (GND)))
-- \timer_raq|temp[5]~35\ = CARRY((!\timer_raq|temp[4]~33\) # (!\timer_raq|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_raq|temp\(5),
	datad => VCC,
	cin => \timer_raq|temp[4]~33\,
	combout => \timer_raq|temp[5]~34_combout\,
	cout => \timer_raq|temp[5]~35\);

-- Location: FF_X40_Y15_N19
\timer_raq|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[5]~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(5));

-- Location: LCCOMB_X40_Y15_N20
\timer_raq|temp[6]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[6]~36_combout\ = (\timer_raq|temp\(6) & (\timer_raq|temp[5]~35\ $ (GND))) # (!\timer_raq|temp\(6) & (!\timer_raq|temp[5]~35\ & VCC))
-- \timer_raq|temp[6]~37\ = CARRY((\timer_raq|temp\(6) & !\timer_raq|temp[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_raq|temp\(6),
	datad => VCC,
	cin => \timer_raq|temp[5]~35\,
	combout => \timer_raq|temp[6]~36_combout\,
	cout => \timer_raq|temp[6]~37\);

-- Location: FF_X40_Y15_N21
\timer_raq|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[6]~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(6));

-- Location: LCCOMB_X40_Y15_N22
\timer_raq|temp[7]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[7]~38_combout\ = (\timer_raq|temp\(7) & (!\timer_raq|temp[6]~37\)) # (!\timer_raq|temp\(7) & ((\timer_raq|temp[6]~37\) # (GND)))
-- \timer_raq|temp[7]~39\ = CARRY((!\timer_raq|temp[6]~37\) # (!\timer_raq|temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_raq|temp\(7),
	datad => VCC,
	cin => \timer_raq|temp[6]~37\,
	combout => \timer_raq|temp[7]~38_combout\,
	cout => \timer_raq|temp[7]~39\);

-- Location: FF_X40_Y15_N23
\timer_raq|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[7]~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(7));

-- Location: LCCOMB_X40_Y15_N24
\timer_raq|temp[8]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[8]~40_combout\ = (\timer_raq|temp\(8) & (\timer_raq|temp[7]~39\ $ (GND))) # (!\timer_raq|temp\(8) & (!\timer_raq|temp[7]~39\ & VCC))
-- \timer_raq|temp[8]~41\ = CARRY((\timer_raq|temp\(8) & !\timer_raq|temp[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_raq|temp\(8),
	datad => VCC,
	cin => \timer_raq|temp[7]~39\,
	combout => \timer_raq|temp[8]~40_combout\,
	cout => \timer_raq|temp[8]~41\);

-- Location: FF_X40_Y15_N25
\timer_raq|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[8]~40_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(8));

-- Location: LCCOMB_X40_Y15_N26
\timer_raq|temp[9]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[9]~42_combout\ = (\timer_raq|temp\(9) & (!\timer_raq|temp[8]~41\)) # (!\timer_raq|temp\(9) & ((\timer_raq|temp[8]~41\) # (GND)))
-- \timer_raq|temp[9]~43\ = CARRY((!\timer_raq|temp[8]~41\) # (!\timer_raq|temp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_raq|temp\(9),
	datad => VCC,
	cin => \timer_raq|temp[8]~41\,
	combout => \timer_raq|temp[9]~42_combout\,
	cout => \timer_raq|temp[9]~43\);

-- Location: FF_X40_Y15_N27
\timer_raq|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[9]~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(9));

-- Location: LCCOMB_X40_Y15_N28
\timer_raq|temp[10]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[10]~44_combout\ = (\timer_raq|temp\(10) & (\timer_raq|temp[9]~43\ $ (GND))) # (!\timer_raq|temp\(10) & (!\timer_raq|temp[9]~43\ & VCC))
-- \timer_raq|temp[10]~45\ = CARRY((\timer_raq|temp\(10) & !\timer_raq|temp[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_raq|temp\(10),
	datad => VCC,
	cin => \timer_raq|temp[9]~43\,
	combout => \timer_raq|temp[10]~44_combout\,
	cout => \timer_raq|temp[10]~45\);

-- Location: FF_X40_Y15_N29
\timer_raq|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[10]~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(10));

-- Location: LCCOMB_X40_Y15_N30
\timer_raq|temp[11]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[11]~46_combout\ = (\timer_raq|temp\(11) & (!\timer_raq|temp[10]~45\)) # (!\timer_raq|temp\(11) & ((\timer_raq|temp[10]~45\) # (GND)))
-- \timer_raq|temp[11]~47\ = CARRY((!\timer_raq|temp[10]~45\) # (!\timer_raq|temp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_raq|temp\(11),
	datad => VCC,
	cin => \timer_raq|temp[10]~45\,
	combout => \timer_raq|temp[11]~46_combout\,
	cout => \timer_raq|temp[11]~47\);

-- Location: FF_X40_Y15_N31
\timer_raq|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[11]~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(11));

-- Location: LCCOMB_X40_Y14_N0
\timer_raq|temp[12]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[12]~48_combout\ = (\timer_raq|temp\(12) & (\timer_raq|temp[11]~47\ $ (GND))) # (!\timer_raq|temp\(12) & (!\timer_raq|temp[11]~47\ & VCC))
-- \timer_raq|temp[12]~49\ = CARRY((\timer_raq|temp\(12) & !\timer_raq|temp[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_raq|temp\(12),
	datad => VCC,
	cin => \timer_raq|temp[11]~47\,
	combout => \timer_raq|temp[12]~48_combout\,
	cout => \timer_raq|temp[12]~49\);

-- Location: FF_X40_Y14_N1
\timer_raq|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[12]~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(12));

-- Location: LCCOMB_X40_Y14_N2
\timer_raq|temp[13]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[13]~50_combout\ = (\timer_raq|temp\(13) & (!\timer_raq|temp[12]~49\)) # (!\timer_raq|temp\(13) & ((\timer_raq|temp[12]~49\) # (GND)))
-- \timer_raq|temp[13]~51\ = CARRY((!\timer_raq|temp[12]~49\) # (!\timer_raq|temp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_raq|temp\(13),
	datad => VCC,
	cin => \timer_raq|temp[12]~49\,
	combout => \timer_raq|temp[13]~50_combout\,
	cout => \timer_raq|temp[13]~51\);

-- Location: FF_X40_Y14_N3
\timer_raq|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[13]~50_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(13));

-- Location: LCCOMB_X40_Y14_N4
\timer_raq|temp[14]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[14]~52_combout\ = (\timer_raq|temp\(14) & (\timer_raq|temp[13]~51\ $ (GND))) # (!\timer_raq|temp\(14) & (!\timer_raq|temp[13]~51\ & VCC))
-- \timer_raq|temp[14]~53\ = CARRY((\timer_raq|temp\(14) & !\timer_raq|temp[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_raq|temp\(14),
	datad => VCC,
	cin => \timer_raq|temp[13]~51\,
	combout => \timer_raq|temp[14]~52_combout\,
	cout => \timer_raq|temp[14]~53\);

-- Location: FF_X40_Y14_N5
\timer_raq|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[14]~52_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(14));

-- Location: LCCOMB_X40_Y14_N6
\timer_raq|temp[15]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[15]~54_combout\ = (\timer_raq|temp\(15) & (!\timer_raq|temp[14]~53\)) # (!\timer_raq|temp\(15) & ((\timer_raq|temp[14]~53\) # (GND)))
-- \timer_raq|temp[15]~55\ = CARRY((!\timer_raq|temp[14]~53\) # (!\timer_raq|temp\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_raq|temp\(15),
	datad => VCC,
	cin => \timer_raq|temp[14]~53\,
	combout => \timer_raq|temp[15]~54_combout\,
	cout => \timer_raq|temp[15]~55\);

-- Location: FF_X40_Y14_N7
\timer_raq|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[15]~54_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(15));

-- Location: LCCOMB_X40_Y14_N8
\timer_raq|temp[16]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[16]~56_combout\ = (\timer_raq|temp\(16) & (\timer_raq|temp[15]~55\ $ (GND))) # (!\timer_raq|temp\(16) & (!\timer_raq|temp[15]~55\ & VCC))
-- \timer_raq|temp[16]~57\ = CARRY((\timer_raq|temp\(16) & !\timer_raq|temp[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_raq|temp\(16),
	datad => VCC,
	cin => \timer_raq|temp[15]~55\,
	combout => \timer_raq|temp[16]~56_combout\,
	cout => \timer_raq|temp[16]~57\);

-- Location: FF_X40_Y14_N9
\timer_raq|temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[16]~56_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(16));

-- Location: LCCOMB_X40_Y14_N10
\timer_raq|temp[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[17]~58_combout\ = (\timer_raq|temp\(17) & (!\timer_raq|temp[16]~57\)) # (!\timer_raq|temp\(17) & ((\timer_raq|temp[16]~57\) # (GND)))
-- \timer_raq|temp[17]~59\ = CARRY((!\timer_raq|temp[16]~57\) # (!\timer_raq|temp\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_raq|temp\(17),
	datad => VCC,
	cin => \timer_raq|temp[16]~57\,
	combout => \timer_raq|temp[17]~58_combout\,
	cout => \timer_raq|temp[17]~59\);

-- Location: FF_X40_Y14_N11
\timer_raq|temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[17]~58_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(17));

-- Location: LCCOMB_X40_Y14_N12
\timer_raq|temp[18]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[18]~60_combout\ = (\timer_raq|temp\(18) & (\timer_raq|temp[17]~59\ $ (GND))) # (!\timer_raq|temp\(18) & (!\timer_raq|temp[17]~59\ & VCC))
-- \timer_raq|temp[18]~61\ = CARRY((\timer_raq|temp\(18) & !\timer_raq|temp[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_raq|temp\(18),
	datad => VCC,
	cin => \timer_raq|temp[17]~59\,
	combout => \timer_raq|temp[18]~60_combout\,
	cout => \timer_raq|temp[18]~61\);

-- Location: FF_X40_Y14_N13
\timer_raq|temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[18]~60_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(18));

-- Location: LCCOMB_X40_Y14_N14
\timer_raq|temp[19]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[19]~62_combout\ = (\timer_raq|temp\(19) & (!\timer_raq|temp[18]~61\)) # (!\timer_raq|temp\(19) & ((\timer_raq|temp[18]~61\) # (GND)))
-- \timer_raq|temp[19]~63\ = CARRY((!\timer_raq|temp[18]~61\) # (!\timer_raq|temp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_raq|temp\(19),
	datad => VCC,
	cin => \timer_raq|temp[18]~61\,
	combout => \timer_raq|temp[19]~62_combout\,
	cout => \timer_raq|temp[19]~63\);

-- Location: FF_X40_Y14_N15
\timer_raq|temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[19]~62_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(19));

-- Location: LCCOMB_X40_Y14_N30
\timer_raq|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|Equal0~5_combout\ = (!\timer_raq|temp\(17) & (!\timer_raq|temp\(16) & (\timer_raq|temp\(19) & !\timer_raq|temp\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_raq|temp\(17),
	datab => \timer_raq|temp\(16),
	datac => \timer_raq|temp\(19),
	datad => \timer_raq|temp\(18),
	combout => \timer_raq|Equal0~5_combout\);

-- Location: LCCOMB_X40_Y14_N16
\timer_raq|temp[20]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[20]~64_combout\ = (\timer_raq|temp\(20) & (\timer_raq|temp[19]~63\ $ (GND))) # (!\timer_raq|temp\(20) & (!\timer_raq|temp[19]~63\ & VCC))
-- \timer_raq|temp[20]~65\ = CARRY((\timer_raq|temp\(20) & !\timer_raq|temp[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_raq|temp\(20),
	datad => VCC,
	cin => \timer_raq|temp[19]~63\,
	combout => \timer_raq|temp[20]~64_combout\,
	cout => \timer_raq|temp[20]~65\);

-- Location: FF_X40_Y14_N17
\timer_raq|temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[20]~64_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(20));

-- Location: LCCOMB_X40_Y14_N18
\timer_raq|temp[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[21]~66_combout\ = (\timer_raq|temp\(21) & (!\timer_raq|temp[20]~65\)) # (!\timer_raq|temp\(21) & ((\timer_raq|temp[20]~65\) # (GND)))
-- \timer_raq|temp[21]~67\ = CARRY((!\timer_raq|temp[20]~65\) # (!\timer_raq|temp\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_raq|temp\(21),
	datad => VCC,
	cin => \timer_raq|temp[20]~65\,
	combout => \timer_raq|temp[21]~66_combout\,
	cout => \timer_raq|temp[21]~67\);

-- Location: FF_X40_Y14_N19
\timer_raq|temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[21]~66_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(21));

-- Location: LCCOMB_X40_Y14_N20
\timer_raq|temp[22]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[22]~68_combout\ = (\timer_raq|temp\(22) & (\timer_raq|temp[21]~67\ $ (GND))) # (!\timer_raq|temp\(22) & (!\timer_raq|temp[21]~67\ & VCC))
-- \timer_raq|temp[22]~69\ = CARRY((\timer_raq|temp\(22) & !\timer_raq|temp[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_raq|temp\(22),
	datad => VCC,
	cin => \timer_raq|temp[21]~67\,
	combout => \timer_raq|temp[22]~68_combout\,
	cout => \timer_raq|temp[22]~69\);

-- Location: FF_X40_Y14_N21
\timer_raq|temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[22]~68_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(22));

-- Location: LCCOMB_X40_Y14_N22
\timer_raq|temp[23]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|temp[23]~70_combout\ = \timer_raq|temp\(23) $ (\timer_raq|temp[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_raq|temp\(23),
	cin => \timer_raq|temp[22]~69\,
	combout => \timer_raq|temp[23]~70_combout\);

-- Location: FF_X40_Y14_N23
\timer_raq|temp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_raq|temp[23]~70_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_raq|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_raq|temp\(23));

-- Location: LCCOMB_X40_Y14_N24
\timer_raq|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|Equal0~6_combout\ = (\timer_raq|temp\(23) & (\timer_raq|temp\(20) & (!\timer_raq|temp\(22) & !\timer_raq|temp\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_raq|temp\(23),
	datab => \timer_raq|temp\(20),
	datac => \timer_raq|temp\(22),
	datad => \timer_raq|temp\(21),
	combout => \timer_raq|Equal0~6_combout\);

-- Location: LCCOMB_X40_Y15_N6
\timer_raq|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|Equal0~1_combout\ = (\timer_raq|temp\(7) & (!\timer_raq|temp\(4) & (!\timer_raq|temp\(6) & !\timer_raq|temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_raq|temp\(7),
	datab => \timer_raq|temp\(4),
	datac => \timer_raq|temp\(6),
	datad => \timer_raq|temp\(5),
	combout => \timer_raq|Equal0~1_combout\);

-- Location: LCCOMB_X40_Y15_N4
\timer_raq|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|Equal0~2_combout\ = (!\timer_raq|temp\(11) & (!\timer_raq|temp\(8) & (\timer_raq|temp\(9) & \timer_raq|temp\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_raq|temp\(11),
	datab => \timer_raq|temp\(8),
	datac => \timer_raq|temp\(9),
	datad => \timer_raq|temp\(10),
	combout => \timer_raq|Equal0~2_combout\);

-- Location: LCCOMB_X39_Y15_N6
\timer_raq|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|Equal0~0_combout\ = (!\timer_raq|temp\(0) & (!\timer_raq|temp\(3) & (!\timer_raq|temp\(2) & !\timer_raq|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_raq|temp\(0),
	datab => \timer_raq|temp\(3),
	datac => \timer_raq|temp\(2),
	datad => \timer_raq|temp\(1),
	combout => \timer_raq|Equal0~0_combout\);

-- Location: LCCOMB_X40_Y14_N28
\timer_raq|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|Equal0~3_combout\ = (\timer_raq|temp\(15) & (!\timer_raq|temp\(13) & (!\timer_raq|temp\(14) & \timer_raq|temp\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_raq|temp\(15),
	datab => \timer_raq|temp\(13),
	datac => \timer_raq|temp\(14),
	datad => \timer_raq|temp\(12),
	combout => \timer_raq|Equal0~3_combout\);

-- Location: LCCOMB_X40_Y15_N2
\timer_raq|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|Equal0~4_combout\ = (\timer_raq|Equal0~1_combout\ & (\timer_raq|Equal0~2_combout\ & (\timer_raq|Equal0~0_combout\ & \timer_raq|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_raq|Equal0~1_combout\,
	datab => \timer_raq|Equal0~2_combout\,
	datac => \timer_raq|Equal0~0_combout\,
	datad => \timer_raq|Equal0~3_combout\,
	combout => \timer_raq|Equal0~4_combout\);

-- Location: LCCOMB_X40_Y15_N0
\timer_raq|Equal0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_raq|Equal0~combout\ = LCELL((\timer_raq|Equal0~5_combout\ & (\timer_raq|Equal0~6_combout\ & \timer_raq|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_raq|Equal0~5_combout\,
	datac => \timer_raq|Equal0~6_combout\,
	datad => \timer_raq|Equal0~4_combout\,
	combout => \timer_raq|Equal0~combout\);

-- Location: CLKCTRL_G9
\timer_raq|Equal0~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \timer_raq|Equal0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \timer_raq|Equal0~clkctrl_outclk\);

-- Location: IOIBUF_X37_Y0_N22
\B2_up~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2_up,
	o => \B2_up~input_o\);

-- Location: IOIBUF_X37_Y0_N15
\B2_dw~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2_dw,
	o => \B2_dw~input_o\);

-- Location: LCCOMB_X21_Y18_N24
\racket_logic|raq2_next[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \racket_logic|raq2_next[0]~0_combout\ = \B2_up~input_o\ $ (\B2_dw~input_o\ $ (\racket_logic|temp2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2_up~input_o\,
	datab => \B2_dw~input_o\,
	datac => \racket_logic|temp2\(0),
	combout => \racket_logic|raq2_next[0]~0_combout\);

-- Location: LCCOMB_X21_Y18_N4
\racket_logic|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \racket_logic|Add3~0_combout\ = (\racket_logic|temp2\(1) & ((\racket_logic|temp2\(0)) # ((!\B2_up~input_o\ & \B2_dw~input_o\)))) # (!\racket_logic|temp2\(1) & ((\B2_up~input_o\) # ((!\racket_logic|temp2\(0)) # (!\B2_dw~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2_up~input_o\,
	datab => \B2_dw~input_o\,
	datac => \racket_logic|temp2\(1),
	datad => \racket_logic|temp2\(0),
	combout => \racket_logic|Add3~0_combout\);

-- Location: IOIBUF_X7_Y0_N22
\B1_dw~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1_dw,
	o => \B1_dw~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\B1_up~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1_up,
	o => \B1_up~input_o\);

-- Location: LCCOMB_X23_Y18_N22
\racket_logic|temp1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \racket_logic|temp1~5_combout\ = \B1_dw~input_o\ $ (\B1_up~input_o\ $ (\racket_logic|temp1\(0) $ (\racket_logic|temp1[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1_dw~input_o\,
	datab => \B1_up~input_o\,
	datac => \racket_logic|temp1\(0),
	datad => \racket_logic|temp1[2]~2_combout\,
	combout => \racket_logic|temp1~5_combout\);

-- Location: FF_X23_Y18_N23
\racket_logic|temp1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_raq|Equal0~clkctrl_outclk\,
	d => \racket_logic|temp1~5_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \racket_logic|temp1\(0));

-- Location: LCCOMB_X23_Y15_N22
\racket_logic|raq1_next[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \racket_logic|raq1_next[2]~2_combout\ = \B1_up~input_o\ $ (\B1_dw~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1_up~input_o\,
	datad => \B1_dw~input_o\,
	combout => \racket_logic|raq1_next[2]~2_combout\);

-- Location: LCCOMB_X23_Y18_N8
\racket_logic|raq1_next[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \racket_logic|raq1_next[1]~3_combout\ = \racket_logic|temp1\(1) $ (((\B1_dw~input_o\ & ((\B1_up~input_o\) # (\racket_logic|temp1\(0)))) # (!\B1_dw~input_o\ & ((!\racket_logic|temp1\(0)) # (!\B1_up~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1_dw~input_o\,
	datab => \B1_up~input_o\,
	datac => \racket_logic|temp1\(0),
	datad => \racket_logic|temp1\(1),
	combout => \racket_logic|raq1_next[1]~3_combout\);

-- Location: LCCOMB_X23_Y18_N2
\racket_logic|temp1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \racket_logic|temp1~4_combout\ = (\racket_logic|temp1\(2) $ (((\racket_logic|raq1_next[2]~2_combout\ & !\racket_logic|Add1~0_combout\)))) # (!\racket_logic|raq1_next[1]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \racket_logic|temp1\(2),
	datab => \racket_logic|raq1_next[2]~2_combout\,
	datac => \racket_logic|raq1_next[1]~3_combout\,
	datad => \racket_logic|Add1~0_combout\,
	combout => \racket_logic|temp1~4_combout\);

-- Location: FF_X23_Y18_N3
\racket_logic|temp1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_raq|Equal0~clkctrl_outclk\,
	d => \racket_logic|temp1~4_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \racket_logic|temp1\(1));

-- Location: LCCOMB_X23_Y18_N10
\racket_logic|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \racket_logic|Add1~0_combout\ = (\racket_logic|temp1\(0) & ((\B1_dw~input_o\) # ((\racket_logic|temp1\(1)) # (!\B1_up~input_o\)))) # (!\racket_logic|temp1\(0) & (((!\B1_dw~input_o\ & \B1_up~input_o\)) # (!\racket_logic|temp1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1_dw~input_o\,
	datab => \B1_up~input_o\,
	datac => \racket_logic|temp1\(0),
	datad => \racket_logic|temp1\(1),
	combout => \racket_logic|Add1~0_combout\);

-- Location: LCCOMB_X23_Y18_N26
\racket_logic|raq1_next[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \racket_logic|raq1_next[2]~4_combout\ = \racket_logic|temp1\(2) $ (((!\racket_logic|Add1~0_combout\ & (\B1_dw~input_o\ $ (\B1_up~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1_dw~input_o\,
	datab => \B1_up~input_o\,
	datac => \racket_logic|temp1\(2),
	datad => \racket_logic|Add1~0_combout\,
	combout => \racket_logic|raq1_next[2]~4_combout\);

-- Location: LCCOMB_X23_Y18_N20
\racket_logic|temp1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \racket_logic|temp1~3_combout\ = (\racket_logic|temp1[2]~2_combout\ & (\racket_logic|temp1\(0) $ (((!\racket_logic|raq1_next[2]~2_combout\))))) # (!\racket_logic|temp1[2]~2_combout\ & (((\racket_logic|raq1_next[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \racket_logic|temp1\(0),
	datab => \racket_logic|temp1[2]~2_combout\,
	datac => \racket_logic|raq1_next[2]~4_combout\,
	datad => \racket_logic|raq1_next[2]~2_combout\,
	combout => \racket_logic|temp1~3_combout\);

-- Location: FF_X23_Y18_N21
\racket_logic|temp1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_raq|Equal0~clkctrl_outclk\,
	d => \racket_logic|temp1~3_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \racket_logic|temp1\(2));

-- Location: LCCOMB_X23_Y18_N28
\racket_logic|temp1[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \racket_logic|temp1[2]~2_combout\ = (\racket_logic|raq1_next[1]~3_combout\ & (\racket_logic|temp1\(2) $ (((\racket_logic|raq1_next[2]~2_combout\ & !\racket_logic|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \racket_logic|temp1\(2),
	datab => \racket_logic|raq1_next[2]~2_combout\,
	datac => \racket_logic|raq1_next[1]~3_combout\,
	datad => \racket_logic|Add1~0_combout\,
	combout => \racket_logic|temp1[2]~2_combout\);

-- Location: LCCOMB_X21_Y18_N12
\racket_logic|temp2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \racket_logic|temp2~1_combout\ = (\racket_logic|raq2_next[2]~2_combout\ & (((\racket_logic|temp1[2]~2_combout\) # (!\racket_logic|raq2_next[0]~0_combout\)) # (!\racket_logic|raq2_next[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \racket_logic|raq2_next[1]~1_combout\,
	datab => \racket_logic|raq2_next[0]~0_combout\,
	datac => \racket_logic|raq2_next[2]~2_combout\,
	datad => \racket_logic|temp1[2]~2_combout\,
	combout => \racket_logic|temp2~1_combout\);

-- Location: FF_X21_Y18_N13
\racket_logic|temp2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_raq|Equal0~clkctrl_outclk\,
	d => \racket_logic|temp2~1_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \racket_logic|temp2\(2));

-- Location: LCCOMB_X21_Y18_N30
\racket_logic|raq2_next[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \racket_logic|raq2_next[2]~2_combout\ = \racket_logic|temp2\(2) $ (((!\racket_logic|Add3~0_combout\ & (\B2_up~input_o\ $ (\B2_dw~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2_up~input_o\,
	datab => \B2_dw~input_o\,
	datac => \racket_logic|Add3~0_combout\,
	datad => \racket_logic|temp2\(2),
	combout => \racket_logic|raq2_next[2]~2_combout\);

-- Location: LCCOMB_X21_Y18_N6
\racket_logic|temp2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \racket_logic|temp2~0_combout\ = \racket_logic|raq2_next[0]~0_combout\ $ (((\racket_logic|raq2_next[1]~1_combout\ & (\racket_logic|raq2_next[2]~2_combout\ & !\racket_logic|temp1[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \racket_logic|raq2_next[1]~1_combout\,
	datab => \racket_logic|raq2_next[0]~0_combout\,
	datac => \racket_logic|raq2_next[2]~2_combout\,
	datad => \racket_logic|temp1[2]~2_combout\,
	combout => \racket_logic|temp2~0_combout\);

-- Location: FF_X21_Y18_N7
\racket_logic|temp2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_raq|Equal0~clkctrl_outclk\,
	d => \racket_logic|temp2~0_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \racket_logic|temp2\(0));

-- Location: LCCOMB_X21_Y18_N22
\racket_logic|raq2_next[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \racket_logic|raq2_next[1]~1_combout\ = \racket_logic|temp2\(1) $ (((\B2_up~input_o\ & ((\B2_dw~input_o\) # (\racket_logic|temp2\(0)))) # (!\B2_up~input_o\ & ((!\racket_logic|temp2\(0)) # (!\B2_dw~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2_up~input_o\,
	datab => \B2_dw~input_o\,
	datac => \racket_logic|temp2\(0),
	datad => \racket_logic|temp2\(1),
	combout => \racket_logic|raq2_next[1]~1_combout\);

-- Location: LCCOMB_X21_Y18_N14
\racket_logic|temp2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \racket_logic|temp2~2_combout\ = ((\racket_logic|raq2_next[2]~2_combout\ & !\racket_logic|temp1[2]~2_combout\)) # (!\racket_logic|raq2_next[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \racket_logic|raq2_next[1]~1_combout\,
	datac => \racket_logic|raq2_next[2]~2_combout\,
	datad => \racket_logic|temp1[2]~2_combout\,
	combout => \racket_logic|temp2~2_combout\);

-- Location: FF_X21_Y18_N15
\racket_logic|temp2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_raq|Equal0~clkctrl_outclk\,
	d => \racket_logic|temp2~2_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \racket_logic|temp2\(1));

-- Location: LCCOMB_X21_Y18_N2
\ball_FSM|process_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|process_1~6_combout\ = (\ball_logic|tempY\(1) & (\racket_logic|temp2\(1) & (\ball_logic|tempY\(2) $ (!\racket_logic|temp2\(2))))) # (!\ball_logic|tempY\(1) & (!\racket_logic|temp2\(1) & (\ball_logic|tempY\(2) $ (!\racket_logic|temp2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(2),
	datac => \racket_logic|temp2\(1),
	datad => \racket_logic|temp2\(2),
	combout => \ball_FSM|process_1~6_combout\);

-- Location: LCCOMB_X21_Y18_N8
\ball_FSM|Equal9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Equal9~1_combout\ = \ball_logic|tempY\(0) $ (!\racket_logic|temp2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball_logic|tempY\(0),
	datad => \racket_logic|temp2\(0),
	combout => \ball_FSM|Equal9~1_combout\);

-- Location: LCCOMB_X20_Y18_N26
\ball_FSM|process_1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|process_1~7_combout\ = (\ball_FSM|process_1~6_combout\ & (\ball_FSM|Equal10~13_combout\ & (!\ball_FSM|Equal9~1_combout\ & \timer_ball|Equal0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|process_1~6_combout\,
	datab => \ball_FSM|Equal10~13_combout\,
	datac => \ball_FSM|Equal9~1_combout\,
	datad => \timer_ball|Equal0~combout\,
	combout => \ball_FSM|process_1~7_combout\);

-- Location: LCCOMB_X21_Y18_N18
\ball_FSM|process_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|process_1~4_combout\ = (\ball_logic|tempY\(1) & (!\racket_logic|temp2\(1) & (\ball_logic|tempY\(2) $ (\racket_logic|temp2\(2))))) # (!\ball_logic|tempY\(1) & (\racket_logic|temp2\(1) & (\ball_logic|tempY\(2) $ (!\racket_logic|temp2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(2),
	datac => \racket_logic|temp2\(1),
	datad => \racket_logic|temp2\(2),
	combout => \ball_FSM|process_1~4_combout\);

-- Location: LCCOMB_X20_Y18_N12
\ball_FSM|process_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|process_1~5_combout\ = (\ball_FSM|Equal10~13_combout\ & (\ball_FSM|process_1~4_combout\ & (!\ball_FSM|Equal9~1_combout\ & \timer_ball|Equal0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|Equal10~13_combout\,
	datab => \ball_FSM|process_1~4_combout\,
	datac => \ball_FSM|Equal9~1_combout\,
	datad => \timer_ball|Equal0~combout\,
	combout => \ball_FSM|process_1~5_combout\);

-- Location: LCCOMB_X20_Y18_N0
\ball_FSM|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector3~1_combout\ = (!\ball_FSM|process_1~3_combout\ & (!\ball_FSM|Equal10~14_combout\ & (!\ball_FSM|process_1~7_combout\ & !\ball_FSM|process_1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|process_1~3_combout\,
	datab => \ball_FSM|Equal10~14_combout\,
	datac => \ball_FSM|process_1~7_combout\,
	datad => \ball_FSM|process_1~5_combout\,
	combout => \ball_FSM|Selector3~1_combout\);

-- Location: LCCOMB_X21_Y19_N30
\ball_FSM|Selector5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector5~6_combout\ = (\ball_FSM|pr_state.right_down~q\ & (!\ball_logic|tempY\(0) & (!\ball_logic|tempY\(1) & \ball_logic|tempY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|pr_state.right_down~q\,
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(1),
	datad => \ball_logic|tempY\(2),
	combout => \ball_FSM|Selector5~6_combout\);

-- Location: LCCOMB_X20_Y18_N16
\ball_logic|tempX[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_logic|tempX[1]~4_cout\ = CARRY(!\ball_logic|tempX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempX\(0),
	datad => VCC,
	cout => \ball_logic|tempX[1]~4_cout\);

-- Location: LCCOMB_X20_Y18_N18
\ball_logic|tempX[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_logic|tempX[1]~5_combout\ = (\ball_FSM|WideOr3~0_combout\ & ((\ball_logic|tempX\(1) & (!\ball_logic|tempX[1]~4_cout\)) # (!\ball_logic|tempX\(1) & ((\ball_logic|tempX[1]~4_cout\) # (GND))))) # (!\ball_FSM|WideOr3~0_combout\ & ((\ball_logic|tempX\(1) 
-- & (\ball_logic|tempX[1]~4_cout\ & VCC)) # (!\ball_logic|tempX\(1) & (!\ball_logic|tempX[1]~4_cout\))))
-- \ball_logic|tempX[1]~6\ = CARRY((\ball_FSM|WideOr3~0_combout\ & ((!\ball_logic|tempX[1]~4_cout\) # (!\ball_logic|tempX\(1)))) # (!\ball_FSM|WideOr3~0_combout\ & (!\ball_logic|tempX\(1) & !\ball_logic|tempX[1]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|WideOr3~0_combout\,
	datab => \ball_logic|tempX\(1),
	datad => VCC,
	cin => \ball_logic|tempX[1]~4_cout\,
	combout => \ball_logic|tempX[1]~5_combout\,
	cout => \ball_logic|tempX[1]~6\);

-- Location: LCCOMB_X20_Y18_N20
\ball_logic|tempX[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_logic|tempX[2]~8_combout\ = ((\ball_FSM|WideOr3~0_combout\ $ (\ball_logic|tempX\(2) $ (\ball_logic|tempX[1]~6\)))) # (GND)
-- \ball_logic|tempX[2]~9\ = CARRY((\ball_FSM|WideOr3~0_combout\ & (\ball_logic|tempX\(2) & !\ball_logic|tempX[1]~6\)) # (!\ball_FSM|WideOr3~0_combout\ & ((\ball_logic|tempX\(2)) # (!\ball_logic|tempX[1]~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|WideOr3~0_combout\,
	datab => \ball_logic|tempX\(2),
	datad => VCC,
	cin => \ball_logic|tempX[1]~6\,
	combout => \ball_logic|tempX[2]~8_combout\,
	cout => \ball_logic|tempX[2]~9\);

-- Location: LCCOMB_X17_Y18_N4
\ball_logic|tempX[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_logic|tempX[1]~7_combout\ = (\ball_FSM|pr_state.left_down~q\) # ((\ball_FSM|pr_state.left_up~q\) # ((\ball_FSM|pr_state.mov_left~q\) # (\ball_FSM|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|pr_state.left_down~q\,
	datab => \ball_FSM|pr_state.left_up~q\,
	datac => \ball_FSM|pr_state.mov_left~q\,
	datad => \ball_FSM|WideOr3~0_combout\,
	combout => \ball_logic|tempX[1]~7_combout\);

-- Location: FF_X20_Y18_N21
\ball_logic|tempX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ball|Equal0~clkctrl_outclk\,
	d => \ball_logic|tempX[2]~8_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	ena => \ball_logic|tempX[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_logic|tempX\(2));

-- Location: LCCOMB_X20_Y18_N22
\ball_logic|tempX[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_logic|tempX[3]~10_combout\ = \ball_logic|tempX\(3) $ (\ball_FSM|WideOr3~0_combout\ $ (!\ball_logic|tempX[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempX\(3),
	datab => \ball_FSM|WideOr3~0_combout\,
	cin => \ball_logic|tempX[2]~9\,
	combout => \ball_logic|tempX[3]~10_combout\);

-- Location: FF_X20_Y18_N23
\ball_logic|tempX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ball|Equal0~clkctrl_outclk\,
	d => \ball_logic|tempX[3]~10_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	ena => \ball_logic|tempX[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_logic|tempX\(3));

-- Location: LCCOMB_X22_Y18_N20
\ball_FSM|Equal10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Equal10~0_combout\ = (!\ball_logic|tempX\(3) & (!\ball_logic|tempX\(0) & (!\ball_logic|tempX\(1) & !\ball_logic|tempX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempX\(3),
	datab => \ball_logic|tempX\(0),
	datac => \ball_logic|tempX\(1),
	datad => \ball_logic|tempX\(2),
	combout => \ball_FSM|Equal10~0_combout\);

-- Location: LCCOMB_X23_Y18_N16
\ball_FSM|process_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|process_1~10_combout\ = (\ball_logic|tempY\(2) & (\racket_logic|temp1\(2) & (\ball_logic|tempY\(1) $ (!\racket_logic|temp1\(1))))) # (!\ball_logic|tempY\(2) & (!\racket_logic|temp1\(2) & (\ball_logic|tempY\(1) $ (!\racket_logic|temp1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \racket_logic|temp1\(1),
	datad => \racket_logic|temp1\(2),
	combout => \ball_FSM|process_1~10_combout\);

-- Location: LCCOMB_X22_Y18_N8
\ball_FSM|Selector8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector8~2_combout\ = (\ball_FSM|pr_state.left_down~q\ & ((\ball_logic|tempY\(0)) # ((\ball_logic|tempY\(1)) # (!\ball_logic|tempY\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|pr_state.left_down~q\,
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_logic|tempY\(1),
	combout => \ball_FSM|Selector8~2_combout\);

-- Location: LCCOMB_X22_Y18_N22
\ball_FSM|Selector7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector7~2_combout\ = (\ball_FSM|pr_state.left_up~q\ & (((\ball_logic|tempY\(2)) # (!\ball_logic|tempY\(0))) # (!\ball_logic|tempY\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|pr_state.left_up~q\,
	combout => \ball_FSM|Selector7~2_combout\);

-- Location: LCCOMB_X23_Y18_N4
\ball_FSM|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Equal3~0_combout\ = \racket_logic|temp1\(0) $ (!\ball_logic|tempY\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \racket_logic|temp1\(0),
	datad => \ball_logic|tempY\(0),
	combout => \ball_FSM|Equal3~0_combout\);

-- Location: LCCOMB_X22_Y18_N30
\ball_FSM|Selector5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector5~8_combout\ = (!\ball_FSM|Equal3~0_combout\ & ((\ball_FSM|pr_state.mov_left~q\) # ((\ball_FSM|Selector8~2_combout\) # (\ball_FSM|Selector7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|pr_state.mov_left~q\,
	datab => \ball_FSM|Selector8~2_combout\,
	datac => \ball_FSM|Selector7~2_combout\,
	datad => \ball_FSM|Equal3~0_combout\,
	combout => \ball_FSM|Selector5~8_combout\);

-- Location: LCCOMB_X22_Y18_N10
\ball_FSM|Selector5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector5~5_combout\ = (\ball_FSM|Equal10~0_combout\ & (\ball_FSM|process_1~10_combout\ & (\ball_FSM|Selector5~8_combout\ & \timer_ball|Equal0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|Equal10~0_combout\,
	datab => \ball_FSM|process_1~10_combout\,
	datac => \ball_FSM|Selector5~8_combout\,
	datad => \timer_ball|Equal0~combout\,
	combout => \ball_FSM|Selector5~5_combout\);

-- Location: LCCOMB_X20_Y18_N28
\ball_FSM|Selector5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector5~7_combout\ = (\ball_FSM|Selector5~6_combout\) # ((\ball_FSM|Selector5~5_combout\) # ((\ball_FSM|Selector5~4_combout\ & \ball_FSM|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|Selector5~4_combout\,
	datab => \ball_FSM|Selector3~1_combout\,
	datac => \ball_FSM|Selector5~6_combout\,
	datad => \ball_FSM|Selector5~5_combout\,
	combout => \ball_FSM|Selector5~7_combout\);

-- Location: FF_X20_Y18_N29
\ball_FSM|pr_state.right_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball_FSM|Selector5~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_FSM|pr_state.right_up~q\);

-- Location: LCCOMB_X22_Y18_N24
\ball_logic|tempY[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_logic|tempY[0]~0_combout\ = (\ball_FSM|pr_state.right_up~q\) # ((\ball_FSM|pr_state.right_down~q\) # ((\ball_FSM|pr_state.left_up~q\) # (\ball_FSM|pr_state.left_down~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|pr_state.right_up~q\,
	datab => \ball_FSM|pr_state.right_down~q\,
	datac => \ball_FSM|pr_state.left_up~q\,
	datad => \ball_FSM|pr_state.left_down~q\,
	combout => \ball_logic|tempY[0]~0_combout\);

-- Location: FF_X22_Y18_N29
\ball_logic|tempY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ball|Equal0~clkctrl_outclk\,
	d => \ball_logic|tempY[0]~2_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	ena => \ball_logic|tempY[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_logic|tempY\(0));

-- Location: LCCOMB_X22_Y18_N26
\ball_logic|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_logic|Add3~0_combout\ = (\ball_logic|tempY\(0) & ((\ball_FSM|pr_state.left_down~q\) # ((\ball_FSM|pr_state.right_down~q\) # (!\ball_logic|tempY\(1))))) # (!\ball_logic|tempY\(0) & ((\ball_logic|tempY\(1)) # ((!\ball_FSM|pr_state.left_down~q\ & 
-- !\ball_FSM|pr_state.right_down~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|pr_state.left_down~q\,
	datab => \ball_logic|tempY\(0),
	datac => \ball_FSM|pr_state.right_down~q\,
	datad => \ball_logic|tempY\(1),
	combout => \ball_logic|Add3~0_combout\);

-- Location: LCCOMB_X22_Y18_N14
\ball_logic|Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_logic|Add3~1_combout\ = \ball_logic|Add3~0_combout\ $ (!\ball_logic|tempY\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball_logic|Add3~0_combout\,
	datac => \ball_logic|tempY\(2),
	combout => \ball_logic|Add3~1_combout\);

-- Location: FF_X22_Y18_N15
\ball_logic|tempY[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ball|Equal0~clkctrl_outclk\,
	d => \ball_logic|Add3~1_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	ena => \ball_logic|tempY[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_logic|tempY\(2));

-- Location: LCCOMB_X22_Y18_N6
\ball_FSM|Selector7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector7~3_combout\ = (\ball_FSM|pr_state.left_down~q\ & (\ball_logic|tempY\(2) & (!\ball_logic|tempY\(1) & !\ball_logic|tempY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|pr_state.left_down~q\,
	datab => \ball_logic|tempY\(2),
	datac => \ball_logic|tempY\(1),
	datad => \ball_logic|tempY\(0),
	combout => \ball_FSM|Selector7~3_combout\);

-- Location: IOIBUF_X0_Y25_N1
\start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X23_Y18_N18
\ball_FSM|process_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|process_1~8_combout\ = (\ball_logic|tempY\(0) & (\racket_logic|temp1\(0) & (\ball_logic|tempY\(1) $ (\racket_logic|temp1\(1))))) # (!\ball_logic|tempY\(0) & (!\racket_logic|temp1\(0) & (\ball_logic|tempY\(1) $ (!\racket_logic|temp1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \racket_logic|temp1\(0),
	datad => \racket_logic|temp1\(1),
	combout => \ball_FSM|process_1~8_combout\);

-- Location: LCCOMB_X20_Y18_N2
\ball_FSM|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Equal3~1_combout\ = \ball_logic|tempY\(2) $ (\racket_logic|temp1\(2) $ (((\racket_logic|temp1\(0) & !\racket_logic|temp1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \racket_logic|temp1\(0),
	datab => \ball_logic|tempY\(2),
	datac => \racket_logic|temp1\(1),
	datad => \racket_logic|temp1\(2),
	combout => \ball_FSM|Equal3~1_combout\);

-- Location: LCCOMB_X20_Y18_N4
\ball_FSM|process_1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|process_1~9_combout\ = (\ball_FSM|process_1~8_combout\ & (\timer_ball|Equal0~combout\ & (\ball_FSM|Equal10~0_combout\ & !\ball_FSM|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|process_1~8_combout\,
	datab => \timer_ball|Equal0~combout\,
	datac => \ball_FSM|Equal10~0_combout\,
	datad => \ball_FSM|Equal3~1_combout\,
	combout => \ball_FSM|process_1~9_combout\);

-- Location: LCCOMB_X22_Y18_N12
\ball_FSM|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector3~0_combout\ = (\ball_FSM|pr_state.mov_left~q\) # ((\ball_FSM|Selector7~2_combout\) # (\ball_FSM|Selector8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|pr_state.mov_left~q\,
	datac => \ball_FSM|Selector7~2_combout\,
	datad => \ball_FSM|Selector8~2_combout\,
	combout => \ball_FSM|Selector3~0_combout\);

-- Location: LCCOMB_X20_Y18_N10
\ball_FSM|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector3~2_combout\ = (\ball_FSM|pr_state.mov_right~q\ & ((\ball_FSM|Selector3~1_combout\) # ((\ball_FSM|process_1~9_combout\ & \ball_FSM|Selector3~0_combout\)))) # (!\ball_FSM|pr_state.mov_right~q\ & (\ball_FSM|process_1~9_combout\ & 
-- (\ball_FSM|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|pr_state.mov_right~q\,
	datab => \ball_FSM|process_1~9_combout\,
	datac => \ball_FSM|Selector3~0_combout\,
	datad => \ball_FSM|Selector3~1_combout\,
	combout => \ball_FSM|Selector3~2_combout\);

-- Location: LCCOMB_X20_Y18_N14
\ball_FSM|Selector3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector3~3_combout\ = (\ball_FSM|Selector3~2_combout\) # ((\timer_ball|Equal0~combout\ & (!\start~input_o\ & !\ball_FSM|pr_state.stby~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ball|Equal0~combout\,
	datab => \start~input_o\,
	datac => \ball_FSM|pr_state.stby~q\,
	datad => \ball_FSM|Selector3~2_combout\,
	combout => \ball_FSM|Selector3~3_combout\);

-- Location: FF_X20_Y18_N15
\ball_FSM|pr_state.mov_right\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball_FSM|Selector3~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_FSM|pr_state.mov_right~q\);

-- Location: LCCOMB_X22_Y18_N18
\ball_FSM|Selector6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector6~2_combout\ = (\ball_FSM|pr_state.right_down~q\ & ((\ball_logic|tempY\(1)) # ((\ball_logic|tempY\(0)) # (!\ball_logic|tempY\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(2),
	datac => \ball_FSM|pr_state.right_down~q\,
	datad => \ball_logic|tempY\(0),
	combout => \ball_FSM|Selector6~2_combout\);

-- Location: LCCOMB_X19_Y18_N8
\ball_FSM|Selector7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector7~5_combout\ = (\ball_FSM|process_1~7_combout\ & ((\ball_FSM|pr_state.mov_right~q\) # ((\ball_FSM|Selector6~2_combout\) # (\ball_FSM|Selector5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|pr_state.mov_right~q\,
	datab => \ball_FSM|Selector6~2_combout\,
	datac => \ball_FSM|Selector5~4_combout\,
	datad => \ball_FSM|process_1~7_combout\,
	combout => \ball_FSM|Selector7~5_combout\);

-- Location: LCCOMB_X19_Y18_N22
\ball_FSM|Equal10~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Equal10~15_combout\ = (!\ball_logic|tempX\(0) & (\ball_logic|tempX\(1) & (\ball_logic|tempX\(2) & \ball_logic|tempX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempX\(0),
	datab => \ball_logic|tempX\(1),
	datac => \ball_logic|tempX\(2),
	datad => \ball_logic|tempX\(3),
	combout => \ball_FSM|Equal10~15_combout\);

-- Location: LCCOMB_X19_Y18_N2
\ball_FSM|process_1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|process_1~11_combout\ = (\timer_ball|Equal0~combout\ & (!\ball_FSM|Equal3~0_combout\ & (\ball_FSM|Equal10~0_combout\ & \ball_FSM|process_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ball|Equal0~combout\,
	datab => \ball_FSM|Equal3~0_combout\,
	datac => \ball_FSM|Equal10~0_combout\,
	datad => \ball_FSM|process_1~10_combout\,
	combout => \ball_FSM|process_1~11_combout\);

-- Location: LCCOMB_X23_Y18_N14
\ball_FSM|process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|process_1~0_combout\ = (\ball_logic|tempY\(1) & (!\racket_logic|temp1\(1) & (\ball_logic|tempY\(2) $ (\racket_logic|temp1\(2))))) # (!\ball_logic|tempY\(1) & (\racket_logic|temp1\(1) & (\ball_logic|tempY\(2) $ (!\racket_logic|temp1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \racket_logic|temp1\(1),
	datad => \racket_logic|temp1\(2),
	combout => \ball_FSM|process_1~0_combout\);

-- Location: LCCOMB_X19_Y18_N26
\ball_FSM|process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|process_1~1_combout\ = (\timer_ball|Equal0~combout\ & (\ball_FSM|Equal10~0_combout\ & (!\ball_FSM|Equal3~0_combout\ & \ball_FSM|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ball|Equal0~combout\,
	datab => \ball_FSM|Equal10~0_combout\,
	datac => \ball_FSM|Equal3~0_combout\,
	datad => \ball_FSM|process_1~0_combout\,
	combout => \ball_FSM|process_1~1_combout\);

-- Location: LCCOMB_X19_Y18_N24
\ball_FSM|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector4~1_combout\ = (!\ball_FSM|Equal10~15_combout\ & (!\ball_FSM|process_1~11_combout\ & (!\ball_FSM|process_1~1_combout\ & !\ball_FSM|process_1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|Equal10~15_combout\,
	datab => \ball_FSM|process_1~11_combout\,
	datac => \ball_FSM|process_1~1_combout\,
	datad => \ball_FSM|process_1~9_combout\,
	combout => \ball_FSM|Selector4~1_combout\);

-- Location: LCCOMB_X19_Y18_N0
\ball_FSM|Selector7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector7~4_combout\ = (\ball_FSM|Selector7~3_combout\) # ((\ball_FSM|Selector7~5_combout\) # ((\ball_FSM|Selector7~2_combout\ & \ball_FSM|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|Selector7~3_combout\,
	datab => \ball_FSM|Selector7~2_combout\,
	datac => \ball_FSM|Selector7~5_combout\,
	datad => \ball_FSM|Selector4~1_combout\,
	combout => \ball_FSM|Selector7~4_combout\);

-- Location: FF_X19_Y18_N1
\ball_FSM|pr_state.left_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball_FSM|Selector7~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_FSM|pr_state.left_up~q\);

-- Location: LCCOMB_X22_Y18_N0
\ball_FSM|Selector8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector8~3_combout\ = (\ball_FSM|pr_state.left_up~q\ & (\ball_logic|tempY\(0) & (!\ball_logic|tempY\(2) & \ball_logic|tempY\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|pr_state.left_up~q\,
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_logic|tempY\(1),
	combout => \ball_FSM|Selector8~3_combout\);

-- Location: LCCOMB_X19_Y18_N30
\ball_FSM|Selector8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector8~5_combout\ = (\ball_FSM|process_1~5_combout\ & ((\ball_FSM|pr_state.mov_right~q\) # ((\ball_FSM|Selector6~2_combout\) # (\ball_FSM|Selector5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|pr_state.mov_right~q\,
	datab => \ball_FSM|Selector6~2_combout\,
	datac => \ball_FSM|process_1~5_combout\,
	datad => \ball_FSM|Selector5~4_combout\,
	combout => \ball_FSM|Selector8~5_combout\);

-- Location: LCCOMB_X19_Y18_N12
\ball_FSM|Selector8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector8~4_combout\ = (\ball_FSM|Selector8~3_combout\) # ((\ball_FSM|Selector8~5_combout\) # ((\ball_FSM|Selector8~2_combout\ & \ball_FSM|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|Selector8~3_combout\,
	datab => \ball_FSM|Selector8~2_combout\,
	datac => \ball_FSM|Selector8~5_combout\,
	datad => \ball_FSM|Selector4~1_combout\,
	combout => \ball_FSM|Selector8~4_combout\);

-- Location: FF_X19_Y18_N13
\ball_FSM|pr_state.left_down\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball_FSM|Selector8~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_FSM|pr_state.left_down~q\);

-- Location: LCCOMB_X22_Y18_N2
\ball_logic|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_logic|Add3~2_combout\ = \ball_logic|tempY\(0) $ (\ball_logic|tempY\(1) $ (((\ball_FSM|pr_state.left_down~q\) # (\ball_FSM|pr_state.right_down~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|pr_state.left_down~q\,
	datab => \ball_FSM|pr_state.right_down~q\,
	datac => \ball_logic|tempY\(0),
	datad => \ball_logic|tempY\(1),
	combout => \ball_logic|Add3~2_combout\);

-- Location: FF_X22_Y18_N7
\ball_logic|tempY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ball|Equal0~clkctrl_outclk\,
	asdata => \ball_logic|Add3~2_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	sload => VCC,
	ena => \ball_logic|tempY[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_logic|tempY\(1));

-- Location: LCCOMB_X21_Y18_N16
\ball_FSM|Selector6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector6~3_combout\ = (\ball_logic|tempY\(1) & (!\ball_logic|tempY\(2) & (\ball_FSM|pr_state.right_up~q\ & \ball_logic|tempY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(2),
	datac => \ball_FSM|pr_state.right_up~q\,
	datad => \ball_logic|tempY\(0),
	combout => \ball_FSM|Selector6~3_combout\);

-- Location: LCCOMB_X19_Y18_N18
\ball_FSM|Selector6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector6~5_combout\ = (\ball_FSM|process_1~1_combout\ & ((\ball_FSM|pr_state.mov_left~q\) # ((\ball_FSM|Selector8~2_combout\) # (\ball_FSM|Selector7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|pr_state.mov_left~q\,
	datab => \ball_FSM|Selector8~2_combout\,
	datac => \ball_FSM|process_1~1_combout\,
	datad => \ball_FSM|Selector7~2_combout\,
	combout => \ball_FSM|Selector6~5_combout\);

-- Location: LCCOMB_X19_Y18_N4
\ball_FSM|Selector6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector6~4_combout\ = (\ball_FSM|Selector6~3_combout\) # ((\ball_FSM|Selector6~5_combout\) # ((\ball_FSM|Selector6~2_combout\ & \ball_FSM|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|Selector6~3_combout\,
	datab => \ball_FSM|Selector6~2_combout\,
	datac => \ball_FSM|Selector3~1_combout\,
	datad => \ball_FSM|Selector6~5_combout\,
	combout => \ball_FSM|Selector6~4_combout\);

-- Location: FF_X19_Y18_N5
\ball_FSM|pr_state.right_down\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball_FSM|Selector6~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_FSM|pr_state.right_down~q\);

-- Location: LCCOMB_X19_Y18_N20
\ball_FSM|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|WideOr3~0_combout\ = (\ball_FSM|pr_state.right_down~q\) # ((\ball_FSM|pr_state.mov_right~q\) # (\ball_FSM|pr_state.right_up~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball_FSM|pr_state.right_down~q\,
	datac => \ball_FSM|pr_state.mov_right~q\,
	datad => \ball_FSM|pr_state.right_up~q\,
	combout => \ball_FSM|WideOr3~0_combout\);

-- Location: FF_X20_Y18_N19
\ball_logic|tempX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ball|Equal0~clkctrl_outclk\,
	d => \ball_logic|tempX[1]~5_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	ena => \ball_logic|tempX[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_logic|tempX\(1));

-- Location: LCCOMB_X19_Y18_N14
\ball_FSM|Equal10~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Equal10~13_combout\ = (\ball_logic|tempX\(0) & (\ball_logic|tempX\(1) & (\ball_logic|tempX\(2) & \ball_logic|tempX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempX\(0),
	datab => \ball_logic|tempX\(1),
	datac => \ball_logic|tempX\(2),
	datad => \ball_logic|tempX\(3),
	combout => \ball_FSM|Equal10~13_combout\);

-- Location: LCCOMB_X21_Y18_N26
\ball_FSM|process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|process_1~2_combout\ = (\ball_logic|tempY\(0) & (\racket_logic|temp2\(0) & (\ball_logic|tempY\(1) $ (\racket_logic|temp2\(1))))) # (!\ball_logic|tempY\(0) & (!\racket_logic|temp2\(0) & (\ball_logic|tempY\(1) $ (!\racket_logic|temp2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \racket_logic|temp2\(1),
	datad => \racket_logic|temp2\(0),
	combout => \ball_FSM|process_1~2_combout\);

-- Location: LCCOMB_X21_Y18_N20
\ball_FSM|Equal9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Equal9~0_combout\ = \racket_logic|temp2\(2) $ (\ball_logic|tempY\(2) $ (((!\racket_logic|temp2\(1) & \racket_logic|temp2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \racket_logic|temp2\(2),
	datab => \ball_logic|tempY\(2),
	datac => \racket_logic|temp2\(1),
	datad => \racket_logic|temp2\(0),
	combout => \ball_FSM|Equal9~0_combout\);

-- Location: LCCOMB_X20_Y18_N30
\ball_FSM|process_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|process_1~3_combout\ = (\ball_FSM|Equal10~13_combout\ & (\ball_FSM|process_1~2_combout\ & (!\ball_FSM|Equal9~0_combout\ & \timer_ball|Equal0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|Equal10~13_combout\,
	datab => \ball_FSM|process_1~2_combout\,
	datac => \ball_FSM|Equal9~0_combout\,
	datad => \timer_ball|Equal0~combout\,
	combout => \ball_FSM|process_1~3_combout\);

-- Location: LCCOMB_X19_Y18_N28
\ball_FSM|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector4~0_combout\ = (\ball_FSM|Selector5~4_combout\) # ((\ball_FSM|pr_state.mov_right~q\) # (\ball_FSM|Selector6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|Selector5~4_combout\,
	datab => \ball_FSM|pr_state.mov_right~q\,
	datad => \ball_FSM|Selector6~2_combout\,
	combout => \ball_FSM|Selector4~0_combout\);

-- Location: LCCOMB_X19_Y18_N10
\ball_FSM|Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector4~2_combout\ = (\ball_FSM|process_1~3_combout\ & ((\ball_FSM|Selector4~0_combout\) # ((\ball_FSM|pr_state.mov_left~q\ & \ball_FSM|Selector4~1_combout\)))) # (!\ball_FSM|process_1~3_combout\ & (((\ball_FSM|pr_state.mov_left~q\ & 
-- \ball_FSM|Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|process_1~3_combout\,
	datab => \ball_FSM|Selector4~0_combout\,
	datac => \ball_FSM|pr_state.mov_left~q\,
	datad => \ball_FSM|Selector4~1_combout\,
	combout => \ball_FSM|Selector4~2_combout\);

-- Location: FF_X19_Y18_N11
\ball_FSM|pr_state.mov_left\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball_FSM|Selector4~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_FSM|pr_state.mov_left~q\);

-- Location: LCCOMB_X22_Y18_N16
\ball_FSM|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector2~0_combout\ = (\ball_FSM|Equal10~15_combout\ & ((\ball_FSM|pr_state.mov_left~q\) # ((\ball_FSM|Selector8~2_combout\) # (\ball_FSM|Selector7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|pr_state.mov_left~q\,
	datab => \ball_FSM|Selector8~2_combout\,
	datac => \ball_FSM|Selector7~2_combout\,
	datad => \ball_FSM|Equal10~15_combout\,
	combout => \ball_FSM|Selector2~0_combout\);

-- Location: FF_X22_Y18_N17
\ball_FSM|pr_state.mark2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball_FSM|Selector2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_FSM|pr_state.mark2~q\);

-- Location: LCCOMB_X20_Y14_N24
\ball_FSM|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector0~0_combout\ = (\ball_FSM|pr_state.mark1~q\) # ((!\ball_FSM|pr_state.stby~q\ & ((\start~input_o\) # (!\timer_ball|Equal0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \ball_FSM|pr_state.mark1~q\,
	datac => \ball_FSM|pr_state.stby~q\,
	datad => \timer_ball|Equal0~combout\,
	combout => \ball_FSM|Selector0~0_combout\);

-- Location: LCCOMB_X20_Y18_N6
\ball_FSM|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector0~1_combout\ = (!\ball_FSM|pr_state.mark2~q\ & !\ball_FSM|Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ball_FSM|pr_state.mark2~q\,
	datad => \ball_FSM|Selector0~0_combout\,
	combout => \ball_FSM|Selector0~1_combout\);

-- Location: FF_X20_Y18_N7
\ball_FSM|pr_state.stby\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball_FSM|Selector0~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_FSM|pr_state.stby~q\);

-- Location: LCCOMB_X20_Y18_N8
rst_play : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_play~combout\ = (\rst~input_o\) # (!\ball_FSM|pr_state.stby~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \ball_FSM|pr_state.stby~q\,
	combout => \rst_play~combout\);

-- Location: FF_X16_Y14_N31
\speed_up|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_for_speed|Equal0~combout\,
	d => \speed_up|temp~0_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_up|temp\(4));

-- Location: LCCOMB_X16_Y15_N14
\speed_up|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|Add0~2_combout\ = (\speed_up|temp\(5) & (\speed_up|Add0~1\ & VCC)) # (!\speed_up|temp\(5) & (!\speed_up|Add0~1\))
-- \speed_up|Add0~3\ = CARRY((!\speed_up|temp\(5) & !\speed_up|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \speed_up|temp\(5),
	datad => VCC,
	cin => \speed_up|Add0~1\,
	combout => \speed_up|Add0~2_combout\,
	cout => \speed_up|Add0~3\);

-- Location: LCCOMB_X16_Y15_N2
\speed_up|temp~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|temp~1_combout\ = (\speed_up|Add0~2_combout\ & ((\speed_up|Add0~38_combout\) # (!\speed_up|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|Add0~38_combout\,
	datac => \speed_up|Add0~2_combout\,
	datad => \speed_up|LessThan0~5_combout\,
	combout => \speed_up|temp~1_combout\);

-- Location: FF_X16_Y15_N3
\speed_up|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_for_speed|Equal0~combout\,
	d => \speed_up|temp~1_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_up|temp\(5));

-- Location: LCCOMB_X16_Y15_N16
\speed_up|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|Add0~4_combout\ = (\speed_up|temp\(6) & ((GND) # (!\speed_up|Add0~3\))) # (!\speed_up|temp\(6) & (\speed_up|Add0~3\ $ (GND)))
-- \speed_up|Add0~5\ = CARRY((\speed_up|temp\(6)) # (!\speed_up|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \speed_up|temp\(6),
	datad => VCC,
	cin => \speed_up|Add0~3\,
	combout => \speed_up|Add0~4_combout\,
	cout => \speed_up|Add0~5\);

-- Location: LCCOMB_X16_Y14_N24
\speed_up|temp~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|temp~2_combout\ = (\speed_up|Add0~4_combout\ & ((\speed_up|Add0~38_combout\) # (!\speed_up|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \speed_up|LessThan0~5_combout\,
	datac => \speed_up|Add0~38_combout\,
	datad => \speed_up|Add0~4_combout\,
	combout => \speed_up|temp~2_combout\);

-- Location: FF_X16_Y14_N25
\speed_up|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_for_speed|Equal0~combout\,
	d => \speed_up|temp~2_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_up|temp\(6));

-- Location: LCCOMB_X16_Y15_N18
\speed_up|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|Add0~6_combout\ = (\speed_up|temp\(7) & ((\speed_up|Add0~5\) # (GND))) # (!\speed_up|temp\(7) & (!\speed_up|Add0~5\))
-- \speed_up|Add0~7\ = CARRY((\speed_up|temp\(7)) # (!\speed_up|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \speed_up|temp\(7),
	datad => VCC,
	cin => \speed_up|Add0~5\,
	combout => \speed_up|Add0~6_combout\,
	cout => \speed_up|Add0~7\);

-- Location: LCCOMB_X16_Y14_N26
\speed_up|temp~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|temp~3_combout\ = (!\speed_up|Add0~6_combout\ & ((\speed_up|Add0~38_combout\) # (!\speed_up|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \speed_up|LessThan0~5_combout\,
	datac => \speed_up|Add0~6_combout\,
	datad => \speed_up|Add0~38_combout\,
	combout => \speed_up|temp~3_combout\);

-- Location: FF_X16_Y14_N27
\speed_up|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_for_speed|Equal0~combout\,
	d => \speed_up|temp~3_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_up|temp\(7));

-- Location: LCCOMB_X16_Y15_N20
\speed_up|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|Add0~8_combout\ = (\speed_up|temp\(8) & ((GND) # (!\speed_up|Add0~7\))) # (!\speed_up|temp\(8) & (\speed_up|Add0~7\ $ (GND)))
-- \speed_up|Add0~9\ = CARRY((\speed_up|temp\(8)) # (!\speed_up|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|temp\(8),
	datad => VCC,
	cin => \speed_up|Add0~7\,
	combout => \speed_up|Add0~8_combout\,
	cout => \speed_up|Add0~9\);

-- Location: LCCOMB_X20_Y14_N30
\speed_up|temp~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|temp~4_combout\ = (\speed_up|Add0~8_combout\ & ((\speed_up|Add0~38_combout\) # (!\speed_up|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|Add0~38_combout\,
	datac => \speed_up|LessThan0~5_combout\,
	datad => \speed_up|Add0~8_combout\,
	combout => \speed_up|temp~4_combout\);

-- Location: FF_X20_Y14_N31
\speed_up|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_for_speed|Equal0~combout\,
	d => \speed_up|temp~4_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_up|temp\(8));

-- Location: LCCOMB_X16_Y15_N22
\speed_up|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|Add0~10_combout\ = (\speed_up|temp\(9) & (!\speed_up|Add0~9\)) # (!\speed_up|temp\(9) & (\speed_up|Add0~9\ & VCC))
-- \speed_up|Add0~11\ = CARRY((\speed_up|temp\(9) & !\speed_up|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|temp\(9),
	datad => VCC,
	cin => \speed_up|Add0~9\,
	combout => \speed_up|Add0~10_combout\,
	cout => \speed_up|Add0~11\);

-- Location: LCCOMB_X20_Y14_N22
\speed_up|temp~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|temp~5_combout\ = (!\speed_up|Add0~10_combout\ & ((\speed_up|Add0~38_combout\) # (!\speed_up|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|Add0~38_combout\,
	datac => \speed_up|LessThan0~5_combout\,
	datad => \speed_up|Add0~10_combout\,
	combout => \speed_up|temp~5_combout\);

-- Location: FF_X20_Y14_N23
\speed_up|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_for_speed|Equal0~combout\,
	d => \speed_up|temp~5_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_up|temp\(9));

-- Location: LCCOMB_X16_Y15_N24
\speed_up|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|Add0~12_combout\ = (\speed_up|temp\(10) & (\speed_up|Add0~11\ $ (GND))) # (!\speed_up|temp\(10) & ((GND) # (!\speed_up|Add0~11\)))
-- \speed_up|Add0~13\ = CARRY((!\speed_up|Add0~11\) # (!\speed_up|temp\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \speed_up|temp\(10),
	datad => VCC,
	cin => \speed_up|Add0~11\,
	combout => \speed_up|Add0~12_combout\,
	cout => \speed_up|Add0~13\);

-- Location: LCCOMB_X16_Y15_N0
\speed_up|temp~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|temp~7_combout\ = (!\speed_up|Add0~12_combout\ & ((\speed_up|Add0~38_combout\) # (!\speed_up|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|Add0~38_combout\,
	datac => \speed_up|Add0~12_combout\,
	datad => \speed_up|LessThan0~5_combout\,
	combout => \speed_up|temp~7_combout\);

-- Location: FF_X16_Y15_N1
\speed_up|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_for_speed|Equal0~combout\,
	d => \speed_up|temp~7_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_up|temp\(10));

-- Location: LCCOMB_X16_Y15_N26
\speed_up|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|Add0~14_combout\ = (\speed_up|temp\(11) & (\speed_up|Add0~13\ & VCC)) # (!\speed_up|temp\(11) & (!\speed_up|Add0~13\))
-- \speed_up|Add0~15\ = CARRY((!\speed_up|temp\(11) & !\speed_up|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|temp\(11),
	datad => VCC,
	cin => \speed_up|Add0~13\,
	combout => \speed_up|Add0~14_combout\,
	cout => \speed_up|Add0~15\);

-- Location: LCCOMB_X16_Y15_N6
\speed_up|temp~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|temp~6_combout\ = (\speed_up|Add0~14_combout\ & ((\speed_up|Add0~38_combout\) # (!\speed_up|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|Add0~14_combout\,
	datac => \speed_up|Add0~38_combout\,
	datad => \speed_up|LessThan0~5_combout\,
	combout => \speed_up|temp~6_combout\);

-- Location: FF_X16_Y15_N7
\speed_up|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_for_speed|Equal0~combout\,
	d => \speed_up|temp~6_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_up|temp\(11));

-- Location: LCCOMB_X16_Y15_N28
\speed_up|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|Add0~16_combout\ = (\speed_up|temp\(12) & (!\speed_up|Add0~15\ & VCC)) # (!\speed_up|temp\(12) & (\speed_up|Add0~15\ $ (GND)))
-- \speed_up|Add0~17\ = CARRY((!\speed_up|temp\(12) & !\speed_up|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|temp\(12),
	datad => VCC,
	cin => \speed_up|Add0~15\,
	combout => \speed_up|Add0~16_combout\,
	cout => \speed_up|Add0~17\);

-- Location: LCCOMB_X16_Y14_N28
\speed_up|temp~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|temp~9_combout\ = (!\speed_up|Add0~16_combout\ & ((\speed_up|Add0~38_combout\) # (!\speed_up|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \speed_up|LessThan0~5_combout\,
	datac => \speed_up|Add0~16_combout\,
	datad => \speed_up|Add0~38_combout\,
	combout => \speed_up|temp~9_combout\);

-- Location: FF_X16_Y14_N29
\speed_up|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_for_speed|Equal0~combout\,
	d => \speed_up|temp~9_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_up|temp\(12));

-- Location: LCCOMB_X16_Y15_N30
\speed_up|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|Add0~18_combout\ = (\speed_up|temp\(13) & (\speed_up|Add0~17\ & VCC)) # (!\speed_up|temp\(13) & (!\speed_up|Add0~17\))
-- \speed_up|Add0~19\ = CARRY((!\speed_up|temp\(13) & !\speed_up|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \speed_up|temp\(13),
	datad => VCC,
	cin => \speed_up|Add0~17\,
	combout => \speed_up|Add0~18_combout\,
	cout => \speed_up|Add0~19\);

-- Location: LCCOMB_X17_Y14_N20
\speed_up|temp~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|temp~8_combout\ = (\speed_up|Add0~18_combout\ & ((\speed_up|Add0~38_combout\) # (!\speed_up|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|Add0~38_combout\,
	datac => \speed_up|Add0~18_combout\,
	datad => \speed_up|LessThan0~5_combout\,
	combout => \speed_up|temp~8_combout\);

-- Location: FF_X17_Y14_N21
\speed_up|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_for_speed|Equal0~combout\,
	d => \speed_up|temp~8_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_up|temp\(13));

-- Location: LCCOMB_X16_Y14_N0
\speed_up|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|Add0~20_combout\ = (\speed_up|temp\(14) & (\speed_up|Add0~19\ $ (GND))) # (!\speed_up|temp\(14) & (!\speed_up|Add0~19\ & VCC))
-- \speed_up|Add0~21\ = CARRY((\speed_up|temp\(14) & !\speed_up|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|temp\(14),
	datad => VCC,
	cin => \speed_up|Add0~19\,
	combout => \speed_up|Add0~20_combout\,
	cout => \speed_up|Add0~21\);

-- Location: LCCOMB_X17_Y14_N2
\speed_up|temp~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|temp~10_combout\ = (\speed_up|Add0~20_combout\ & ((\speed_up|Add0~38_combout\) # (!\speed_up|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|Add0~38_combout\,
	datab => \speed_up|Add0~20_combout\,
	datad => \speed_up|LessThan0~5_combout\,
	combout => \speed_up|temp~10_combout\);

-- Location: FF_X17_Y14_N3
\speed_up|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_for_speed|Equal0~combout\,
	d => \speed_up|temp~10_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_up|temp\(14));

-- Location: LCCOMB_X16_Y14_N2
\speed_up|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|Add0~22_combout\ = (\speed_up|temp\(15) & ((\speed_up|Add0~21\) # (GND))) # (!\speed_up|temp\(15) & (!\speed_up|Add0~21\))
-- \speed_up|Add0~23\ = CARRY((\speed_up|temp\(15)) # (!\speed_up|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \speed_up|temp\(15),
	datad => VCC,
	cin => \speed_up|Add0~21\,
	combout => \speed_up|Add0~22_combout\,
	cout => \speed_up|Add0~23\);

-- Location: LCCOMB_X17_Y14_N28
\speed_up|temp~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|temp~11_combout\ = (!\speed_up|Add0~22_combout\ & ((\speed_up|Add0~38_combout\) # (!\speed_up|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|LessThan0~5_combout\,
	datab => \speed_up|Add0~22_combout\,
	datad => \speed_up|Add0~38_combout\,
	combout => \speed_up|temp~11_combout\);

-- Location: FF_X17_Y14_N29
\speed_up|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_for_speed|Equal0~combout\,
	d => \speed_up|temp~11_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_up|temp\(15));

-- Location: LCCOMB_X16_Y14_N4
\speed_up|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|Add0~24_combout\ = (\speed_up|temp\(16) & (\speed_up|Add0~23\ $ (GND))) # (!\speed_up|temp\(16) & (!\speed_up|Add0~23\ & VCC))
-- \speed_up|Add0~25\ = CARRY((\speed_up|temp\(16) & !\speed_up|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|temp\(16),
	datad => VCC,
	cin => \speed_up|Add0~23\,
	combout => \speed_up|Add0~24_combout\,
	cout => \speed_up|Add0~25\);

-- Location: LCCOMB_X17_Y14_N30
\speed_up|temp~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|temp~12_combout\ = (\speed_up|Add0~24_combout\ & ((\speed_up|Add0~38_combout\) # (!\speed_up|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|Add0~38_combout\,
	datab => \speed_up|Add0~24_combout\,
	datad => \speed_up|LessThan0~5_combout\,
	combout => \speed_up|temp~12_combout\);

-- Location: FF_X17_Y14_N31
\speed_up|temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_for_speed|Equal0~combout\,
	d => \speed_up|temp~12_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_up|temp\(16));

-- Location: LCCOMB_X16_Y14_N6
\speed_up|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|Add0~26_combout\ = (\speed_up|temp\(17) & (!\speed_up|Add0~25\)) # (!\speed_up|temp\(17) & ((\speed_up|Add0~25\) # (GND)))
-- \speed_up|Add0~27\ = CARRY((!\speed_up|Add0~25\) # (!\speed_up|temp\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \speed_up|temp\(17),
	datad => VCC,
	cin => \speed_up|Add0~25\,
	combout => \speed_up|Add0~26_combout\,
	cout => \speed_up|Add0~27\);

-- Location: LCCOMB_X17_Y14_N8
\speed_up|temp~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|temp~13_combout\ = (\speed_up|Add0~26_combout\ & ((\speed_up|Add0~38_combout\) # (!\speed_up|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|Add0~38_combout\,
	datac => \speed_up|Add0~26_combout\,
	datad => \speed_up|LessThan0~5_combout\,
	combout => \speed_up|temp~13_combout\);

-- Location: FF_X17_Y14_N9
\speed_up|temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_for_speed|Equal0~combout\,
	d => \speed_up|temp~13_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_up|temp\(17));

-- Location: LCCOMB_X16_Y14_N8
\speed_up|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|Add0~28_combout\ = (\speed_up|temp\(18) & ((GND) # (!\speed_up|Add0~27\))) # (!\speed_up|temp\(18) & (\speed_up|Add0~27\ $ (GND)))
-- \speed_up|Add0~29\ = CARRY((\speed_up|temp\(18)) # (!\speed_up|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|temp\(18),
	datad => VCC,
	cin => \speed_up|Add0~27\,
	combout => \speed_up|Add0~28_combout\,
	cout => \speed_up|Add0~29\);

-- Location: LCCOMB_X17_Y14_N12
\speed_up|temp~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|temp~14_combout\ = (\speed_up|Add0~28_combout\ & ((\speed_up|Add0~38_combout\) # (!\speed_up|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|Add0~38_combout\,
	datac => \speed_up|Add0~28_combout\,
	datad => \speed_up|LessThan0~5_combout\,
	combout => \speed_up|temp~14_combout\);

-- Location: FF_X17_Y14_N13
\speed_up|temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_for_speed|Equal0~combout\,
	d => \speed_up|temp~14_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_up|temp\(18));

-- Location: LCCOMB_X16_Y14_N10
\speed_up|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|Add0~30_combout\ = (\speed_up|temp\(19) & (!\speed_up|Add0~29\)) # (!\speed_up|temp\(19) & (\speed_up|Add0~29\ & VCC))
-- \speed_up|Add0~31\ = CARRY((\speed_up|temp\(19) & !\speed_up|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \speed_up|temp\(19),
	datad => VCC,
	cin => \speed_up|Add0~29\,
	combout => \speed_up|Add0~30_combout\,
	cout => \speed_up|Add0~31\);

-- Location: LCCOMB_X17_Y14_N14
\speed_up|temp~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|temp~15_combout\ = (!\speed_up|Add0~30_combout\ & ((\speed_up|Add0~38_combout\) # (!\speed_up|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|LessThan0~5_combout\,
	datac => \speed_up|Add0~30_combout\,
	datad => \speed_up|Add0~38_combout\,
	combout => \speed_up|temp~15_combout\);

-- Location: FF_X17_Y14_N15
\speed_up|temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_for_speed|Equal0~combout\,
	d => \speed_up|temp~15_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_up|temp\(19));

-- Location: LCCOMB_X16_Y14_N12
\speed_up|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|Add0~32_combout\ = (\speed_up|temp\(20) & (\speed_up|Add0~31\ $ (GND))) # (!\speed_up|temp\(20) & ((GND) # (!\speed_up|Add0~31\)))
-- \speed_up|Add0~33\ = CARRY((!\speed_up|Add0~31\) # (!\speed_up|temp\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \speed_up|temp\(20),
	datad => VCC,
	cin => \speed_up|Add0~31\,
	combout => \speed_up|Add0~32_combout\,
	cout => \speed_up|Add0~33\);

-- Location: LCCOMB_X20_Y14_N10
\speed_up|temp~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|temp~17_combout\ = (!\speed_up|Add0~32_combout\ & ((\speed_up|Add0~38_combout\) # (!\speed_up|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|Add0~38_combout\,
	datab => \speed_up|Add0~32_combout\,
	datac => \speed_up|LessThan0~5_combout\,
	combout => \speed_up|temp~17_combout\);

-- Location: FF_X20_Y14_N11
\speed_up|temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_for_speed|Equal0~combout\,
	d => \speed_up|temp~17_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_up|temp\(20));

-- Location: LCCOMB_X16_Y14_N14
\speed_up|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|Add0~34_combout\ = (\speed_up|temp\(21) & (\speed_up|Add0~33\ & VCC)) # (!\speed_up|temp\(21) & (!\speed_up|Add0~33\))
-- \speed_up|Add0~35\ = CARRY((!\speed_up|temp\(21) & !\speed_up|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \speed_up|temp\(21),
	datad => VCC,
	cin => \speed_up|Add0~33\,
	combout => \speed_up|Add0~34_combout\,
	cout => \speed_up|Add0~35\);

-- Location: LCCOMB_X16_Y15_N8
\speed_up|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|LessThan0~0_combout\ = (((!\speed_up|Add0~4_combout\ & !\speed_up|Add0~2_combout\)) # (!\speed_up|Add0~6_combout\)) # (!\speed_up|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|Add0~4_combout\,
	datab => \speed_up|Add0~8_combout\,
	datac => \speed_up|Add0~2_combout\,
	datad => \speed_up|Add0~6_combout\,
	combout => \speed_up|LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y15_N10
\speed_up|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|LessThan0~1_combout\ = (!\speed_up|Add0~14_combout\ & (!\speed_up|Add0~16_combout\ & ((!\speed_up|Add0~12_combout\) # (!\speed_up|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|Add0~10_combout\,
	datab => \speed_up|Add0~12_combout\,
	datac => \speed_up|Add0~14_combout\,
	datad => \speed_up|Add0~16_combout\,
	combout => \speed_up|LessThan0~1_combout\);

-- Location: LCCOMB_X16_Y15_N4
\speed_up|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|LessThan0~2_combout\ = ((\speed_up|LessThan0~1_combout\ & ((\speed_up|LessThan0~0_combout\) # (!\speed_up|Add0~12_combout\)))) # (!\speed_up|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|Add0~18_combout\,
	datab => \speed_up|Add0~12_combout\,
	datac => \speed_up|LessThan0~0_combout\,
	datad => \speed_up|LessThan0~1_combout\,
	combout => \speed_up|LessThan0~2_combout\);

-- Location: LCCOMB_X17_Y14_N18
\speed_up|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|LessThan0~3_combout\ = (!\speed_up|Add0~22_combout\ & (!\speed_up|Add0~24_combout\ & (!\speed_up|Add0~20_combout\ & \speed_up|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|Add0~22_combout\,
	datab => \speed_up|Add0~24_combout\,
	datac => \speed_up|Add0~20_combout\,
	datad => \speed_up|LessThan0~2_combout\,
	combout => \speed_up|LessThan0~3_combout\);

-- Location: LCCOMB_X17_Y14_N24
\speed_up|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|LessThan0~4_combout\ = (!\speed_up|Add0~30_combout\ & (((\speed_up|LessThan0~3_combout\) # (!\speed_up|Add0~26_combout\)) # (!\speed_up|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|Add0~28_combout\,
	datab => \speed_up|Add0~30_combout\,
	datac => \speed_up|Add0~26_combout\,
	datad => \speed_up|LessThan0~3_combout\,
	combout => \speed_up|LessThan0~4_combout\);

-- Location: LCCOMB_X17_Y14_N0
\speed_up|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|LessThan0~5_combout\ = (!\speed_up|Add0~36_combout\ & (((!\speed_up|Add0~32_combout\ & \speed_up|LessThan0~4_combout\)) # (!\speed_up|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|Add0~34_combout\,
	datab => \speed_up|Add0~32_combout\,
	datac => \speed_up|Add0~36_combout\,
	datad => \speed_up|LessThan0~4_combout\,
	combout => \speed_up|LessThan0~5_combout\);

-- Location: LCCOMB_X20_Y14_N26
\speed_up|temp~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|temp~18_combout\ = (!\speed_up|Add0~38_combout\ & !\speed_up|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|Add0~38_combout\,
	datac => \speed_up|LessThan0~5_combout\,
	combout => \speed_up|temp~18_combout\);

-- Location: FF_X20_Y14_N27
\speed_up|temp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_for_speed|Equal0~combout\,
	d => \speed_up|temp~18_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_up|temp\(23));

-- Location: LCCOMB_X16_Y14_N16
\speed_up|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|Add0~36_combout\ = (\speed_up|temp\(22) & ((GND) # (!\speed_up|Add0~35\))) # (!\speed_up|temp\(22) & (\speed_up|Add0~35\ $ (GND)))
-- \speed_up|Add0~37\ = CARRY((\speed_up|temp\(22)) # (!\speed_up|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \speed_up|temp\(22),
	datad => VCC,
	cin => \speed_up|Add0~35\,
	combout => \speed_up|Add0~36_combout\,
	cout => \speed_up|Add0~37\);

-- Location: LCCOMB_X16_Y14_N18
\speed_up|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|Add0~38_combout\ = \speed_up|Add0~37\ $ (\speed_up|temp\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \speed_up|temp\(23),
	cin => \speed_up|Add0~37\,
	combout => \speed_up|Add0~38_combout\);

-- Location: LCCOMB_X17_Y14_N22
\speed_up|temp~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|temp~16_combout\ = (\speed_up|Add0~34_combout\ & ((\speed_up|Add0~38_combout\) # (!\speed_up|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|Add0~38_combout\,
	datab => \speed_up|Add0~34_combout\,
	datad => \speed_up|LessThan0~5_combout\,
	combout => \speed_up|temp~16_combout\);

-- Location: FF_X17_Y14_N23
\speed_up|temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_for_speed|Equal0~combout\,
	d => \speed_up|temp~16_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_up|temp\(21));

-- Location: LCCOMB_X16_Y14_N20
\speed_up|temp[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \speed_up|temp[22]~feeder_combout\ = \speed_up|Add0~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|Add0~36_combout\,
	combout => \speed_up|temp[22]~feeder_combout\);

-- Location: FF_X16_Y14_N21
\speed_up|temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_for_speed|Equal0~combout\,
	d => \speed_up|temp[22]~feeder_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \speed_up|temp\(22));

-- Location: LCCOMB_X19_Y15_N8
\timer_ball|temp[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[0]~24_combout\ = \timer_ball|temp\(0) $ (VCC)
-- \timer_ball|temp[0]~25\ = CARRY(\timer_ball|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_ball|temp\(0),
	datad => VCC,
	combout => \timer_ball|temp[0]~24_combout\,
	cout => \timer_ball|temp[0]~25\);

-- Location: FF_X19_Y15_N9
\timer_ball|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[0]~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(0));

-- Location: LCCOMB_X19_Y15_N10
\timer_ball|temp[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[1]~26_combout\ = (\timer_ball|temp\(1) & (!\timer_ball|temp[0]~25\)) # (!\timer_ball|temp\(1) & ((\timer_ball|temp[0]~25\) # (GND)))
-- \timer_ball|temp[1]~27\ = CARRY((!\timer_ball|temp[0]~25\) # (!\timer_ball|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ball|temp\(1),
	datad => VCC,
	cin => \timer_ball|temp[0]~25\,
	combout => \timer_ball|temp[1]~26_combout\,
	cout => \timer_ball|temp[1]~27\);

-- Location: FF_X19_Y15_N11
\timer_ball|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[1]~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(1));

-- Location: LCCOMB_X19_Y15_N12
\timer_ball|temp[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[2]~28_combout\ = (\timer_ball|temp\(2) & (\timer_ball|temp[1]~27\ $ (GND))) # (!\timer_ball|temp\(2) & (!\timer_ball|temp[1]~27\ & VCC))
-- \timer_ball|temp[2]~29\ = CARRY((\timer_ball|temp\(2) & !\timer_ball|temp[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ball|temp\(2),
	datad => VCC,
	cin => \timer_ball|temp[1]~27\,
	combout => \timer_ball|temp[2]~28_combout\,
	cout => \timer_ball|temp[2]~29\);

-- Location: FF_X19_Y15_N13
\timer_ball|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[2]~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(2));

-- Location: LCCOMB_X19_Y15_N14
\timer_ball|temp[3]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[3]~30_combout\ = (\timer_ball|temp\(3) & (!\timer_ball|temp[2]~29\)) # (!\timer_ball|temp\(3) & ((\timer_ball|temp[2]~29\) # (GND)))
-- \timer_ball|temp[3]~31\ = CARRY((!\timer_ball|temp[2]~29\) # (!\timer_ball|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ball|temp\(3),
	datad => VCC,
	cin => \timer_ball|temp[2]~29\,
	combout => \timer_ball|temp[3]~30_combout\,
	cout => \timer_ball|temp[3]~31\);

-- Location: FF_X19_Y15_N15
\timer_ball|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[3]~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(3));

-- Location: LCCOMB_X19_Y15_N16
\timer_ball|temp[4]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[4]~32_combout\ = (\timer_ball|temp\(4) & (\timer_ball|temp[3]~31\ $ (GND))) # (!\timer_ball|temp\(4) & (!\timer_ball|temp[3]~31\ & VCC))
-- \timer_ball|temp[4]~33\ = CARRY((\timer_ball|temp\(4) & !\timer_ball|temp[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ball|temp\(4),
	datad => VCC,
	cin => \timer_ball|temp[3]~31\,
	combout => \timer_ball|temp[4]~32_combout\,
	cout => \timer_ball|temp[4]~33\);

-- Location: FF_X19_Y15_N17
\timer_ball|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[4]~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(4));

-- Location: LCCOMB_X19_Y15_N18
\timer_ball|temp[5]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[5]~34_combout\ = (\timer_ball|temp\(5) & (!\timer_ball|temp[4]~33\)) # (!\timer_ball|temp\(5) & ((\timer_ball|temp[4]~33\) # (GND)))
-- \timer_ball|temp[5]~35\ = CARRY((!\timer_ball|temp[4]~33\) # (!\timer_ball|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ball|temp\(5),
	datad => VCC,
	cin => \timer_ball|temp[4]~33\,
	combout => \timer_ball|temp[5]~34_combout\,
	cout => \timer_ball|temp[5]~35\);

-- Location: FF_X19_Y15_N19
\timer_ball|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[5]~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(5));

-- Location: LCCOMB_X19_Y15_N20
\timer_ball|temp[6]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[6]~36_combout\ = (\timer_ball|temp\(6) & (\timer_ball|temp[5]~35\ $ (GND))) # (!\timer_ball|temp\(6) & (!\timer_ball|temp[5]~35\ & VCC))
-- \timer_ball|temp[6]~37\ = CARRY((\timer_ball|temp\(6) & !\timer_ball|temp[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ball|temp\(6),
	datad => VCC,
	cin => \timer_ball|temp[5]~35\,
	combout => \timer_ball|temp[6]~36_combout\,
	cout => \timer_ball|temp[6]~37\);

-- Location: FF_X19_Y15_N21
\timer_ball|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[6]~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(6));

-- Location: LCCOMB_X19_Y15_N22
\timer_ball|temp[7]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[7]~38_combout\ = (\timer_ball|temp\(7) & (!\timer_ball|temp[6]~37\)) # (!\timer_ball|temp\(7) & ((\timer_ball|temp[6]~37\) # (GND)))
-- \timer_ball|temp[7]~39\ = CARRY((!\timer_ball|temp[6]~37\) # (!\timer_ball|temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ball|temp\(7),
	datad => VCC,
	cin => \timer_ball|temp[6]~37\,
	combout => \timer_ball|temp[7]~38_combout\,
	cout => \timer_ball|temp[7]~39\);

-- Location: FF_X19_Y15_N23
\timer_ball|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[7]~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(7));

-- Location: LCCOMB_X19_Y15_N24
\timer_ball|temp[8]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[8]~40_combout\ = (\timer_ball|temp\(8) & (\timer_ball|temp[7]~39\ $ (GND))) # (!\timer_ball|temp\(8) & (!\timer_ball|temp[7]~39\ & VCC))
-- \timer_ball|temp[8]~41\ = CARRY((\timer_ball|temp\(8) & !\timer_ball|temp[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ball|temp\(8),
	datad => VCC,
	cin => \timer_ball|temp[7]~39\,
	combout => \timer_ball|temp[8]~40_combout\,
	cout => \timer_ball|temp[8]~41\);

-- Location: FF_X19_Y15_N25
\timer_ball|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[8]~40_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(8));

-- Location: LCCOMB_X19_Y15_N26
\timer_ball|temp[9]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[9]~42_combout\ = (\timer_ball|temp\(9) & (!\timer_ball|temp[8]~41\)) # (!\timer_ball|temp\(9) & ((\timer_ball|temp[8]~41\) # (GND)))
-- \timer_ball|temp[9]~43\ = CARRY((!\timer_ball|temp[8]~41\) # (!\timer_ball|temp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ball|temp\(9),
	datad => VCC,
	cin => \timer_ball|temp[8]~41\,
	combout => \timer_ball|temp[9]~42_combout\,
	cout => \timer_ball|temp[9]~43\);

-- Location: FF_X19_Y15_N27
\timer_ball|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[9]~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(9));

-- Location: LCCOMB_X19_Y15_N28
\timer_ball|temp[10]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[10]~44_combout\ = (\timer_ball|temp\(10) & (\timer_ball|temp[9]~43\ $ (GND))) # (!\timer_ball|temp\(10) & (!\timer_ball|temp[9]~43\ & VCC))
-- \timer_ball|temp[10]~45\ = CARRY((\timer_ball|temp\(10) & !\timer_ball|temp[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ball|temp\(10),
	datad => VCC,
	cin => \timer_ball|temp[9]~43\,
	combout => \timer_ball|temp[10]~44_combout\,
	cout => \timer_ball|temp[10]~45\);

-- Location: FF_X19_Y15_N29
\timer_ball|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[10]~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(10));

-- Location: LCCOMB_X19_Y15_N30
\timer_ball|temp[11]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[11]~46_combout\ = (\timer_ball|temp\(11) & (!\timer_ball|temp[10]~45\)) # (!\timer_ball|temp\(11) & ((\timer_ball|temp[10]~45\) # (GND)))
-- \timer_ball|temp[11]~47\ = CARRY((!\timer_ball|temp[10]~45\) # (!\timer_ball|temp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ball|temp\(11),
	datad => VCC,
	cin => \timer_ball|temp[10]~45\,
	combout => \timer_ball|temp[11]~46_combout\,
	cout => \timer_ball|temp[11]~47\);

-- Location: FF_X19_Y15_N31
\timer_ball|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[11]~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(11));

-- Location: LCCOMB_X19_Y14_N0
\timer_ball|temp[12]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[12]~48_combout\ = (\timer_ball|temp\(12) & (\timer_ball|temp[11]~47\ $ (GND))) # (!\timer_ball|temp\(12) & (!\timer_ball|temp[11]~47\ & VCC))
-- \timer_ball|temp[12]~49\ = CARRY((\timer_ball|temp\(12) & !\timer_ball|temp[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ball|temp\(12),
	datad => VCC,
	cin => \timer_ball|temp[11]~47\,
	combout => \timer_ball|temp[12]~48_combout\,
	cout => \timer_ball|temp[12]~49\);

-- Location: FF_X19_Y14_N1
\timer_ball|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[12]~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(12));

-- Location: LCCOMB_X19_Y14_N2
\timer_ball|temp[13]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[13]~50_combout\ = (\timer_ball|temp\(13) & (!\timer_ball|temp[12]~49\)) # (!\timer_ball|temp\(13) & ((\timer_ball|temp[12]~49\) # (GND)))
-- \timer_ball|temp[13]~51\ = CARRY((!\timer_ball|temp[12]~49\) # (!\timer_ball|temp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ball|temp\(13),
	datad => VCC,
	cin => \timer_ball|temp[12]~49\,
	combout => \timer_ball|temp[13]~50_combout\,
	cout => \timer_ball|temp[13]~51\);

-- Location: FF_X19_Y14_N3
\timer_ball|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[13]~50_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(13));

-- Location: LCCOMB_X19_Y14_N4
\timer_ball|temp[14]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[14]~52_combout\ = (\timer_ball|temp\(14) & (\timer_ball|temp[13]~51\ $ (GND))) # (!\timer_ball|temp\(14) & (!\timer_ball|temp[13]~51\ & VCC))
-- \timer_ball|temp[14]~53\ = CARRY((\timer_ball|temp\(14) & !\timer_ball|temp[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ball|temp\(14),
	datad => VCC,
	cin => \timer_ball|temp[13]~51\,
	combout => \timer_ball|temp[14]~52_combout\,
	cout => \timer_ball|temp[14]~53\);

-- Location: FF_X19_Y14_N5
\timer_ball|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[14]~52_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(14));

-- Location: LCCOMB_X19_Y14_N6
\timer_ball|temp[15]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[15]~54_combout\ = (\timer_ball|temp\(15) & (!\timer_ball|temp[14]~53\)) # (!\timer_ball|temp\(15) & ((\timer_ball|temp[14]~53\) # (GND)))
-- \timer_ball|temp[15]~55\ = CARRY((!\timer_ball|temp[14]~53\) # (!\timer_ball|temp\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ball|temp\(15),
	datad => VCC,
	cin => \timer_ball|temp[14]~53\,
	combout => \timer_ball|temp[15]~54_combout\,
	cout => \timer_ball|temp[15]~55\);

-- Location: FF_X19_Y14_N7
\timer_ball|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[15]~54_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(15));

-- Location: LCCOMB_X19_Y14_N8
\timer_ball|temp[16]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[16]~56_combout\ = (\timer_ball|temp\(16) & (\timer_ball|temp[15]~55\ $ (GND))) # (!\timer_ball|temp\(16) & (!\timer_ball|temp[15]~55\ & VCC))
-- \timer_ball|temp[16]~57\ = CARRY((\timer_ball|temp\(16) & !\timer_ball|temp[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ball|temp\(16),
	datad => VCC,
	cin => \timer_ball|temp[15]~55\,
	combout => \timer_ball|temp[16]~56_combout\,
	cout => \timer_ball|temp[16]~57\);

-- Location: FF_X19_Y14_N9
\timer_ball|temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[16]~56_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(16));

-- Location: LCCOMB_X19_Y14_N10
\timer_ball|temp[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[17]~58_combout\ = (\timer_ball|temp\(17) & (!\timer_ball|temp[16]~57\)) # (!\timer_ball|temp\(17) & ((\timer_ball|temp[16]~57\) # (GND)))
-- \timer_ball|temp[17]~59\ = CARRY((!\timer_ball|temp[16]~57\) # (!\timer_ball|temp\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ball|temp\(17),
	datad => VCC,
	cin => \timer_ball|temp[16]~57\,
	combout => \timer_ball|temp[17]~58_combout\,
	cout => \timer_ball|temp[17]~59\);

-- Location: FF_X19_Y14_N11
\timer_ball|temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[17]~58_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(17));

-- Location: LCCOMB_X19_Y14_N12
\timer_ball|temp[18]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[18]~60_combout\ = (\timer_ball|temp\(18) & (\timer_ball|temp[17]~59\ $ (GND))) # (!\timer_ball|temp\(18) & (!\timer_ball|temp[17]~59\ & VCC))
-- \timer_ball|temp[18]~61\ = CARRY((\timer_ball|temp\(18) & !\timer_ball|temp[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ball|temp\(18),
	datad => VCC,
	cin => \timer_ball|temp[17]~59\,
	combout => \timer_ball|temp[18]~60_combout\,
	cout => \timer_ball|temp[18]~61\);

-- Location: FF_X19_Y14_N13
\timer_ball|temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[18]~60_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(18));

-- Location: LCCOMB_X19_Y14_N14
\timer_ball|temp[19]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[19]~62_combout\ = (\timer_ball|temp\(19) & (!\timer_ball|temp[18]~61\)) # (!\timer_ball|temp\(19) & ((\timer_ball|temp[18]~61\) # (GND)))
-- \timer_ball|temp[19]~63\ = CARRY((!\timer_ball|temp[18]~61\) # (!\timer_ball|temp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ball|temp\(19),
	datad => VCC,
	cin => \timer_ball|temp[18]~61\,
	combout => \timer_ball|temp[19]~62_combout\,
	cout => \timer_ball|temp[19]~63\);

-- Location: FF_X19_Y14_N15
\timer_ball|temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[19]~62_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(19));

-- Location: LCCOMB_X19_Y14_N16
\timer_ball|temp[20]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[20]~64_combout\ = (\timer_ball|temp\(20) & (\timer_ball|temp[19]~63\ $ (GND))) # (!\timer_ball|temp\(20) & (!\timer_ball|temp[19]~63\ & VCC))
-- \timer_ball|temp[20]~65\ = CARRY((\timer_ball|temp\(20) & !\timer_ball|temp[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ball|temp\(20),
	datad => VCC,
	cin => \timer_ball|temp[19]~63\,
	combout => \timer_ball|temp[20]~64_combout\,
	cout => \timer_ball|temp[20]~65\);

-- Location: FF_X19_Y14_N17
\timer_ball|temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[20]~64_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(20));

-- Location: LCCOMB_X19_Y14_N18
\timer_ball|temp[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[21]~66_combout\ = (\timer_ball|temp\(21) & (!\timer_ball|temp[20]~65\)) # (!\timer_ball|temp\(21) & ((\timer_ball|temp[20]~65\) # (GND)))
-- \timer_ball|temp[21]~67\ = CARRY((!\timer_ball|temp[20]~65\) # (!\timer_ball|temp\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ball|temp\(21),
	datad => VCC,
	cin => \timer_ball|temp[20]~65\,
	combout => \timer_ball|temp[21]~66_combout\,
	cout => \timer_ball|temp[21]~67\);

-- Location: FF_X19_Y14_N19
\timer_ball|temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[21]~66_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(21));

-- Location: LCCOMB_X19_Y14_N20
\timer_ball|temp[22]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[22]~68_combout\ = (\timer_ball|temp\(22) & (\timer_ball|temp[21]~67\ $ (GND))) # (!\timer_ball|temp\(22) & (!\timer_ball|temp[21]~67\ & VCC))
-- \timer_ball|temp[22]~69\ = CARRY((\timer_ball|temp\(22) & !\timer_ball|temp[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_ball|temp\(22),
	datad => VCC,
	cin => \timer_ball|temp[21]~67\,
	combout => \timer_ball|temp[22]~68_combout\,
	cout => \timer_ball|temp[22]~69\);

-- Location: FF_X19_Y14_N21
\timer_ball|temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[22]~68_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(22));

-- Location: LCCOMB_X19_Y15_N6
\timer_ball|Equal0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|Equal0~11_combout\ = (!\timer_ball|temp\(2) & (!\timer_ball|temp\(0) & (!\timer_ball|temp\(3) & !\timer_ball|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ball|temp\(2),
	datab => \timer_ball|temp\(0),
	datac => \timer_ball|temp\(3),
	datad => \timer_ball|temp\(1),
	combout => \timer_ball|Equal0~11_combout\);

-- Location: LCCOMB_X19_Y14_N22
\timer_ball|temp[23]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|temp[23]~70_combout\ = \timer_ball|temp\(23) $ (\timer_ball|temp[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ball|temp\(23),
	cin => \timer_ball|temp[22]~69\,
	combout => \timer_ball|temp[23]~70_combout\);

-- Location: FF_X19_Y14_N23
\timer_ball|temp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timer_ball|temp[23]~70_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \timer_ball|Equal0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_ball|temp\(23));

-- Location: LCCOMB_X20_Y14_N18
\timer_ball|Equal0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|Equal0~12_combout\ = \speed_up|temp\(23) $ (!\timer_ball|temp\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \speed_up|temp\(23),
	datad => \timer_ball|temp\(23),
	combout => \timer_ball|Equal0~12_combout\);

-- Location: LCCOMB_X19_Y14_N30
\timer_ball|Equal0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|Equal0~13_combout\ = (\timer_ball|Equal0~11_combout\ & (!\timer_ball|Equal0~12_combout\ & (\speed_up|temp\(22) $ (!\timer_ball|temp\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|temp\(22),
	datab => \timer_ball|temp\(22),
	datac => \timer_ball|Equal0~11_combout\,
	datad => \timer_ball|Equal0~12_combout\,
	combout => \timer_ball|Equal0~13_combout\);

-- Location: LCCOMB_X19_Y14_N24
\timer_ball|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|Equal0~10_combout\ = (\speed_up|temp\(21) & (\timer_ball|temp\(21) & (\speed_up|temp\(20) $ (\timer_ball|temp\(20))))) # (!\speed_up|temp\(21) & (!\timer_ball|temp\(21) & (\speed_up|temp\(20) $ (\timer_ball|temp\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|temp\(21),
	datab => \timer_ball|temp\(21),
	datac => \speed_up|temp\(20),
	datad => \timer_ball|temp\(20),
	combout => \timer_ball|Equal0~10_combout\);

-- Location: LCCOMB_X17_Y14_N10
\timer_ball|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|Equal0~5_combout\ = (\timer_ball|temp\(12) & (!\speed_up|temp\(12) & (\speed_up|temp\(13) $ (!\timer_ball|temp\(13))))) # (!\timer_ball|temp\(12) & (\speed_up|temp\(12) & (\speed_up|temp\(13) $ (!\timer_ball|temp\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ball|temp\(12),
	datab => \speed_up|temp\(13),
	datac => \timer_ball|temp\(13),
	datad => \speed_up|temp\(12),
	combout => \timer_ball|Equal0~5_combout\);

-- Location: LCCOMB_X17_Y14_N4
\timer_ball|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|Equal0~6_combout\ = (\speed_up|temp\(15) & (!\timer_ball|temp\(15) & (\speed_up|temp\(14) $ (!\timer_ball|temp\(14))))) # (!\speed_up|temp\(15) & (\timer_ball|temp\(15) & (\speed_up|temp\(14) $ (!\timer_ball|temp\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|temp\(15),
	datab => \speed_up|temp\(14),
	datac => \timer_ball|temp\(14),
	datad => \timer_ball|temp\(15),
	combout => \timer_ball|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y14_N26
\timer_ball|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|Equal0~8_combout\ = (\speed_up|temp\(18) & (\timer_ball|temp\(18) & (\speed_up|temp\(19) $ (\timer_ball|temp\(19))))) # (!\speed_up|temp\(18) & (!\timer_ball|temp\(18) & (\speed_up|temp\(19) $ (\timer_ball|temp\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|temp\(18),
	datab => \speed_up|temp\(19),
	datac => \timer_ball|temp\(18),
	datad => \timer_ball|temp\(19),
	combout => \timer_ball|Equal0~8_combout\);

-- Location: LCCOMB_X17_Y14_N6
\timer_ball|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|Equal0~7_combout\ = (\speed_up|temp\(16) & (\timer_ball|temp\(16) & (\speed_up|temp\(17) $ (!\timer_ball|temp\(17))))) # (!\speed_up|temp\(16) & (!\timer_ball|temp\(16) & (\speed_up|temp\(17) $ (!\timer_ball|temp\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|temp\(16),
	datab => \speed_up|temp\(17),
	datac => \timer_ball|temp\(17),
	datad => \timer_ball|temp\(16),
	combout => \timer_ball|Equal0~7_combout\);

-- Location: LCCOMB_X17_Y14_N16
\timer_ball|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|Equal0~9_combout\ = (\timer_ball|Equal0~5_combout\ & (\timer_ball|Equal0~6_combout\ & (\timer_ball|Equal0~8_combout\ & \timer_ball|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ball|Equal0~5_combout\,
	datab => \timer_ball|Equal0~6_combout\,
	datac => \timer_ball|Equal0~8_combout\,
	datad => \timer_ball|Equal0~7_combout\,
	combout => \timer_ball|Equal0~9_combout\);

-- Location: LCCOMB_X16_Y14_N22
\timer_ball|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|Equal0~1_combout\ = (\speed_up|temp\(7) & (!\timer_ball|temp\(7) & (\speed_up|temp\(6) $ (!\timer_ball|temp\(6))))) # (!\speed_up|temp\(7) & (\timer_ball|temp\(7) & (\speed_up|temp\(6) $ (!\timer_ball|temp\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|temp\(7),
	datab => \speed_up|temp\(6),
	datac => \timer_ball|temp\(6),
	datad => \timer_ball|temp\(7),
	combout => \timer_ball|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y14_N20
\timer_ball|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|Equal0~2_combout\ = (\speed_up|temp\(8) & (\timer_ball|temp\(8) & (\speed_up|temp\(9) $ (\timer_ball|temp\(9))))) # (!\speed_up|temp\(8) & (!\timer_ball|temp\(8) & (\speed_up|temp\(9) $ (\timer_ball|temp\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed_up|temp\(8),
	datab => \timer_ball|temp\(8),
	datac => \speed_up|temp\(9),
	datad => \timer_ball|temp\(9),
	combout => \timer_ball|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y15_N4
\timer_ball|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|Equal0~0_combout\ = (\timer_ball|temp\(5) & (\speed_up|temp\(5) & (\timer_ball|temp\(4) $ (!\speed_up|temp\(4))))) # (!\timer_ball|temp\(5) & (!\speed_up|temp\(5) & (\timer_ball|temp\(4) $ (!\speed_up|temp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ball|temp\(5),
	datab => \timer_ball|temp\(4),
	datac => \speed_up|temp\(5),
	datad => \speed_up|temp\(4),
	combout => \timer_ball|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y15_N2
\timer_ball|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|Equal0~3_combout\ = (\timer_ball|temp\(11) & (\speed_up|temp\(11) & (\timer_ball|temp\(10) $ (\speed_up|temp\(10))))) # (!\timer_ball|temp\(11) & (!\speed_up|temp\(11) & (\timer_ball|temp\(10) $ (\speed_up|temp\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ball|temp\(11),
	datab => \timer_ball|temp\(10),
	datac => \speed_up|temp\(11),
	datad => \speed_up|temp\(10),
	combout => \timer_ball|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y14_N28
\timer_ball|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|Equal0~4_combout\ = (\timer_ball|Equal0~1_combout\ & (\timer_ball|Equal0~2_combout\ & (\timer_ball|Equal0~0_combout\ & \timer_ball|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ball|Equal0~1_combout\,
	datab => \timer_ball|Equal0~2_combout\,
	datac => \timer_ball|Equal0~0_combout\,
	datad => \timer_ball|Equal0~3_combout\,
	combout => \timer_ball|Equal0~4_combout\);

-- Location: LCCOMB_X19_Y14_N26
\timer_ball|Equal0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_ball|Equal0~combout\ = LCELL((\timer_ball|Equal0~13_combout\ & (\timer_ball|Equal0~10_combout\ & (\timer_ball|Equal0~9_combout\ & \timer_ball|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_ball|Equal0~13_combout\,
	datab => \timer_ball|Equal0~10_combout\,
	datac => \timer_ball|Equal0~9_combout\,
	datad => \timer_ball|Equal0~4_combout\,
	combout => \timer_ball|Equal0~combout\);

-- Location: CLKCTRL_G14
\timer_ball|Equal0~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \timer_ball|Equal0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \timer_ball|Equal0~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y18_N6
\ball_logic|xb_next~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_logic|xb_next~0_combout\ = \ball_logic|tempX\(0) $ (((\ball_FSM|pr_state.left_up~q\) # ((\ball_FSM|pr_state.mov_left~q\) # (\ball_FSM|pr_state.left_down~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|pr_state.left_up~q\,
	datab => \ball_logic|tempX\(0),
	datac => \ball_FSM|pr_state.mov_left~q\,
	datad => \ball_FSM|pr_state.left_down~q\,
	combout => \ball_logic|xb_next~0_combout\);

-- Location: LCCOMB_X19_Y18_N16
\ball_logic|xb_next[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_logic|xb_next[0]~1_combout\ = (\ball_FSM|WideOr3~0_combout\ & ((!\ball_logic|tempX\(0)))) # (!\ball_FSM|WideOr3~0_combout\ & (\ball_logic|xb_next~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball_logic|xb_next~0_combout\,
	datac => \ball_logic|tempX\(0),
	datad => \ball_FSM|WideOr3~0_combout\,
	combout => \ball_logic|xb_next[0]~1_combout\);

-- Location: FF_X19_Y18_N17
\ball_logic|tempX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \timer_ball|Equal0~clkctrl_outclk\,
	d => \ball_logic|xb_next[0]~1_combout\,
	clrn => \ALT_INV_rst_play~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_logic|tempX\(0));

-- Location: LCCOMB_X20_Y18_N24
\ball_FSM|Equal10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Equal10~14_combout\ = (\ball_logic|tempX\(0) & (!\ball_logic|tempX\(1) & (!\ball_logic|tempX\(3) & !\ball_logic|tempX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempX\(0),
	datab => \ball_logic|tempX\(1),
	datac => \ball_logic|tempX\(3),
	datad => \ball_logic|tempX\(2),
	combout => \ball_FSM|Equal10~14_combout\);

-- Location: LCCOMB_X21_Y16_N26
\ball_FSM|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Selector1~0_combout\ = (\ball_FSM|Equal10~14_combout\ & ((\ball_FSM|Selector6~2_combout\) # ((\ball_FSM|pr_state.mov_right~q\) # (\ball_FSM|Selector5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|Equal10~14_combout\,
	datab => \ball_FSM|Selector6~2_combout\,
	datac => \ball_FSM|pr_state.mov_right~q\,
	datad => \ball_FSM|Selector5~4_combout\,
	combout => \ball_FSM|Selector1~0_combout\);

-- Location: FF_X21_Y16_N27
\ball_FSM|pr_state.mark1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball_FSM|Selector1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball_FSM|pr_state.mark1~q\);

-- Location: LCCOMB_X21_Y16_N24
\score_logic|temp1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score_logic|temp1[0]~0_combout\ = \ball_FSM|pr_state.mark1~q\ $ (\score_logic|temp1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|pr_state.mark1~q\,
	datac => \score_logic|temp1\(0),
	combout => \score_logic|temp1[0]~0_combout\);

-- Location: FF_X21_Y16_N25
\score_logic|temp1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \score_logic|temp1[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \score_logic|temp1\(0));

-- Location: LCCOMB_X21_Y16_N14
\score_logic|temp1[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score_logic|temp1[1]~1_combout\ = \score_logic|temp1\(1) $ (((\ball_FSM|pr_state.mark1~q\ & \score_logic|temp1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|pr_state.mark1~q\,
	datab => \score_logic|temp1\(0),
	datac => \score_logic|temp1\(1),
	combout => \score_logic|temp1[1]~1_combout\);

-- Location: FF_X21_Y16_N15
\score_logic|temp1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \score_logic|temp1[1]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \score_logic|temp1\(1));

-- Location: LCCOMB_X21_Y16_N20
\score_logic|temp1[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score_logic|temp1[2]~2_combout\ = \score_logic|temp1\(2) $ (((\ball_FSM|pr_state.mark1~q\ & (\score_logic|temp1\(1) & \score_logic|temp1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|pr_state.mark1~q\,
	datab => \score_logic|temp1\(1),
	datac => \score_logic|temp1\(2),
	datad => \score_logic|temp1\(0),
	combout => \score_logic|temp1[2]~2_combout\);

-- Location: FF_X21_Y16_N21
\score_logic|temp1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \score_logic|temp1[2]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \score_logic|temp1\(2));

-- Location: LCCOMB_X21_Y16_N0
\score_logic|temp1[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score_logic|temp1[3]~3_combout\ = (\ball_FSM|pr_state.mark1~q\ & (\score_logic|temp1\(0) & (\score_logic|temp1\(1) & \score_logic|temp1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|pr_state.mark1~q\,
	datab => \score_logic|temp1\(0),
	datac => \score_logic|temp1\(1),
	datad => \score_logic|temp1\(2),
	combout => \score_logic|temp1[3]~3_combout\);

-- Location: LCCOMB_X21_Y16_N6
\score_logic|temp1[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score_logic|temp1[3]~4_combout\ = \score_logic|temp1\(3) $ (\score_logic|temp1[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \score_logic|temp1\(3),
	datad => \score_logic|temp1[3]~3_combout\,
	combout => \score_logic|temp1[3]~4_combout\);

-- Location: FF_X21_Y16_N7
\score_logic|temp1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \score_logic|temp1[3]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \score_logic|temp1\(3));

-- Location: LCCOMB_X22_Y16_N4
\bin_to_sseg_1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_1|Mux6~0_combout\ = (\score_logic|temp1\(2) & (!\score_logic|temp1\(1) & (\score_logic|temp1\(3) $ (!\score_logic|temp1\(0))))) # (!\score_logic|temp1\(2) & (\score_logic|temp1\(0) & (\score_logic|temp1\(1) $ (!\score_logic|temp1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \score_logic|temp1\(1),
	datab => \score_logic|temp1\(2),
	datac => \score_logic|temp1\(3),
	datad => \score_logic|temp1\(0),
	combout => \bin_to_sseg_1|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y16_N18
\bin_to_sseg_1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_1|Mux5~0_combout\ = (\score_logic|temp1\(1) & ((\score_logic|temp1\(0) & ((\score_logic|temp1\(3)))) # (!\score_logic|temp1\(0) & (\score_logic|temp1\(2))))) # (!\score_logic|temp1\(1) & (\score_logic|temp1\(2) & (\score_logic|temp1\(3) $ 
-- (\score_logic|temp1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \score_logic|temp1\(1),
	datab => \score_logic|temp1\(2),
	datac => \score_logic|temp1\(3),
	datad => \score_logic|temp1\(0),
	combout => \bin_to_sseg_1|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y16_N8
\bin_to_sseg_1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_1|Mux4~0_combout\ = (\score_logic|temp1\(2) & (\score_logic|temp1\(3) & ((\score_logic|temp1\(1)) # (!\score_logic|temp1\(0))))) # (!\score_logic|temp1\(2) & (\score_logic|temp1\(1) & (!\score_logic|temp1\(3) & !\score_logic|temp1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \score_logic|temp1\(1),
	datab => \score_logic|temp1\(2),
	datac => \score_logic|temp1\(3),
	datad => \score_logic|temp1\(0),
	combout => \bin_to_sseg_1|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y16_N10
\bin_to_sseg_1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_1|Mux3~0_combout\ = (\score_logic|temp1\(1) & ((\score_logic|temp1\(2) & ((\score_logic|temp1\(0)))) # (!\score_logic|temp1\(2) & (\score_logic|temp1\(3) & !\score_logic|temp1\(0))))) # (!\score_logic|temp1\(1) & (!\score_logic|temp1\(3) & 
-- (\score_logic|temp1\(2) $ (\score_logic|temp1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \score_logic|temp1\(1),
	datab => \score_logic|temp1\(2),
	datac => \score_logic|temp1\(3),
	datad => \score_logic|temp1\(0),
	combout => \bin_to_sseg_1|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y16_N12
\bin_to_sseg_1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_1|Mux2~0_combout\ = (\score_logic|temp1\(1) & (!\score_logic|temp1\(3) & (\score_logic|temp1\(0)))) # (!\score_logic|temp1\(1) & ((\score_logic|temp1\(2) & (!\score_logic|temp1\(3))) # (!\score_logic|temp1\(2) & ((\score_logic|temp1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \score_logic|temp1\(3),
	datab => \score_logic|temp1\(0),
	datac => \score_logic|temp1\(1),
	datad => \score_logic|temp1\(2),
	combout => \bin_to_sseg_1|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y16_N28
\bin_to_sseg_1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_1|Mux1~0_combout\ = (\score_logic|temp1\(1) & (!\score_logic|temp1\(3) & ((\score_logic|temp1\(0)) # (!\score_logic|temp1\(2))))) # (!\score_logic|temp1\(1) & (\score_logic|temp1\(0) & (\score_logic|temp1\(2) $ (!\score_logic|temp1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \score_logic|temp1\(1),
	datab => \score_logic|temp1\(2),
	datac => \score_logic|temp1\(3),
	datad => \score_logic|temp1\(0),
	combout => \bin_to_sseg_1|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y16_N2
\bin_to_sseg_1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_1|Mux0~0_combout\ = (\score_logic|temp1\(0) & ((\score_logic|temp1\(3)) # (\score_logic|temp1\(1) $ (\score_logic|temp1\(2))))) # (!\score_logic|temp1\(0) & ((\score_logic|temp1\(1)) # (\score_logic|temp1\(2) $ (\score_logic|temp1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \score_logic|temp1\(1),
	datab => \score_logic|temp1\(2),
	datac => \score_logic|temp1\(3),
	datad => \score_logic|temp1\(0),
	combout => \bin_to_sseg_1|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y27_N20
\score_logic|temp2[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score_logic|temp2[0]~0_combout\ = \ball_FSM|pr_state.mark2~q\ $ (\score_logic|temp2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball_FSM|pr_state.mark2~q\,
	datac => \score_logic|temp2\(0),
	combout => \score_logic|temp2[0]~0_combout\);

-- Location: FF_X27_Y27_N21
\score_logic|temp2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \score_logic|temp2[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \score_logic|temp2\(0));

-- Location: LCCOMB_X27_Y27_N6
\score_logic|temp2[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score_logic|temp2[1]~1_combout\ = \score_logic|temp2\(1) $ (((\ball_FSM|pr_state.mark2~q\ & \score_logic|temp2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball_FSM|pr_state.mark2~q\,
	datac => \score_logic|temp2\(1),
	datad => \score_logic|temp2\(0),
	combout => \score_logic|temp2[1]~1_combout\);

-- Location: FF_X27_Y27_N7
\score_logic|temp2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \score_logic|temp2[1]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \score_logic|temp2\(1));

-- Location: LCCOMB_X27_Y27_N24
\score_logic|temp2[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score_logic|temp2[2]~2_combout\ = \score_logic|temp2\(2) $ (((\score_logic|temp2\(1) & (\ball_FSM|pr_state.mark2~q\ & \score_logic|temp2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \score_logic|temp2\(1),
	datab => \ball_FSM|pr_state.mark2~q\,
	datac => \score_logic|temp2\(2),
	datad => \score_logic|temp2\(0),
	combout => \score_logic|temp2[2]~2_combout\);

-- Location: FF_X27_Y27_N25
\score_logic|temp2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \score_logic|temp2[2]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \score_logic|temp2\(2));

-- Location: LCCOMB_X27_Y27_N10
\score_logic|temp2[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score_logic|temp2[3]~3_combout\ = (\score_logic|temp2\(1) & (\score_logic|temp2\(2) & (\ball_FSM|pr_state.mark2~q\ & \score_logic|temp2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \score_logic|temp2\(1),
	datab => \score_logic|temp2\(2),
	datac => \ball_FSM|pr_state.mark2~q\,
	datad => \score_logic|temp2\(0),
	combout => \score_logic|temp2[3]~3_combout\);

-- Location: LCCOMB_X27_Y27_N26
\score_logic|temp2[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \score_logic|temp2[3]~4_combout\ = \score_logic|temp2\(3) $ (\score_logic|temp2[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \score_logic|temp2\(3),
	datad => \score_logic|temp2[3]~3_combout\,
	combout => \score_logic|temp2[3]~4_combout\);

-- Location: FF_X27_Y27_N27
\score_logic|temp2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \score_logic|temp2[3]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \score_logic|temp2\(3));

-- Location: LCCOMB_X27_Y27_N12
\bin_to_sseg_2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_2|Mux6~0_combout\ = (\score_logic|temp2\(2) & (!\score_logic|temp2\(1) & (\score_logic|temp2\(3) $ (!\score_logic|temp2\(0))))) # (!\score_logic|temp2\(2) & (\score_logic|temp2\(0) & (\score_logic|temp2\(1) $ (!\score_logic|temp2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \score_logic|temp2\(1),
	datab => \score_logic|temp2\(2),
	datac => \score_logic|temp2\(3),
	datad => \score_logic|temp2\(0),
	combout => \bin_to_sseg_2|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y27_N22
\bin_to_sseg_2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_2|Mux5~0_combout\ = (\score_logic|temp2\(1) & ((\score_logic|temp2\(0) & ((\score_logic|temp2\(3)))) # (!\score_logic|temp2\(0) & (\score_logic|temp2\(2))))) # (!\score_logic|temp2\(1) & (\score_logic|temp2\(2) & (\score_logic|temp2\(3) $ 
-- (\score_logic|temp2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \score_logic|temp2\(1),
	datab => \score_logic|temp2\(2),
	datac => \score_logic|temp2\(3),
	datad => \score_logic|temp2\(0),
	combout => \bin_to_sseg_2|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y27_N4
\bin_to_sseg_2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_2|Mux4~0_combout\ = (\score_logic|temp2\(2) & (\score_logic|temp2\(3) & ((\score_logic|temp2\(1)) # (!\score_logic|temp2\(0))))) # (!\score_logic|temp2\(2) & (\score_logic|temp2\(1) & (!\score_logic|temp2\(3) & !\score_logic|temp2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \score_logic|temp2\(1),
	datab => \score_logic|temp2\(2),
	datac => \score_logic|temp2\(3),
	datad => \score_logic|temp2\(0),
	combout => \bin_to_sseg_2|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y27_N2
\bin_to_sseg_2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_2|Mux3~0_combout\ = (\score_logic|temp2\(1) & ((\score_logic|temp2\(2) & ((\score_logic|temp2\(0)))) # (!\score_logic|temp2\(2) & (\score_logic|temp2\(3) & !\score_logic|temp2\(0))))) # (!\score_logic|temp2\(1) & (!\score_logic|temp2\(3) & 
-- (\score_logic|temp2\(2) $ (\score_logic|temp2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \score_logic|temp2\(1),
	datab => \score_logic|temp2\(2),
	datac => \score_logic|temp2\(3),
	datad => \score_logic|temp2\(0),
	combout => \bin_to_sseg_2|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y27_N28
\bin_to_sseg_2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_2|Mux2~0_combout\ = (\score_logic|temp2\(1) & (((!\score_logic|temp2\(3) & \score_logic|temp2\(0))))) # (!\score_logic|temp2\(1) & ((\score_logic|temp2\(2) & (!\score_logic|temp2\(3))) # (!\score_logic|temp2\(2) & 
-- ((\score_logic|temp2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \score_logic|temp2\(1),
	datab => \score_logic|temp2\(2),
	datac => \score_logic|temp2\(3),
	datad => \score_logic|temp2\(0),
	combout => \bin_to_sseg_2|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y27_N18
\bin_to_sseg_2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_2|Mux1~0_combout\ = (\score_logic|temp2\(1) & (!\score_logic|temp2\(3) & ((\score_logic|temp2\(0)) # (!\score_logic|temp2\(2))))) # (!\score_logic|temp2\(1) & (\score_logic|temp2\(0) & (\score_logic|temp2\(2) $ (!\score_logic|temp2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \score_logic|temp2\(1),
	datab => \score_logic|temp2\(2),
	datac => \score_logic|temp2\(3),
	datad => \score_logic|temp2\(0),
	combout => \bin_to_sseg_2|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y27_N0
\bin_to_sseg_2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_2|Mux0~0_combout\ = (\score_logic|temp2\(0) & ((\score_logic|temp2\(3)) # (\score_logic|temp2\(1) $ (\score_logic|temp2\(2))))) # (!\score_logic|temp2\(0) & ((\score_logic|temp2\(1)) # (\score_logic|temp2\(2) $ (\score_logic|temp2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \score_logic|temp2\(1),
	datab => \score_logic|temp2\(2),
	datac => \score_logic|temp2\(3),
	datad => \score_logic|temp2\(0),
	combout => \bin_to_sseg_2|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y17_N12
\left_display|pr_state.LED_37~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_37~feeder_combout\ = \left_display|pr_state.LED_36~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_36~q\,
	combout => \left_display|pr_state.LED_37~feeder_combout\);

-- Location: LCCOMB_X28_Y19_N0
\timer_fps|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|Add0~0_combout\ = \timer_fps|temp\(0) $ (VCC)
-- \timer_fps|Add0~1\ = CARRY(\timer_fps|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_fps|temp\(0),
	datad => VCC,
	combout => \timer_fps|Add0~0_combout\,
	cout => \timer_fps|Add0~1\);

-- Location: LCCOMB_X27_Y19_N6
\timer_fps|count_next[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|count_next[0]~6_combout\ = (!\timer_fps|Equal0~4_combout\ & \timer_fps|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_fps|Equal0~4_combout\,
	datac => \timer_fps|Add0~0_combout\,
	combout => \timer_fps|count_next[0]~6_combout\);

-- Location: FF_X27_Y19_N7
\timer_fps|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_fps|count_next[0]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fps|temp\(0));

-- Location: LCCOMB_X28_Y19_N2
\timer_fps|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|Add0~2_combout\ = (\timer_fps|temp\(1) & (!\timer_fps|Add0~1\)) # (!\timer_fps|temp\(1) & ((\timer_fps|Add0~1\) # (GND)))
-- \timer_fps|Add0~3\ = CARRY((!\timer_fps|Add0~1\) # (!\timer_fps|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_fps|temp\(1),
	datad => VCC,
	cin => \timer_fps|Add0~1\,
	combout => \timer_fps|Add0~2_combout\,
	cout => \timer_fps|Add0~3\);

-- Location: FF_X28_Y19_N3
\timer_fps|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_fps|Add0~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fps|temp\(1));

-- Location: LCCOMB_X28_Y19_N4
\timer_fps|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|Add0~4_combout\ = (\timer_fps|temp\(2) & (\timer_fps|Add0~3\ $ (GND))) # (!\timer_fps|temp\(2) & (!\timer_fps|Add0~3\ & VCC))
-- \timer_fps|Add0~5\ = CARRY((\timer_fps|temp\(2) & !\timer_fps|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fps|temp\(2),
	datad => VCC,
	cin => \timer_fps|Add0~3\,
	combout => \timer_fps|Add0~4_combout\,
	cout => \timer_fps|Add0~5\);

-- Location: LCCOMB_X27_Y19_N14
\timer_fps|count_next[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|count_next[2]~5_combout\ = (!\timer_fps|Equal0~4_combout\ & \timer_fps|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_fps|Equal0~4_combout\,
	datad => \timer_fps|Add0~4_combout\,
	combout => \timer_fps|count_next[2]~5_combout\);

-- Location: FF_X27_Y19_N15
\timer_fps|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_fps|count_next[2]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fps|temp\(2));

-- Location: LCCOMB_X28_Y19_N6
\timer_fps|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|Add0~6_combout\ = (\timer_fps|temp\(3) & (!\timer_fps|Add0~5\)) # (!\timer_fps|temp\(3) & ((\timer_fps|Add0~5\) # (GND)))
-- \timer_fps|Add0~7\ = CARRY((!\timer_fps|Add0~5\) # (!\timer_fps|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fps|temp\(3),
	datad => VCC,
	cin => \timer_fps|Add0~5\,
	combout => \timer_fps|Add0~6_combout\,
	cout => \timer_fps|Add0~7\);

-- Location: LCCOMB_X27_Y19_N16
\timer_fps|count_next[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|count_next[3]~4_combout\ = (!\timer_fps|Equal0~4_combout\ & \timer_fps|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_fps|Equal0~4_combout\,
	datad => \timer_fps|Add0~6_combout\,
	combout => \timer_fps|count_next[3]~4_combout\);

-- Location: FF_X27_Y19_N17
\timer_fps|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_fps|count_next[3]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fps|temp\(3));

-- Location: LCCOMB_X27_Y19_N12
\timer_fps|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|Equal0~3_combout\ = (!\timer_fps|temp\(0) & (\timer_fps|temp\(3) & (\timer_fps|temp\(2) & !\timer_fps|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fps|temp\(0),
	datab => \timer_fps|temp\(3),
	datac => \timer_fps|temp\(2),
	datad => \timer_fps|temp\(1),
	combout => \timer_fps|Equal0~3_combout\);

-- Location: LCCOMB_X28_Y19_N8
\timer_fps|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|Add0~8_combout\ = (\timer_fps|temp\(4) & (\timer_fps|Add0~7\ $ (GND))) # (!\timer_fps|temp\(4) & (!\timer_fps|Add0~7\ & VCC))
-- \timer_fps|Add0~9\ = CARRY((\timer_fps|temp\(4) & !\timer_fps|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fps|temp\(4),
	datad => VCC,
	cin => \timer_fps|Add0~7\,
	combout => \timer_fps|Add0~8_combout\,
	cout => \timer_fps|Add0~9\);

-- Location: LCCOMB_X27_Y19_N2
\timer_fps|count_next[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|count_next[4]~3_combout\ = (!\timer_fps|Equal0~4_combout\ & \timer_fps|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_fps|Equal0~4_combout\,
	datac => \timer_fps|Add0~8_combout\,
	combout => \timer_fps|count_next[4]~3_combout\);

-- Location: FF_X27_Y19_N3
\timer_fps|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_fps|count_next[4]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fps|temp\(4));

-- Location: LCCOMB_X28_Y19_N10
\timer_fps|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|Add0~10_combout\ = (\timer_fps|temp\(5) & (!\timer_fps|Add0~9\)) # (!\timer_fps|temp\(5) & ((\timer_fps|Add0~9\) # (GND)))
-- \timer_fps|Add0~11\ = CARRY((!\timer_fps|Add0~9\) # (!\timer_fps|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fps|temp\(5),
	datad => VCC,
	cin => \timer_fps|Add0~9\,
	combout => \timer_fps|Add0~10_combout\,
	cout => \timer_fps|Add0~11\);

-- Location: FF_X28_Y19_N11
\timer_fps|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_fps|Add0~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fps|temp\(5));

-- Location: LCCOMB_X28_Y19_N12
\timer_fps|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|Add0~12_combout\ = (\timer_fps|temp\(6) & (\timer_fps|Add0~11\ $ (GND))) # (!\timer_fps|temp\(6) & (!\timer_fps|Add0~11\ & VCC))
-- \timer_fps|Add0~13\ = CARRY((\timer_fps|temp\(6) & !\timer_fps|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_fps|temp\(6),
	datad => VCC,
	cin => \timer_fps|Add0~11\,
	combout => \timer_fps|Add0~12_combout\,
	cout => \timer_fps|Add0~13\);

-- Location: LCCOMB_X27_Y19_N30
\timer_fps|count_next[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|count_next[6]~2_combout\ = (!\timer_fps|Equal0~4_combout\ & \timer_fps|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_fps|Equal0~4_combout\,
	datac => \timer_fps|Add0~12_combout\,
	combout => \timer_fps|count_next[6]~2_combout\);

-- Location: FF_X27_Y19_N31
\timer_fps|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_fps|count_next[6]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fps|temp\(6));

-- Location: LCCOMB_X28_Y19_N14
\timer_fps|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|Add0~14_combout\ = (\timer_fps|temp\(7) & (!\timer_fps|Add0~13\)) # (!\timer_fps|temp\(7) & ((\timer_fps|Add0~13\) # (GND)))
-- \timer_fps|Add0~15\ = CARRY((!\timer_fps|Add0~13\) # (!\timer_fps|temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_fps|temp\(7),
	datad => VCC,
	cin => \timer_fps|Add0~13\,
	combout => \timer_fps|Add0~14_combout\,
	cout => \timer_fps|Add0~15\);

-- Location: FF_X28_Y19_N15
\timer_fps|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_fps|Add0~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fps|temp\(7));

-- Location: LCCOMB_X28_Y19_N16
\timer_fps|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|Add0~16_combout\ = (\timer_fps|temp\(8) & (\timer_fps|Add0~15\ $ (GND))) # (!\timer_fps|temp\(8) & (!\timer_fps|Add0~15\ & VCC))
-- \timer_fps|Add0~17\ = CARRY((\timer_fps|temp\(8) & !\timer_fps|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_fps|temp\(8),
	datad => VCC,
	cin => \timer_fps|Add0~15\,
	combout => \timer_fps|Add0~16_combout\,
	cout => \timer_fps|Add0~17\);

-- Location: FF_X28_Y19_N17
\timer_fps|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_fps|Add0~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fps|temp\(8));

-- Location: LCCOMB_X28_Y19_N18
\timer_fps|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|Add0~18_combout\ = (\timer_fps|temp\(9) & (!\timer_fps|Add0~17\)) # (!\timer_fps|temp\(9) & ((\timer_fps|Add0~17\) # (GND)))
-- \timer_fps|Add0~19\ = CARRY((!\timer_fps|Add0~17\) # (!\timer_fps|temp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_fps|temp\(9),
	datad => VCC,
	cin => \timer_fps|Add0~17\,
	combout => \timer_fps|Add0~18_combout\,
	cout => \timer_fps|Add0~19\);

-- Location: FF_X28_Y19_N19
\timer_fps|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_fps|Add0~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fps|temp\(9));

-- Location: LCCOMB_X28_Y19_N20
\timer_fps|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|Add0~20_combout\ = (\timer_fps|temp\(10) & (\timer_fps|Add0~19\ $ (GND))) # (!\timer_fps|temp\(10) & (!\timer_fps|Add0~19\ & VCC))
-- \timer_fps|Add0~21\ = CARRY((\timer_fps|temp\(10) & !\timer_fps|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fps|temp\(10),
	datad => VCC,
	cin => \timer_fps|Add0~19\,
	combout => \timer_fps|Add0~20_combout\,
	cout => \timer_fps|Add0~21\);

-- Location: LCCOMB_X27_Y19_N10
\timer_fps|count_next[10]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|count_next[10]~1_combout\ = (!\timer_fps|Equal0~4_combout\ & \timer_fps|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_fps|Equal0~4_combout\,
	datac => \timer_fps|Add0~20_combout\,
	combout => \timer_fps|count_next[10]~1_combout\);

-- Location: FF_X27_Y19_N11
\timer_fps|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_fps|count_next[10]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fps|temp\(10));

-- Location: LCCOMB_X28_Y19_N22
\timer_fps|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|Add0~22_combout\ = (\timer_fps|temp\(11) & (!\timer_fps|Add0~21\)) # (!\timer_fps|temp\(11) & ((\timer_fps|Add0~21\) # (GND)))
-- \timer_fps|Add0~23\ = CARRY((!\timer_fps|Add0~21\) # (!\timer_fps|temp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fps|temp\(11),
	datad => VCC,
	cin => \timer_fps|Add0~21\,
	combout => \timer_fps|Add0~22_combout\,
	cout => \timer_fps|Add0~23\);

-- Location: FF_X28_Y19_N23
\timer_fps|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_fps|Add0~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fps|temp\(11));

-- Location: LCCOMB_X27_Y19_N28
\timer_fps|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|Equal0~1_combout\ = (\timer_fps|temp\(10) & (!\timer_fps|temp\(9) & (!\timer_fps|temp\(11) & !\timer_fps|temp\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fps|temp\(10),
	datab => \timer_fps|temp\(9),
	datac => \timer_fps|temp\(11),
	datad => \timer_fps|temp\(8),
	combout => \timer_fps|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y19_N22
\timer_fps|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|Equal0~2_combout\ = (\timer_fps|temp\(6) & (\timer_fps|temp\(4) & (!\timer_fps|temp\(5) & !\timer_fps|temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fps|temp\(6),
	datab => \timer_fps|temp\(4),
	datac => \timer_fps|temp\(5),
	datad => \timer_fps|temp\(7),
	combout => \timer_fps|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y19_N24
\timer_fps|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|Add0~24_combout\ = (\timer_fps|temp\(12) & (\timer_fps|Add0~23\ $ (GND))) # (!\timer_fps|temp\(12) & (!\timer_fps|Add0~23\ & VCC))
-- \timer_fps|Add0~25\ = CARRY((\timer_fps|temp\(12) & !\timer_fps|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_fps|temp\(12),
	datad => VCC,
	cin => \timer_fps|Add0~23\,
	combout => \timer_fps|Add0~24_combout\,
	cout => \timer_fps|Add0~25\);

-- Location: FF_X28_Y19_N25
\timer_fps|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_fps|Add0~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fps|temp\(12));

-- Location: LCCOMB_X28_Y19_N26
\timer_fps|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|Add0~26_combout\ = (\timer_fps|temp\(13) & (!\timer_fps|Add0~25\)) # (!\timer_fps|temp\(13) & ((\timer_fps|Add0~25\) # (GND)))
-- \timer_fps|Add0~27\ = CARRY((!\timer_fps|Add0~25\) # (!\timer_fps|temp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fps|temp\(13),
	datad => VCC,
	cin => \timer_fps|Add0~25\,
	combout => \timer_fps|Add0~26_combout\,
	cout => \timer_fps|Add0~27\);

-- Location: FF_X28_Y19_N27
\timer_fps|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_fps|Add0~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fps|temp\(13));

-- Location: LCCOMB_X28_Y19_N28
\timer_fps|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|Add0~28_combout\ = (\timer_fps|temp\(14) & (\timer_fps|Add0~27\ $ (GND))) # (!\timer_fps|temp\(14) & (!\timer_fps|Add0~27\ & VCC))
-- \timer_fps|Add0~29\ = CARRY((\timer_fps|temp\(14) & !\timer_fps|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fps|temp\(14),
	datad => VCC,
	cin => \timer_fps|Add0~27\,
	combout => \timer_fps|Add0~28_combout\,
	cout => \timer_fps|Add0~29\);

-- Location: LCCOMB_X27_Y19_N0
\timer_fps|count_next[14]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|count_next[14]~0_combout\ = (!\timer_fps|Equal0~4_combout\ & \timer_fps|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_fps|Equal0~4_combout\,
	datad => \timer_fps|Add0~28_combout\,
	combout => \timer_fps|count_next[14]~0_combout\);

-- Location: FF_X27_Y19_N1
\timer_fps|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_fps|count_next[14]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fps|temp\(14));

-- Location: LCCOMB_X28_Y19_N30
\timer_fps|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|Add0~30_combout\ = \timer_fps|temp\(15) $ (\timer_fps|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fps|temp\(15),
	cin => \timer_fps|Add0~29\,
	combout => \timer_fps|Add0~30_combout\);

-- Location: FF_X28_Y19_N31
\timer_fps|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_fps|Add0~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_fps|temp\(15));

-- Location: LCCOMB_X27_Y19_N24
\timer_fps|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|Equal0~0_combout\ = (!\timer_fps|temp\(15) & (\timer_fps|temp\(14) & (!\timer_fps|temp\(12) & !\timer_fps|temp\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fps|temp\(15),
	datab => \timer_fps|temp\(14),
	datac => \timer_fps|temp\(12),
	datad => \timer_fps|temp\(13),
	combout => \timer_fps|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y19_N8
\timer_fps|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_fps|Equal0~4_combout\ = (\timer_fps|Equal0~3_combout\ & (\timer_fps|Equal0~1_combout\ & (\timer_fps|Equal0~2_combout\ & \timer_fps|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_fps|Equal0~3_combout\,
	datab => \timer_fps|Equal0~1_combout\,
	datac => \timer_fps|Equal0~2_combout\,
	datad => \timer_fps|Equal0~0_combout\,
	combout => \timer_fps|Equal0~4_combout\);

-- Location: FF_X27_Y17_N13
\left_display|pr_state.LED_37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_37~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_37~q\);

-- Location: LCCOMB_X24_Y19_N0
\left_display|pr_state.LED_38~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_38~feeder_combout\ = \left_display|pr_state.LED_37~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_37~q\,
	combout => \left_display|pr_state.LED_38~feeder_combout\);

-- Location: FF_X24_Y19_N1
\left_display|pr_state.LED_38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_38~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_38~q\);

-- Location: LCCOMB_X24_Y19_N6
\left_display|pr_state.LED_39~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_39~feeder_combout\ = \left_display|pr_state.LED_38~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_38~q\,
	combout => \left_display|pr_state.LED_39~feeder_combout\);

-- Location: FF_X24_Y19_N7
\left_display|pr_state.LED_39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_39~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_39~q\);

-- Location: LCCOMB_X26_Y16_N12
\left_display|pr_state.LED_40~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_40~feeder_combout\ = \left_display|pr_state.LED_39~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_39~q\,
	combout => \left_display|pr_state.LED_40~feeder_combout\);

-- Location: FF_X26_Y16_N13
\left_display|pr_state.LED_40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_40~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_40~q\);

-- Location: LCCOMB_X26_Y16_N16
\left_display|pr_state.LED_41~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_41~feeder_combout\ = \left_display|pr_state.LED_40~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_40~q\,
	combout => \left_display|pr_state.LED_41~feeder_combout\);

-- Location: FF_X26_Y16_N17
\left_display|pr_state.LED_41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_41~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_41~q\);

-- Location: LCCOMB_X26_Y16_N30
\left_display|pr_state.LED_42~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_42~feeder_combout\ = \left_display|pr_state.LED_41~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_41~q\,
	combout => \left_display|pr_state.LED_42~feeder_combout\);

-- Location: FF_X26_Y16_N31
\left_display|pr_state.LED_42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_42~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_42~q\);

-- Location: FF_X26_Y16_N27
\left_display|pr_state.LED_43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_42~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_43~q\);

-- Location: FF_X26_Y16_N5
\left_display|pr_state.LED_44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_43~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_44~q\);

-- Location: FF_X26_Y16_N11
\left_display|pr_state.LED_45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_44~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_45~q\);

-- Location: LCCOMB_X26_Y16_N22
\left_display|pr_state.LED_46~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_46~feeder_combout\ = \left_display|pr_state.LED_45~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_45~q\,
	combout => \left_display|pr_state.LED_46~feeder_combout\);

-- Location: FF_X26_Y16_N23
\left_display|pr_state.LED_46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_46~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_46~q\);

-- Location: LCCOMB_X27_Y17_N4
\left_display|pr_state.LED_47~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_47~feeder_combout\ = \left_display|pr_state.LED_46~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_46~q\,
	combout => \left_display|pr_state.LED_47~feeder_combout\);

-- Location: FF_X27_Y17_N5
\left_display|pr_state.LED_47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_47~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_47~q\);

-- Location: LCCOMB_X27_Y19_N18
\left_display|pr_state.LED_48~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_48~feeder_combout\ = \left_display|pr_state.LED_47~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \left_display|pr_state.LED_47~q\,
	combout => \left_display|pr_state.LED_48~feeder_combout\);

-- Location: FF_X27_Y19_N19
\left_display|pr_state.LED_48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_48~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_48~q\);

-- Location: LCCOMB_X27_Y16_N8
\left_display|pr_state.LED_49~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_49~feeder_combout\ = \left_display|pr_state.LED_48~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_48~q\,
	combout => \left_display|pr_state.LED_49~feeder_combout\);

-- Location: FF_X27_Y16_N9
\left_display|pr_state.LED_49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_49~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_49~q\);

-- Location: FF_X27_Y16_N11
\left_display|pr_state.LED_50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_49~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_50~q\);

-- Location: LCCOMB_X27_Y16_N12
\left_display|pr_state.LED_51~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_51~feeder_combout\ = \left_display|pr_state.LED_50~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_50~q\,
	combout => \left_display|pr_state.LED_51~feeder_combout\);

-- Location: FF_X27_Y16_N13
\left_display|pr_state.LED_51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_51~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_51~q\);

-- Location: FF_X26_Y19_N25
\left_display|pr_state.LED_52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_51~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_52~q\);

-- Location: FF_X23_Y19_N21
\left_display|pr_state.LED_53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_52~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_53~q\);

-- Location: FF_X22_Y19_N31
\left_display|pr_state.LED_54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_53~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_54~q\);

-- Location: FF_X22_Y19_N17
\left_display|pr_state.LED_55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_54~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_55~q\);

-- Location: FF_X26_Y16_N25
\left_display|pr_state.LED_56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_55~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_56~q\);

-- Location: LCCOMB_X27_Y16_N30
\left_display|pr_state.LED_57~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_57~feeder_combout\ = \left_display|pr_state.LED_56~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_56~q\,
	combout => \left_display|pr_state.LED_57~feeder_combout\);

-- Location: FF_X27_Y16_N31
\left_display|pr_state.LED_57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_57~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_57~q\);

-- Location: FF_X27_Y16_N19
\left_display|pr_state.LED_58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_57~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_58~q\);

-- Location: LCCOMB_X27_Y16_N26
\left_display|pr_state.LED_59~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_59~feeder_combout\ = \left_display|pr_state.LED_58~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_58~q\,
	combout => \left_display|pr_state.LED_59~feeder_combout\);

-- Location: FF_X27_Y16_N27
\left_display|pr_state.LED_59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_59~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_59~q\);

-- Location: LCCOMB_X24_Y19_N24
\left_display|pr_state.LED_60~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_60~feeder_combout\ = \left_display|pr_state.LED_59~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_59~q\,
	combout => \left_display|pr_state.LED_60~feeder_combout\);

-- Location: FF_X24_Y19_N25
\left_display|pr_state.LED_60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_60~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_60~q\);

-- Location: FF_X22_Y19_N7
\left_display|pr_state.LED_61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_60~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_61~q\);

-- Location: FF_X23_Y19_N31
\left_display|pr_state.LED_62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_61~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_62~q\);

-- Location: FF_X22_Y19_N11
\left_display|pr_state.LED_63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_62~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_63~q\);

-- Location: LCCOMB_X26_Y15_N26
\left_display|pr_state.stby~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.stby~0_combout\ = !\left_display|pr_state.LED_63~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \left_display|pr_state.LED_63~q\,
	combout => \left_display|pr_state.stby~0_combout\);

-- Location: FF_X26_Y15_N27
\left_display|pr_state.stby\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.stby~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.stby~q\);

-- Location: LCCOMB_X26_Y15_N2
\left_display|pr_state.LED_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_0~0_combout\ = !\left_display|pr_state.stby~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \left_display|pr_state.stby~q\,
	combout => \left_display|pr_state.LED_0~0_combout\);

-- Location: FF_X26_Y15_N3
\left_display|pr_state.LED_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_0~q\);

-- Location: LCCOMB_X26_Y19_N30
\left_display|pr_state.LED_1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_1~feeder_combout\ = \left_display|pr_state.LED_0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_0~q\,
	combout => \left_display|pr_state.LED_1~feeder_combout\);

-- Location: FF_X26_Y19_N31
\left_display|pr_state.LED_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_1~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_1~q\);

-- Location: FF_X26_Y19_N29
\left_display|pr_state.LED_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_1~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_2~q\);

-- Location: LCCOMB_X26_Y19_N18
\left_display|pr_state.LED_3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_3~feeder_combout\ = \left_display|pr_state.LED_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_2~q\,
	combout => \left_display|pr_state.LED_3~feeder_combout\);

-- Location: FF_X26_Y19_N19
\left_display|pr_state.LED_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_3~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_3~q\);

-- Location: LCCOMB_X26_Y19_N6
\left_display|pr_state.LED_4~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_4~feeder_combout\ = \left_display|pr_state.LED_3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_3~q\,
	combout => \left_display|pr_state.LED_4~feeder_combout\);

-- Location: FF_X26_Y19_N7
\left_display|pr_state.LED_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_4~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_4~q\);

-- Location: LCCOMB_X26_Y17_N6
\left_display|pr_state.LED_5~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_5~feeder_combout\ = \left_display|pr_state.LED_4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_4~q\,
	combout => \left_display|pr_state.LED_5~feeder_combout\);

-- Location: FF_X26_Y17_N7
\left_display|pr_state.LED_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_5~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_5~q\);

-- Location: LCCOMB_X26_Y17_N0
\left_display|pr_state.LED_6~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_6~feeder_combout\ = \left_display|pr_state.LED_5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_5~q\,
	combout => \left_display|pr_state.LED_6~feeder_combout\);

-- Location: FF_X26_Y17_N1
\left_display|pr_state.LED_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_6~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_6~q\);

-- Location: LCCOMB_X26_Y17_N30
\left_display|pr_state.LED_7~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_7~feeder_combout\ = \left_display|pr_state.LED_6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_6~q\,
	combout => \left_display|pr_state.LED_7~feeder_combout\);

-- Location: FF_X26_Y17_N31
\left_display|pr_state.LED_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_7~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_7~q\);

-- Location: FF_X26_Y19_N27
\left_display|pr_state.LED_8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_7~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_8~q\);

-- Location: FF_X26_Y19_N23
\left_display|pr_state.LED_9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_8~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_9~q\);

-- Location: FF_X26_Y19_N5
\left_display|pr_state.LED_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_9~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_10~q\);

-- Location: FF_X26_Y19_N15
\left_display|pr_state.LED_11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_10~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_11~q\);

-- Location: FF_X26_Y19_N11
\left_display|pr_state.LED_12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_11~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_12~q\);

-- Location: LCCOMB_X26_Y17_N26
\left_display|pr_state.LED_13~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_13~feeder_combout\ = \left_display|pr_state.LED_12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_12~q\,
	combout => \left_display|pr_state.LED_13~feeder_combout\);

-- Location: FF_X26_Y17_N27
\left_display|pr_state.LED_13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_13~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_13~q\);

-- Location: FF_X26_Y17_N19
\left_display|pr_state.LED_14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_13~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_14~q\);

-- Location: LCCOMB_X26_Y17_N16
\left_display|pr_state.LED_15~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_15~feeder_combout\ = \left_display|pr_state.LED_14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_14~q\,
	combout => \left_display|pr_state.LED_15~feeder_combout\);

-- Location: FF_X26_Y17_N17
\left_display|pr_state.LED_15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_15~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_15~q\);

-- Location: LCCOMB_X26_Y19_N20
\left_display|pr_state.LED_16~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_16~feeder_combout\ = \left_display|pr_state.LED_15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \left_display|pr_state.LED_15~q\,
	combout => \left_display|pr_state.LED_16~feeder_combout\);

-- Location: FF_X26_Y19_N21
\left_display|pr_state.LED_16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_16~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_16~q\);

-- Location: LCCOMB_X24_Y19_N8
\left_display|pr_state.LED_17~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_17~feeder_combout\ = \left_display|pr_state.LED_16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_16~q\,
	combout => \left_display|pr_state.LED_17~feeder_combout\);

-- Location: FF_X24_Y19_N9
\left_display|pr_state.LED_17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_17~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_17~q\);

-- Location: LCCOMB_X27_Y19_N20
\left_display|pr_state.LED_18~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_18~feeder_combout\ = \left_display|pr_state.LED_17~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \left_display|pr_state.LED_17~q\,
	combout => \left_display|pr_state.LED_18~feeder_combout\);

-- Location: FF_X27_Y19_N21
\left_display|pr_state.LED_18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_18~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_18~q\);

-- Location: LCCOMB_X27_Y17_N14
\left_display|pr_state.LED_19~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_19~feeder_combout\ = \left_display|pr_state.LED_18~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_18~q\,
	combout => \left_display|pr_state.LED_19~feeder_combout\);

-- Location: FF_X27_Y17_N15
\left_display|pr_state.LED_19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_19~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_19~q\);

-- Location: FF_X26_Y19_N9
\left_display|pr_state.LED_20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_19~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_20~q\);

-- Location: FF_X26_Y19_N1
\left_display|pr_state.LED_21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_20~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_21~q\);

-- Location: LCCOMB_X26_Y19_N12
\left_display|pr_state.LED_22~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_22~feeder_combout\ = \left_display|pr_state.LED_21~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_21~q\,
	combout => \left_display|pr_state.LED_22~feeder_combout\);

-- Location: FF_X26_Y19_N13
\left_display|pr_state.LED_22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_22~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_22~q\);

-- Location: LCCOMB_X23_Y19_N24
\left_display|pr_state.LED_23~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_23~feeder_combout\ = \left_display|pr_state.LED_22~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_22~q\,
	combout => \left_display|pr_state.LED_23~feeder_combout\);

-- Location: FF_X23_Y19_N25
\left_display|pr_state.LED_23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_23~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_23~q\);

-- Location: LCCOMB_X26_Y19_N2
\left_display|pr_state.LED_24~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_24~feeder_combout\ = \left_display|pr_state.LED_23~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_23~q\,
	combout => \left_display|pr_state.LED_24~feeder_combout\);

-- Location: FF_X26_Y19_N3
\left_display|pr_state.LED_24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_24~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_24~q\);

-- Location: LCCOMB_X27_Y17_N16
\left_display|pr_state.LED_25~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_25~feeder_combout\ = \left_display|pr_state.LED_24~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \left_display|pr_state.LED_24~q\,
	combout => \left_display|pr_state.LED_25~feeder_combout\);

-- Location: FF_X27_Y17_N17
\left_display|pr_state.LED_25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_25~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_25~q\);

-- Location: LCCOMB_X27_Y17_N2
\left_display|pr_state.LED_26~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_26~feeder_combout\ = \left_display|pr_state.LED_25~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_25~q\,
	combout => \left_display|pr_state.LED_26~feeder_combout\);

-- Location: FF_X27_Y17_N3
\left_display|pr_state.LED_26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_26~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_26~q\);

-- Location: LCCOMB_X27_Y17_N0
\left_display|pr_state.LED_27~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_27~feeder_combout\ = \left_display|pr_state.LED_26~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_26~q\,
	combout => \left_display|pr_state.LED_27~feeder_combout\);

-- Location: FF_X27_Y17_N1
\left_display|pr_state.LED_27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_27~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_27~q\);

-- Location: LCCOMB_X26_Y19_N16
\left_display|pr_state.LED_28~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_28~feeder_combout\ = \left_display|pr_state.LED_27~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_27~q\,
	combout => \left_display|pr_state.LED_28~feeder_combout\);

-- Location: FF_X26_Y19_N17
\left_display|pr_state.LED_28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_28~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_28~q\);

-- Location: LCCOMB_X23_Y19_N4
\left_display|pr_state.LED_29~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_29~feeder_combout\ = \left_display|pr_state.LED_28~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_28~q\,
	combout => \left_display|pr_state.LED_29~feeder_combout\);

-- Location: FF_X23_Y19_N5
\left_display|pr_state.LED_29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_29~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_29~q\);

-- Location: FF_X23_Y19_N15
\left_display|pr_state.LED_30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_29~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_30~q\);

-- Location: LCCOMB_X27_Y19_N4
\left_display|pr_state.LED_31~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_31~feeder_combout\ = \left_display|pr_state.LED_30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_30~q\,
	combout => \left_display|pr_state.LED_31~feeder_combout\);

-- Location: FF_X27_Y19_N5
\left_display|pr_state.LED_31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_31~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_31~q\);

-- Location: FF_X27_Y19_N27
\left_display|pr_state.LED_32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_31~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_32~q\);

-- Location: LCCOMB_X26_Y16_N14
\left_display|pr_state.LED_33~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|pr_state.LED_33~feeder_combout\ = \left_display|pr_state.LED_32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \left_display|pr_state.LED_32~q\,
	combout => \left_display|pr_state.LED_33~feeder_combout\);

-- Location: FF_X26_Y16_N15
\left_display|pr_state.LED_33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_display|pr_state.LED_33~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_33~q\);

-- Location: FF_X26_Y16_N1
\left_display|pr_state.LED_34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_33~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_34~q\);

-- Location: FF_X26_Y16_N9
\left_display|pr_state.LED_35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_34~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_35~q\);

-- Location: FF_X26_Y17_N21
\left_display|pr_state.LED_36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \left_display|pr_state.LED_35~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \timer_fps|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_display|pr_state.LED_36~q\);

-- Location: LCCOMB_X24_Y17_N0
\left_display|WideOr8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr8~1_combout\ = (\left_display|pr_state.LED_36~q\) # ((\left_display|pr_state.LED_39~q\) # ((\left_display|pr_state.LED_37~q\) # (\left_display|pr_state.LED_38~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_36~q\,
	datab => \left_display|pr_state.LED_39~q\,
	datac => \left_display|pr_state.LED_37~q\,
	datad => \left_display|pr_state.LED_38~q\,
	combout => \left_display|WideOr8~1_combout\);

-- Location: LCCOMB_X26_Y16_N2
\left_display|WideOr8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr8~0_combout\ = (\left_display|pr_state.LED_34~q\) # ((\left_display|pr_state.LED_33~q\) # ((\left_display|pr_state.LED_32~q\) # (\left_display|pr_state.LED_35~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_34~q\,
	datab => \left_display|pr_state.LED_33~q\,
	datac => \left_display|pr_state.LED_32~q\,
	datad => \left_display|pr_state.LED_35~q\,
	combout => \left_display|WideOr8~0_combout\);

-- Location: LCCOMB_X26_Y16_N24
\left_display|WideOr8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr8~combout\ = (\left_display|WideOr8~1_combout\) # (\left_display|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|WideOr8~1_combout\,
	datad => \left_display|WideOr8~0_combout\,
	combout => \left_display|WideOr8~combout\);

-- Location: LCCOMB_X22_Y19_N30
\left_display|WideOr12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr12~1_combout\ = (\left_display|pr_state.LED_53~q\) # ((\left_display|pr_state.LED_52~q\) # ((\left_display|pr_state.LED_54~q\) # (\left_display|pr_state.LED_55~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_53~q\,
	datab => \left_display|pr_state.LED_52~q\,
	datac => \left_display|pr_state.LED_54~q\,
	datad => \left_display|pr_state.LED_55~q\,
	combout => \left_display|WideOr12~1_combout\);

-- Location: LCCOMB_X27_Y16_N2
\left_display|WideOr12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr12~0_combout\ = (\left_display|pr_state.LED_51~q\) # ((\left_display|pr_state.LED_48~q\) # ((\left_display|pr_state.LED_49~q\) # (\left_display|pr_state.LED_50~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_51~q\,
	datab => \left_display|pr_state.LED_48~q\,
	datac => \left_display|pr_state.LED_49~q\,
	datad => \left_display|pr_state.LED_50~q\,
	combout => \left_display|WideOr12~0_combout\);

-- Location: LCCOMB_X27_Y16_N24
\left_display|WideOr12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr12~combout\ = (\left_display|WideOr12~1_combout\) # (\left_display|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \left_display|WideOr12~1_combout\,
	datad => \left_display|WideOr12~0_combout\,
	combout => \left_display|WideOr12~combout\);

-- Location: LCCOMB_X22_Y17_N2
\left_matrix_vector|matrix[25]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix\(25) = (!\ball_logic|tempY\(0) & (!\ball_logic|tempY\(1) & (\ball_FSM|Equal10~0_combout\ & !\ball_logic|tempY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~0_combout\,
	datad => \ball_logic|tempY\(2),
	combout => \left_matrix_vector|matrix\(25));

-- Location: FF_X22_Y17_N3
\array_reg|array_reg[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][25]~q\);

-- Location: LCCOMB_X22_Y17_N24
\left_matrix_vector|matrix[17]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix\(17) = (\ball_logic|tempY\(0) & (!\ball_logic|tempY\(1) & (\ball_FSM|Equal10~0_combout\ & !\ball_logic|tempY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~0_combout\,
	datad => \ball_logic|tempY\(2),
	combout => \left_matrix_vector|matrix\(17));

-- Location: FF_X22_Y17_N25
\array_reg|array_reg[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][17]~q\);

-- Location: LCCOMB_X23_Y17_N14
\left_display|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector1~2_combout\ = (\array_reg|array_reg[0][25]~q\ & ((\left_display|pr_state.LED_25~q\) # ((\left_display|pr_state.LED_17~q\ & \array_reg|array_reg[0][17]~q\)))) # (!\array_reg|array_reg[0][25]~q\ & (((\left_display|pr_state.LED_17~q\ & 
-- \array_reg|array_reg[0][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[0][25]~q\,
	datab => \left_display|pr_state.LED_25~q\,
	datac => \left_display|pr_state.LED_17~q\,
	datad => \array_reg|array_reg[0][17]~q\,
	combout => \left_display|Selector1~2_combout\);

-- Location: LCCOMB_X22_Y17_N12
\left_matrix_vector|matrix[41]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix\(41) = (!\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & (\ball_FSM|Equal10~0_combout\ & \ball_logic|tempY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~0_combout\,
	datad => \ball_logic|tempY\(2),
	combout => \left_matrix_vector|matrix\(41));

-- Location: FF_X22_Y17_N13
\array_reg|array_reg[0][41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][41]~q\);

-- Location: LCCOMB_X23_Y17_N12
\left_matrix_vector|matrix[33]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix\(33) = (\ball_logic|tempY\(2) & (\ball_logic|tempY\(1) & (\ball_FSM|Equal10~0_combout\ & \ball_logic|tempY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~0_combout\,
	datad => \ball_logic|tempY\(0),
	combout => \left_matrix_vector|matrix\(33));

-- Location: FF_X23_Y17_N13
\array_reg|array_reg[0][33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix\(33),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][33]~q\);

-- Location: LCCOMB_X27_Y17_N18
\left_display|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector1~1_combout\ = (\array_reg|array_reg[0][41]~q\ & ((\left_display|pr_state.LED_41~q\) # ((\array_reg|array_reg[0][33]~q\ & \left_display|pr_state.LED_33~q\)))) # (!\array_reg|array_reg[0][41]~q\ & (((\array_reg|array_reg[0][33]~q\ & 
-- \left_display|pr_state.LED_33~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[0][41]~q\,
	datab => \left_display|pr_state.LED_41~q\,
	datac => \array_reg|array_reg[0][33]~q\,
	datad => \left_display|pr_state.LED_33~q\,
	combout => \left_display|Selector1~1_combout\);

-- Location: LCCOMB_X27_Y18_N6
\left_matrix_vector|matrix[49]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix\(49) = (\ball_logic|tempY\(0) & (!\ball_logic|tempY\(1) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~0_combout\,
	combout => \left_matrix_vector|matrix\(49));

-- Location: FF_X27_Y18_N7
\array_reg|array_reg[0][49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix\(49),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][49]~q\);

-- Location: LCCOMB_X27_Y18_N16
\left_matrix_vector|matrix[57]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix\(57) = (!\ball_logic|tempY\(0) & (!\ball_logic|tempY\(1) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~0_combout\,
	combout => \left_matrix_vector|matrix\(57));

-- Location: FF_X27_Y18_N17
\array_reg|array_reg[0][57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][57]~q\);

-- Location: LCCOMB_X27_Y16_N28
\left_display|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector1~0_combout\ = (\left_display|pr_state.LED_57~q\ & ((\array_reg|array_reg[0][57]~q\) # ((\left_display|pr_state.LED_49~q\ & \array_reg|array_reg[0][49]~q\)))) # (!\left_display|pr_state.LED_57~q\ & (\left_display|pr_state.LED_49~q\ & 
-- (\array_reg|array_reg[0][49]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_57~q\,
	datab => \left_display|pr_state.LED_49~q\,
	datac => \array_reg|array_reg[0][49]~q\,
	datad => \array_reg|array_reg[0][57]~q\,
	combout => \left_display|Selector1~0_combout\);

-- Location: LCCOMB_X26_Y18_N20
\left_matrix_vector|matrix[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix\(9) = (\ball_logic|tempY\(1) & (!\ball_logic|tempY\(2) & (!\ball_logic|tempY\(0) & \ball_FSM|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(2),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~0_combout\,
	combout => \left_matrix_vector|matrix\(9));

-- Location: FF_X26_Y18_N21
\array_reg|array_reg[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][9]~q\);

-- Location: LCCOMB_X22_Y17_N22
\left_matrix_vector|matrix[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix\(1) = (\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & (\ball_FSM|Equal10~0_combout\ & !\ball_logic|tempY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~0_combout\,
	datad => \ball_logic|tempY\(2),
	combout => \left_matrix_vector|matrix\(1));

-- Location: FF_X22_Y17_N23
\array_reg|array_reg[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][1]~q\);

-- Location: LCCOMB_X24_Y19_N14
\left_display|Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector1~3_combout\ = (\left_display|pr_state.LED_9~q\ & ((\array_reg|array_reg[0][9]~q\) # ((\left_display|pr_state.LED_1~q\ & \array_reg|array_reg[0][1]~q\)))) # (!\left_display|pr_state.LED_9~q\ & (((\left_display|pr_state.LED_1~q\ & 
-- \array_reg|array_reg[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_9~q\,
	datab => \array_reg|array_reg[0][9]~q\,
	datac => \left_display|pr_state.LED_1~q\,
	datad => \array_reg|array_reg[0][1]~q\,
	combout => \left_display|Selector1~3_combout\);

-- Location: LCCOMB_X24_Y17_N30
\left_display|Selector1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector1~4_combout\ = (\left_display|Selector1~2_combout\) # ((\left_display|Selector1~1_combout\) # ((\left_display|Selector1~0_combout\) # (\left_display|Selector1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|Selector1~2_combout\,
	datab => \left_display|Selector1~1_combout\,
	datac => \left_display|Selector1~0_combout\,
	datad => \left_display|Selector1~3_combout\,
	combout => \left_display|Selector1~4_combout\);

-- Location: LCCOMB_X23_Y18_N24
\ball_FSM|Equal10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Equal10~1_combout\ = (\ball_logic|tempX\(1) & (!\ball_logic|tempX\(3) & (\ball_logic|tempX\(0) & !\ball_logic|tempX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempX\(1),
	datab => \ball_logic|tempX\(3),
	datac => \ball_logic|tempX\(0),
	datad => \ball_logic|tempX\(2),
	combout => \ball_FSM|Equal10~1_combout\);

-- Location: LCCOMB_X24_Y16_N24
\left_matrix_vector|matrix~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix~30_combout\ = (\ball_FSM|Equal10~1_combout\ & (\ball_logic|tempY\(2) & (\ball_logic|tempY\(1) & \ball_logic|tempY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|Equal10~1_combout\,
	datab => \ball_logic|tempY\(2),
	datac => \ball_logic|tempY\(1),
	datad => \ball_logic|tempY\(0),
	combout => \left_matrix_vector|matrix~30_combout\);

-- Location: FF_X24_Y16_N25
\array_reg|array_reg[0][34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][34]~q\);

-- Location: LCCOMB_X23_Y16_N14
\left_matrix_vector|matrix~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix~29_combout\ = (\ball_logic|tempY\(1) & (\ball_logic|tempY\(2) & (!\ball_logic|tempY\(0) & \ball_FSM|Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(2),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~1_combout\,
	combout => \left_matrix_vector|matrix~29_combout\);

-- Location: FF_X23_Y16_N15
\array_reg|array_reg[0][42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][42]~q\);

-- Location: LCCOMB_X24_Y16_N30
\left_display|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector2~1_combout\ = (\left_display|pr_state.LED_42~q\ & ((\array_reg|array_reg[0][42]~q\) # ((\array_reg|array_reg[0][34]~q\ & \left_display|pr_state.LED_34~q\)))) # (!\left_display|pr_state.LED_42~q\ & (\array_reg|array_reg[0][34]~q\ & 
-- (\left_display|pr_state.LED_34~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_42~q\,
	datab => \array_reg|array_reg[0][34]~q\,
	datac => \left_display|pr_state.LED_34~q\,
	datad => \array_reg|array_reg[0][42]~q\,
	combout => \left_display|Selector2~1_combout\);

-- Location: LCCOMB_X23_Y16_N12
\left_matrix_vector|matrix~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix~28_combout\ = (!\ball_logic|tempY\(1) & (\ball_logic|tempY\(2) & (\ball_logic|tempY\(0) & \ball_FSM|Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(2),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~1_combout\,
	combout => \left_matrix_vector|matrix~28_combout\);

-- Location: FF_X23_Y16_N13
\array_reg|array_reg[0][50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][50]~q\);

-- Location: LCCOMB_X27_Y18_N12
\left_matrix_vector|matrix~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix~70_combout\ = (\ball_logic|tempY\(2) & (!\ball_logic|tempY\(1) & (\ball_FSM|Equal10~1_combout\ & !\ball_logic|tempY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~1_combout\,
	datad => \ball_logic|tempY\(0),
	combout => \left_matrix_vector|matrix~70_combout\);

-- Location: FF_X27_Y18_N13
\array_reg|array_reg[0][58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][58]~q\);

-- Location: LCCOMB_X27_Y16_N0
\left_display|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector2~0_combout\ = (\left_display|pr_state.LED_50~q\ & ((\array_reg|array_reg[0][50]~q\) # ((\left_display|pr_state.LED_58~q\ & \array_reg|array_reg[0][58]~q\)))) # (!\left_display|pr_state.LED_50~q\ & (\left_display|pr_state.LED_58~q\ & 
-- ((\array_reg|array_reg[0][58]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_50~q\,
	datab => \left_display|pr_state.LED_58~q\,
	datac => \array_reg|array_reg[0][50]~q\,
	datad => \array_reg|array_reg[0][58]~q\,
	combout => \left_display|Selector2~0_combout\);

-- Location: LCCOMB_X23_Y18_N0
\left_matrix_vector|matrix~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix~31_combout\ = (!\ball_logic|tempY\(2) & (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & \ball_FSM|Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~1_combout\,
	combout => \left_matrix_vector|matrix~31_combout\);

-- Location: FF_X23_Y18_N1
\array_reg|array_reg[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][26]~q\);

-- Location: LCCOMB_X23_Y17_N24
\left_matrix_vector|matrix~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix~32_combout\ = (!\ball_logic|tempY\(2) & (!\ball_logic|tempY\(1) & (\ball_FSM|Equal10~1_combout\ & \ball_logic|tempY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~1_combout\,
	datad => \ball_logic|tempY\(0),
	combout => \left_matrix_vector|matrix~32_combout\);

-- Location: FF_X23_Y17_N25
\array_reg|array_reg[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][18]~q\);

-- Location: LCCOMB_X23_Y17_N6
\left_display|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector2~2_combout\ = (\array_reg|array_reg[0][26]~q\ & ((\left_display|pr_state.LED_26~q\) # ((\left_display|pr_state.LED_18~q\ & \array_reg|array_reg[0][18]~q\)))) # (!\array_reg|array_reg[0][26]~q\ & (((\left_display|pr_state.LED_18~q\ & 
-- \array_reg|array_reg[0][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[0][26]~q\,
	datab => \left_display|pr_state.LED_26~q\,
	datac => \left_display|pr_state.LED_18~q\,
	datad => \array_reg|array_reg[0][18]~q\,
	combout => \left_display|Selector2~2_combout\);

-- Location: LCCOMB_X27_Y18_N0
\left_matrix_vector|matrix~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix~71_combout\ = (!\ball_logic|tempY\(2) & (\ball_logic|tempY\(1) & (\ball_FSM|Equal10~1_combout\ & \ball_logic|tempY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~1_combout\,
	datad => \ball_logic|tempY\(0),
	combout => \left_matrix_vector|matrix~71_combout\);

-- Location: FF_X27_Y18_N1
\array_reg|array_reg[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][2]~q\);

-- Location: LCCOMB_X27_Y18_N18
\left_matrix_vector|matrix~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix~33_combout\ = (!\ball_logic|tempY\(2) & (\ball_logic|tempY\(1) & (\ball_FSM|Equal10~1_combout\ & !\ball_logic|tempY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~1_combout\,
	datad => \ball_logic|tempY\(0),
	combout => \left_matrix_vector|matrix~33_combout\);

-- Location: FF_X27_Y18_N19
\array_reg|array_reg[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][10]~q\);

-- Location: LCCOMB_X26_Y19_N4
\left_display|Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector2~3_combout\ = (\array_reg|array_reg[0][2]~q\ & ((\left_display|pr_state.LED_2~q\) # ((\left_display|pr_state.LED_10~q\ & \array_reg|array_reg[0][10]~q\)))) # (!\array_reg|array_reg[0][2]~q\ & (((\left_display|pr_state.LED_10~q\ & 
-- \array_reg|array_reg[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[0][2]~q\,
	datab => \left_display|pr_state.LED_2~q\,
	datac => \left_display|pr_state.LED_10~q\,
	datad => \array_reg|array_reg[0][10]~q\,
	combout => \left_display|Selector2~3_combout\);

-- Location: LCCOMB_X26_Y15_N20
\left_display|Selector2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector2~4_combout\ = (\left_display|Selector2~1_combout\) # ((\left_display|Selector2~0_combout\) # ((\left_display|Selector2~2_combout\) # (\left_display|Selector2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|Selector2~1_combout\,
	datab => \left_display|Selector2~0_combout\,
	datac => \left_display|Selector2~2_combout\,
	datad => \left_display|Selector2~3_combout\,
	combout => \left_display|Selector2~4_combout\);

-- Location: LCCOMB_X22_Y19_N10
\left_display|WideOr14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr14~1_combout\ = (\left_display|pr_state.LED_62~q\) # ((\left_display|pr_state.LED_60~q\) # ((\left_display|pr_state.LED_63~q\) # (\left_display|pr_state.LED_61~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_62~q\,
	datab => \left_display|pr_state.LED_60~q\,
	datac => \left_display|pr_state.LED_63~q\,
	datad => \left_display|pr_state.LED_61~q\,
	combout => \left_display|WideOr14~1_combout\);

-- Location: LCCOMB_X27_Y16_N20
\left_display|WideOr14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr14~0_combout\ = (\left_display|pr_state.LED_57~q\) # ((\left_display|pr_state.LED_58~q\) # ((\left_display|pr_state.LED_59~q\) # (\left_display|pr_state.LED_56~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_57~q\,
	datab => \left_display|pr_state.LED_58~q\,
	datac => \left_display|pr_state.LED_59~q\,
	datad => \left_display|pr_state.LED_56~q\,
	combout => \left_display|WideOr14~0_combout\);

-- Location: LCCOMB_X26_Y8_N28
\left_display|WideOr14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr14~combout\ = (\left_display|WideOr14~1_combout\) # (\left_display|WideOr14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|WideOr14~1_combout\,
	datad => \left_display|WideOr14~0_combout\,
	combout => \left_display|WideOr14~combout\);

-- Location: LCCOMB_X24_Y18_N4
\ball_FSM|Equal10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Equal10~2_combout\ = (\ball_logic|tempX\(0) & (\ball_logic|tempX\(2) & (!\ball_logic|tempX\(3) & !\ball_logic|tempX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempX\(0),
	datab => \ball_logic|tempX\(2),
	datac => \ball_logic|tempX\(3),
	datad => \ball_logic|tempX\(1),
	combout => \ball_FSM|Equal10~2_combout\);

-- Location: LCCOMB_X24_Y17_N8
\left_matrix_vector|matrix[52]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[52]~34_combout\ = (\ball_logic|tempY\(0) & (!\ball_logic|tempY\(1) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~2_combout\,
	combout => \left_matrix_vector|matrix[52]~34_combout\);

-- Location: FF_X24_Y17_N9
\array_reg|array_reg[0][52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[52]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][52]~q\);

-- Location: LCCOMB_X27_Y18_N2
\left_matrix_vector|matrix[60]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[60]~72_combout\ = (\ball_logic|tempY\(2) & (!\ball_logic|tempY\(1) & (\ball_FSM|Equal10~2_combout\ & !\ball_logic|tempY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~2_combout\,
	datad => \ball_logic|tempY\(0),
	combout => \left_matrix_vector|matrix[60]~72_combout\);

-- Location: FF_X27_Y18_N3
\array_reg|array_reg[0][60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[60]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][60]~q\);

-- Location: LCCOMB_X24_Y17_N10
\left_display|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector4~0_combout\ = (\left_display|pr_state.LED_60~q\ & ((\array_reg|array_reg[0][60]~q\) # ((\left_display|pr_state.LED_52~q\ & \array_reg|array_reg[0][52]~q\)))) # (!\left_display|pr_state.LED_60~q\ & (\left_display|pr_state.LED_52~q\ & 
-- (\array_reg|array_reg[0][52]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_60~q\,
	datab => \left_display|pr_state.LED_52~q\,
	datac => \array_reg|array_reg[0][52]~q\,
	datad => \array_reg|array_reg[0][60]~q\,
	combout => \left_display|Selector4~0_combout\);

-- Location: LCCOMB_X26_Y18_N22
\left_matrix_vector|matrix[44]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[44]~35_combout\ = (\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~2_combout\,
	combout => \left_matrix_vector|matrix[44]~35_combout\);

-- Location: FF_X26_Y18_N23
\array_reg|array_reg[0][44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[44]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][44]~q\);

-- Location: LCCOMB_X24_Y17_N12
\left_matrix_vector|matrix[36]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[36]~36_combout\ = (\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~2_combout\,
	combout => \left_matrix_vector|matrix[36]~36_combout\);

-- Location: FF_X24_Y17_N13
\array_reg|array_reg[0][36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[36]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][36]~q\);

-- Location: LCCOMB_X24_Y17_N18
\left_display|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector4~1_combout\ = (\left_display|pr_state.LED_36~q\ & ((\array_reg|array_reg[0][36]~q\) # ((\array_reg|array_reg[0][44]~q\ & \left_display|pr_state.LED_44~q\)))) # (!\left_display|pr_state.LED_36~q\ & (\array_reg|array_reg[0][44]~q\ & 
-- (\left_display|pr_state.LED_44~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_36~q\,
	datab => \array_reg|array_reg[0][44]~q\,
	datac => \left_display|pr_state.LED_44~q\,
	datad => \array_reg|array_reg[0][36]~q\,
	combout => \left_display|Selector4~1_combout\);

-- Location: LCCOMB_X28_Y18_N10
\left_matrix_vector|matrix[12]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[12]~39_combout\ = (!\ball_logic|tempY\(2) & (\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & \ball_FSM|Equal10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~2_combout\,
	combout => \left_matrix_vector|matrix[12]~39_combout\);

-- Location: FF_X28_Y18_N11
\array_reg|array_reg[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][12]~q\);

-- Location: LCCOMB_X28_Y18_N0
\left_matrix_vector|matrix[4]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[4]~73_combout\ = (!\ball_logic|tempY\(2) & (\ball_logic|tempY\(1) & (\ball_logic|tempY\(0) & \ball_FSM|Equal10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~2_combout\,
	combout => \left_matrix_vector|matrix[4]~73_combout\);

-- Location: FF_X28_Y18_N1
\array_reg|array_reg[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[4]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][4]~q\);

-- Location: LCCOMB_X28_Y18_N30
\left_display|Selector4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector4~3_combout\ = (\array_reg|array_reg[0][12]~q\ & ((\left_display|pr_state.LED_12~q\) # ((\left_display|pr_state.LED_4~q\ & \array_reg|array_reg[0][4]~q\)))) # (!\array_reg|array_reg[0][12]~q\ & (\left_display|pr_state.LED_4~q\ & 
-- ((\array_reg|array_reg[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[0][12]~q\,
	datab => \left_display|pr_state.LED_4~q\,
	datac => \left_display|pr_state.LED_12~q\,
	datad => \array_reg|array_reg[0][4]~q\,
	combout => \left_display|Selector4~3_combout\);

-- Location: LCCOMB_X28_Y18_N28
\left_matrix_vector|matrix[28]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[28]~37_combout\ = (!\ball_logic|tempY\(2) & (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & \ball_FSM|Equal10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~2_combout\,
	combout => \left_matrix_vector|matrix[28]~37_combout\);

-- Location: FF_X28_Y18_N29
\array_reg|array_reg[0][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[28]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][28]~q\);

-- Location: LCCOMB_X28_Y18_N2
\left_matrix_vector|matrix[20]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[20]~38_combout\ = (!\ball_logic|tempY\(2) & (!\ball_logic|tempY\(1) & (\ball_logic|tempY\(0) & \ball_FSM|Equal10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~2_combout\,
	combout => \left_matrix_vector|matrix[20]~38_combout\);

-- Location: FF_X28_Y18_N3
\array_reg|array_reg[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[20]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][20]~q\);

-- Location: LCCOMB_X28_Y18_N8
\left_display|Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector4~2_combout\ = (\left_display|pr_state.LED_20~q\ & ((\array_reg|array_reg[0][20]~q\) # ((\array_reg|array_reg[0][28]~q\ & \left_display|pr_state.LED_28~q\)))) # (!\left_display|pr_state.LED_20~q\ & (\array_reg|array_reg[0][28]~q\ & 
-- (\left_display|pr_state.LED_28~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_20~q\,
	datab => \array_reg|array_reg[0][28]~q\,
	datac => \left_display|pr_state.LED_28~q\,
	datad => \array_reg|array_reg[0][20]~q\,
	combout => \left_display|Selector4~2_combout\);

-- Location: LCCOMB_X28_Y17_N28
\left_display|Selector4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector4~4_combout\ = (\left_display|Selector4~0_combout\) # ((\left_display|Selector4~1_combout\) # ((\left_display|Selector4~3_combout\) # (\left_display|Selector4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|Selector4~0_combout\,
	datab => \left_display|Selector4~1_combout\,
	datac => \left_display|Selector4~3_combout\,
	datad => \left_display|Selector4~2_combout\,
	combout => \left_display|Selector4~4_combout\);

-- Location: LCCOMB_X24_Y17_N16
\left_display|WideOr10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr10~1_combout\ = (\left_display|pr_state.LED_46~q\) # ((\left_display|pr_state.LED_45~q\) # ((\left_display|pr_state.LED_44~q\) # (\left_display|pr_state.LED_47~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_46~q\,
	datab => \left_display|pr_state.LED_45~q\,
	datac => \left_display|pr_state.LED_44~q\,
	datad => \left_display|pr_state.LED_47~q\,
	combout => \left_display|WideOr10~1_combout\);

-- Location: LCCOMB_X26_Y16_N20
\left_display|WideOr10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr10~0_combout\ = (\left_display|pr_state.LED_42~q\) # ((\left_display|pr_state.LED_41~q\) # ((\left_display|pr_state.LED_43~q\) # (\left_display|pr_state.LED_40~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_42~q\,
	datab => \left_display|pr_state.LED_41~q\,
	datac => \left_display|pr_state.LED_43~q\,
	datad => \left_display|pr_state.LED_40~q\,
	combout => \left_display|WideOr10~0_combout\);

-- Location: LCCOMB_X26_Y16_N18
\left_display|WideOr10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr10~combout\ = (\left_display|WideOr10~1_combout\) # (\left_display|WideOr10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \left_display|WideOr10~1_combout\,
	datad => \left_display|WideOr10~0_combout\,
	combout => \left_display|WideOr10~combout\);

-- Location: LCCOMB_X23_Y17_N16
\left_display|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr4~0_combout\ = (\left_display|pr_state.LED_16~q\) # ((\left_display|pr_state.LED_18~q\) # ((\left_display|pr_state.LED_17~q\) # (\left_display|pr_state.LED_19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_16~q\,
	datab => \left_display|pr_state.LED_18~q\,
	datac => \left_display|pr_state.LED_17~q\,
	datad => \left_display|pr_state.LED_19~q\,
	combout => \left_display|WideOr4~0_combout\);

-- Location: LCCOMB_X26_Y19_N8
\left_display|WideOr4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr4~1_combout\ = (\left_display|pr_state.LED_22~q\) # ((\left_display|pr_state.LED_23~q\) # ((\left_display|pr_state.LED_20~q\) # (\left_display|pr_state.LED_21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_22~q\,
	datab => \left_display|pr_state.LED_23~q\,
	datac => \left_display|pr_state.LED_20~q\,
	datad => \left_display|pr_state.LED_21~q\,
	combout => \left_display|WideOr4~1_combout\);

-- Location: LCCOMB_X26_Y19_N24
\left_display|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr4~combout\ = (\left_display|WideOr4~0_combout\) # (\left_display|WideOr4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \left_display|WideOr4~0_combout\,
	datad => \left_display|WideOr4~1_combout\,
	combout => \left_display|WideOr4~combout\);

-- Location: LCCOMB_X26_Y17_N12
\left_display|WideOr0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr0~1_combout\ = (\left_display|pr_state.LED_5~q\) # ((\left_display|pr_state.LED_6~q\) # ((\left_display|pr_state.LED_7~q\) # (\left_display|pr_state.LED_4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_5~q\,
	datab => \left_display|pr_state.LED_6~q\,
	datac => \left_display|pr_state.LED_7~q\,
	datad => \left_display|pr_state.LED_4~q\,
	combout => \left_display|WideOr0~1_combout\);

-- Location: LCCOMB_X26_Y19_N28
\left_display|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr0~0_combout\ = (\left_display|pr_state.LED_1~q\) # ((\left_display|pr_state.LED_3~q\) # ((\left_display|pr_state.LED_2~q\) # (\left_display|pr_state.LED_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_1~q\,
	datab => \left_display|pr_state.LED_3~q\,
	datac => \left_display|pr_state.LED_2~q\,
	datad => \left_display|pr_state.LED_0~q\,
	combout => \left_display|WideOr0~0_combout\);

-- Location: LCCOMB_X26_Y17_N20
\left_display|WideOr0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr0~combout\ = (\left_display|WideOr0~1_combout\) # (\left_display|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|WideOr0~1_combout\,
	datad => \left_display|WideOr0~0_combout\,
	combout => \left_display|WideOr0~combout\);

-- Location: LCCOMB_X21_Y17_N18
\ball_FSM|Equal10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Equal10~3_combout\ = (!\ball_logic|tempX\(0) & (\ball_logic|tempX\(1) & (!\ball_logic|tempX\(2) & !\ball_logic|tempX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempX\(0),
	datab => \ball_logic|tempX\(1),
	datac => \ball_logic|tempX\(2),
	datad => \ball_logic|tempX\(3),
	combout => \ball_FSM|Equal10~3_combout\);

-- Location: LCCOMB_X21_Y17_N16
\left_matrix_vector|matrix[43]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[43]~41_combout\ = (\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~3_combout\,
	combout => \left_matrix_vector|matrix[43]~41_combout\);

-- Location: FF_X21_Y17_N17
\array_reg|array_reg[0][43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[43]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][43]~q\);

-- Location: LCCOMB_X21_Y17_N2
\left_matrix_vector|matrix[35]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[35]~42_combout\ = (\ball_logic|tempY\(1) & (\ball_logic|tempY\(0) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~3_combout\,
	combout => \left_matrix_vector|matrix[35]~42_combout\);

-- Location: FF_X21_Y17_N3
\array_reg|array_reg[0][35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[35]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][35]~q\);

-- Location: LCCOMB_X26_Y17_N14
\left_display|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector3~1_combout\ = (\array_reg|array_reg[0][43]~q\ & ((\left_display|pr_state.LED_43~q\) # ((\left_display|pr_state.LED_35~q\ & \array_reg|array_reg[0][35]~q\)))) # (!\array_reg|array_reg[0][43]~q\ & (\left_display|pr_state.LED_35~q\ & 
-- (\array_reg|array_reg[0][35]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[0][43]~q\,
	datab => \left_display|pr_state.LED_35~q\,
	datac => \array_reg|array_reg[0][35]~q\,
	datad => \left_display|pr_state.LED_43~q\,
	combout => \left_display|Selector3~1_combout\);

-- Location: LCCOMB_X21_Y17_N12
\left_matrix_vector|matrix[27]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[27]~43_combout\ = (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~3_combout\,
	combout => \left_matrix_vector|matrix[27]~43_combout\);

-- Location: FF_X21_Y17_N13
\array_reg|array_reg[0][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[27]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][27]~q\);

-- Location: LCCOMB_X21_Y17_N10
\left_matrix_vector|matrix[19]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[19]~44_combout\ = (!\ball_logic|tempY\(1) & (\ball_logic|tempY\(0) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~3_combout\,
	combout => \left_matrix_vector|matrix[19]~44_combout\);

-- Location: FF_X21_Y17_N11
\array_reg|array_reg[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[19]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][19]~q\);

-- Location: LCCOMB_X26_Y17_N24
\left_display|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector3~2_combout\ = (\array_reg|array_reg[0][27]~q\ & ((\left_display|pr_state.LED_27~q\) # ((\left_display|pr_state.LED_19~q\ & \array_reg|array_reg[0][19]~q\)))) # (!\array_reg|array_reg[0][27]~q\ & (\left_display|pr_state.LED_19~q\ & 
-- ((\array_reg|array_reg[0][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[0][27]~q\,
	datab => \left_display|pr_state.LED_19~q\,
	datac => \left_display|pr_state.LED_27~q\,
	datad => \array_reg|array_reg[0][19]~q\,
	combout => \left_display|Selector3~2_combout\);

-- Location: LCCOMB_X21_Y17_N8
\left_matrix_vector|matrix[11]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[11]~45_combout\ = (\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~3_combout\,
	combout => \left_matrix_vector|matrix[11]~45_combout\);

-- Location: FF_X21_Y17_N9
\array_reg|array_reg[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[11]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][11]~q\);

-- Location: LCCOMB_X21_Y17_N30
\left_matrix_vector|matrix[3]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[3]~75_combout\ = (\ball_logic|tempY\(1) & (\ball_logic|tempY\(0) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~3_combout\,
	combout => \left_matrix_vector|matrix[3]~75_combout\);

-- Location: FF_X21_Y17_N31
\array_reg|array_reg[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[3]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][3]~q\);

-- Location: LCCOMB_X22_Y17_N14
\left_display|Selector3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector3~3_combout\ = (\array_reg|array_reg[0][11]~q\ & ((\left_display|pr_state.LED_11~q\) # ((\array_reg|array_reg[0][3]~q\ & \left_display|pr_state.LED_3~q\)))) # (!\array_reg|array_reg[0][11]~q\ & (\array_reg|array_reg[0][3]~q\ & 
-- ((\left_display|pr_state.LED_3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[0][11]~q\,
	datab => \array_reg|array_reg[0][3]~q\,
	datac => \left_display|pr_state.LED_11~q\,
	datad => \left_display|pr_state.LED_3~q\,
	combout => \left_display|Selector3~3_combout\);

-- Location: LCCOMB_X21_Y17_N14
\left_matrix_vector|matrix[51]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[51]~40_combout\ = (!\ball_logic|tempY\(1) & (\ball_logic|tempY\(0) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~3_combout\,
	combout => \left_matrix_vector|matrix[51]~40_combout\);

-- Location: FF_X21_Y17_N15
\array_reg|array_reg[0][51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[51]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][51]~q\);

-- Location: LCCOMB_X21_Y17_N24
\left_matrix_vector|matrix[59]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[59]~74_combout\ = (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~3_combout\,
	combout => \left_matrix_vector|matrix[59]~74_combout\);

-- Location: FF_X21_Y17_N25
\array_reg|array_reg[0][59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[59]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][59]~q\);

-- Location: LCCOMB_X22_Y17_N16
\left_display|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector3~0_combout\ = (\array_reg|array_reg[0][51]~q\ & ((\left_display|pr_state.LED_51~q\) # ((\array_reg|array_reg[0][59]~q\ & \left_display|pr_state.LED_59~q\)))) # (!\array_reg|array_reg[0][51]~q\ & (\array_reg|array_reg[0][59]~q\ & 
-- ((\left_display|pr_state.LED_59~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[0][51]~q\,
	datab => \array_reg|array_reg[0][59]~q\,
	datac => \left_display|pr_state.LED_51~q\,
	datad => \left_display|pr_state.LED_59~q\,
	combout => \left_display|Selector3~0_combout\);

-- Location: LCCOMB_X27_Y17_N30
\left_display|Selector3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector3~4_combout\ = (\left_display|Selector3~1_combout\) # ((\left_display|Selector3~2_combout\) # ((\left_display|Selector3~3_combout\) # (\left_display|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|Selector3~1_combout\,
	datab => \left_display|Selector3~2_combout\,
	datac => \left_display|Selector3~3_combout\,
	datad => \left_display|Selector3~0_combout\,
	combout => \left_display|Selector3~4_combout\);

-- Location: LCCOMB_X24_Y18_N10
\ball_FSM|Equal10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Equal10~4_combout\ = (!\ball_logic|tempX\(0) & (!\ball_logic|tempX\(1) & (\ball_logic|tempX\(2) & !\ball_logic|tempX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempX\(0),
	datab => \ball_logic|tempX\(1),
	datac => \ball_logic|tempX\(2),
	datad => \ball_logic|tempX\(3),
	combout => \ball_FSM|Equal10~4_combout\);

-- Location: LCCOMB_X24_Y18_N22
\left_matrix_vector|matrix[53]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[53]~46_combout\ = (\ball_logic|tempY\(2) & (!\ball_logic|tempY\(1) & (\ball_logic|tempY\(0) & \ball_FSM|Equal10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~4_combout\,
	combout => \left_matrix_vector|matrix[53]~46_combout\);

-- Location: FF_X24_Y18_N23
\array_reg|array_reg[0][53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[53]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][53]~q\);

-- Location: LCCOMB_X24_Y18_N0
\left_matrix_vector|matrix[61]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[61]~76_combout\ = (\ball_logic|tempY\(2) & (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & \ball_FSM|Equal10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~4_combout\,
	combout => \left_matrix_vector|matrix[61]~76_combout\);

-- Location: FF_X24_Y18_N1
\array_reg|array_reg[0][61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[61]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][61]~q\);

-- Location: LCCOMB_X23_Y19_N20
\left_display|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector5~0_combout\ = (\array_reg|array_reg[0][53]~q\ & ((\left_display|pr_state.LED_53~q\) # ((\left_display|pr_state.LED_61~q\ & \array_reg|array_reg[0][61]~q\)))) # (!\array_reg|array_reg[0][53]~q\ & (\left_display|pr_state.LED_61~q\ & 
-- ((\array_reg|array_reg[0][61]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[0][53]~q\,
	datab => \left_display|pr_state.LED_61~q\,
	datac => \left_display|pr_state.LED_53~q\,
	datad => \array_reg|array_reg[0][61]~q\,
	combout => \left_display|Selector5~0_combout\);

-- Location: LCCOMB_X24_Y18_N14
\left_matrix_vector|matrix[37]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[37]~48_combout\ = (\ball_logic|tempY\(2) & (\ball_logic|tempY\(1) & (\ball_logic|tempY\(0) & \ball_FSM|Equal10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~4_combout\,
	combout => \left_matrix_vector|matrix[37]~48_combout\);

-- Location: FF_X24_Y18_N15
\array_reg|array_reg[0][37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[37]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][37]~q\);

-- Location: LCCOMB_X24_Y18_N20
\left_matrix_vector|matrix[45]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[45]~47_combout\ = (\ball_logic|tempY\(2) & (\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & \ball_FSM|Equal10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~4_combout\,
	combout => \left_matrix_vector|matrix[45]~47_combout\);

-- Location: FF_X24_Y18_N21
\array_reg|array_reg[0][45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[45]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][45]~q\);

-- Location: LCCOMB_X24_Y17_N6
\left_display|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector5~1_combout\ = (\left_display|pr_state.LED_37~q\ & ((\array_reg|array_reg[0][37]~q\) # ((\left_display|pr_state.LED_45~q\ & \array_reg|array_reg[0][45]~q\)))) # (!\left_display|pr_state.LED_37~q\ & (\left_display|pr_state.LED_45~q\ & 
-- ((\array_reg|array_reg[0][45]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_37~q\,
	datab => \left_display|pr_state.LED_45~q\,
	datac => \array_reg|array_reg[0][37]~q\,
	datad => \array_reg|array_reg[0][45]~q\,
	combout => \left_display|Selector5~1_combout\);

-- Location: LCCOMB_X27_Y18_N28
\left_matrix_vector|matrix[21]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[21]~50_combout\ = (\ball_logic|tempY\(0) & (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~4_combout\,
	combout => \left_matrix_vector|matrix[21]~50_combout\);

-- Location: FF_X27_Y18_N29
\array_reg|array_reg[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[21]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][21]~q\);

-- Location: LCCOMB_X26_Y18_N0
\left_matrix_vector|matrix[29]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[29]~49_combout\ = (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~4_combout\,
	combout => \left_matrix_vector|matrix[29]~49_combout\);

-- Location: FF_X26_Y18_N1
\array_reg|array_reg[0][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[29]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][29]~q\);

-- Location: LCCOMB_X26_Y19_N0
\left_display|Selector5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector5~2_combout\ = (\left_display|pr_state.LED_29~q\ & ((\array_reg|array_reg[0][29]~q\) # ((\array_reg|array_reg[0][21]~q\ & \left_display|pr_state.LED_21~q\)))) # (!\left_display|pr_state.LED_29~q\ & (\array_reg|array_reg[0][21]~q\ & 
-- (\left_display|pr_state.LED_21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_29~q\,
	datab => \array_reg|array_reg[0][21]~q\,
	datac => \left_display|pr_state.LED_21~q\,
	datad => \array_reg|array_reg[0][29]~q\,
	combout => \left_display|Selector5~2_combout\);

-- Location: LCCOMB_X26_Y18_N18
\left_matrix_vector|matrix[13]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[13]~51_combout\ = (\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~4_combout\,
	combout => \left_matrix_vector|matrix[13]~51_combout\);

-- Location: FF_X26_Y18_N19
\array_reg|array_reg[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[13]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][13]~q\);

-- Location: LCCOMB_X26_Y18_N28
\left_matrix_vector|matrix[5]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[5]~77_combout\ = (\ball_logic|tempY\(1) & (\ball_logic|tempY\(0) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~4_combout\,
	combout => \left_matrix_vector|matrix[5]~77_combout\);

-- Location: FF_X26_Y18_N29
\array_reg|array_reg[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[5]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][5]~q\);

-- Location: LCCOMB_X26_Y17_N4
\left_display|Selector5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector5~3_combout\ = (\left_display|pr_state.LED_13~q\ & ((\array_reg|array_reg[0][13]~q\) # ((\array_reg|array_reg[0][5]~q\ & \left_display|pr_state.LED_5~q\)))) # (!\left_display|pr_state.LED_13~q\ & (((\array_reg|array_reg[0][5]~q\ & 
-- \left_display|pr_state.LED_5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_13~q\,
	datab => \array_reg|array_reg[0][13]~q\,
	datac => \array_reg|array_reg[0][5]~q\,
	datad => \left_display|pr_state.LED_5~q\,
	combout => \left_display|Selector5~3_combout\);

-- Location: LCCOMB_X26_Y15_N4
\left_display|Selector5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector5~4_combout\ = (\left_display|Selector5~0_combout\) # ((\left_display|Selector5~1_combout\) # ((\left_display|Selector5~2_combout\) # (\left_display|Selector5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|Selector5~0_combout\,
	datab => \left_display|Selector5~1_combout\,
	datac => \left_display|Selector5~2_combout\,
	datad => \left_display|Selector5~3_combout\,
	combout => \left_display|Selector5~4_combout\);

-- Location: LCCOMB_X27_Y17_N8
\left_display|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr6~0_combout\ = (\left_display|pr_state.LED_27~q\) # ((\left_display|pr_state.LED_24~q\) # ((\left_display|pr_state.LED_26~q\) # (\left_display|pr_state.LED_25~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_27~q\,
	datab => \left_display|pr_state.LED_24~q\,
	datac => \left_display|pr_state.LED_26~q\,
	datad => \left_display|pr_state.LED_25~q\,
	combout => \left_display|WideOr6~0_combout\);

-- Location: LCCOMB_X23_Y19_N16
\left_display|WideOr6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr6~1_combout\ = (\left_display|pr_state.LED_30~q\) # ((\left_display|pr_state.LED_28~q\) # ((\left_display|pr_state.LED_29~q\) # (\left_display|pr_state.LED_31~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_30~q\,
	datab => \left_display|pr_state.LED_28~q\,
	datac => \left_display|pr_state.LED_29~q\,
	datad => \left_display|pr_state.LED_31~q\,
	combout => \left_display|WideOr6~1_combout\);

-- Location: LCCOMB_X24_Y15_N24
\left_display|WideOr6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr6~combout\ = (\left_display|WideOr6~0_combout\) # (\left_display|WideOr6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \left_display|WideOr6~0_combout\,
	datad => \left_display|WideOr6~1_combout\,
	combout => \left_display|WideOr6~combout\);

-- Location: LCCOMB_X23_Y18_N6
\left_matrix_vector|matrix[32]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[32]~54_combout\ = (\racket_logic|temp1\(1) & (!\racket_logic|temp1\(0) & \racket_logic|temp1\(2))) # (!\racket_logic|temp1\(1) & ((!\racket_logic|temp1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \racket_logic|temp1\(0),
	datab => \racket_logic|temp1\(1),
	datac => \racket_logic|temp1\(2),
	combout => \left_matrix_vector|matrix[32]~54_combout\);

-- Location: FF_X23_Y18_N7
\array_reg|array_reg[0][32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[32]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][32]~q\);

-- Location: LCCOMB_X23_Y16_N28
\left_matrix_vector|matrix[40]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[40]~53_combout\ = (\racket_logic|temp1\(1) & ((\racket_logic|temp1\(2)))) # (!\racket_logic|temp1\(1) & (\racket_logic|temp1\(0) & !\racket_logic|temp1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \racket_logic|temp1\(1),
	datab => \racket_logic|temp1\(0),
	datad => \racket_logic|temp1\(2),
	combout => \left_matrix_vector|matrix[40]~53_combout\);

-- Location: FF_X23_Y16_N29
\array_reg|array_reg[0][40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[40]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][40]~q\);

-- Location: LCCOMB_X23_Y16_N2
\left_display|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector0~1_combout\ = (\array_reg|array_reg[0][32]~q\ & ((\left_display|pr_state.LED_32~q\) # ((\array_reg|array_reg[0][40]~q\ & \left_display|pr_state.LED_40~q\)))) # (!\array_reg|array_reg[0][32]~q\ & (\array_reg|array_reg[0][40]~q\ & 
-- (\left_display|pr_state.LED_40~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[0][32]~q\,
	datab => \array_reg|array_reg[0][40]~q\,
	datac => \left_display|pr_state.LED_40~q\,
	datad => \left_display|pr_state.LED_32~q\,
	combout => \left_display|Selector0~1_combout\);

-- Location: LCCOMB_X23_Y18_N12
\left_matrix_vector|matrix[24]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[24]~55_combout\ = (!\racket_logic|temp1\(2) & ((\racket_logic|temp1\(0)) # (!\racket_logic|temp1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \racket_logic|temp1\(0),
	datab => \racket_logic|temp1\(1),
	datac => \racket_logic|temp1\(2),
	combout => \left_matrix_vector|matrix[24]~55_combout\);

-- Location: FF_X23_Y18_N13
\array_reg|array_reg[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[24]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][24]~q\);

-- Location: LCCOMB_X23_Y18_N30
\left_matrix_vector|matrix[16]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[16]~56_combout\ = (!\racket_logic|temp1\(2) & ((\racket_logic|temp1\(1)) # (!\racket_logic|temp1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \racket_logic|temp1\(0),
	datab => \racket_logic|temp1\(1),
	datac => \racket_logic|temp1\(2),
	combout => \left_matrix_vector|matrix[16]~56_combout\);

-- Location: FF_X23_Y18_N31
\array_reg|array_reg[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][16]~q\);

-- Location: LCCOMB_X24_Y16_N2
\left_display|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector0~2_combout\ = (\array_reg|array_reg[0][24]~q\ & ((\left_display|pr_state.LED_24~q\) # ((\array_reg|array_reg[0][16]~q\ & \left_display|pr_state.LED_16~q\)))) # (!\array_reg|array_reg[0][24]~q\ & (\array_reg|array_reg[0][16]~q\ & 
-- ((\left_display|pr_state.LED_16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[0][24]~q\,
	datab => \array_reg|array_reg[0][16]~q\,
	datac => \left_display|pr_state.LED_24~q\,
	datad => \left_display|pr_state.LED_16~q\,
	combout => \left_display|Selector0~2_combout\);

-- Location: LCCOMB_X24_Y16_N4
\left_matrix_vector|Equal15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|Equal15~1_combout\ = (\racket_logic|temp1\(1) & (!\racket_logic|temp1\(2) & !\racket_logic|temp1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \racket_logic|temp1\(1),
	datac => \racket_logic|temp1\(2),
	datad => \racket_logic|temp1\(0),
	combout => \left_matrix_vector|Equal15~1_combout\);

-- Location: FF_X24_Y16_N5
\array_reg|array_reg[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][0]~q\);

-- Location: LCCOMB_X22_Y16_N12
\left_matrix_vector|matrix[8]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[8]~57_combout\ = (\racket_logic|temp1\(1) & !\racket_logic|temp1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \racket_logic|temp1\(1),
	datad => \racket_logic|temp1\(2),
	combout => \left_matrix_vector|matrix[8]~57_combout\);

-- Location: FF_X22_Y16_N13
\array_reg|array_reg[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[8]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][8]~q\);

-- Location: LCCOMB_X26_Y15_N18
\left_display|Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector0~3_combout\ = (\array_reg|array_reg[0][0]~q\ & ((\left_display|pr_state.LED_0~q\) # ((\left_display|pr_state.LED_8~q\ & \array_reg|array_reg[0][8]~q\)))) # (!\array_reg|array_reg[0][0]~q\ & (\left_display|pr_state.LED_8~q\ & 
-- (\array_reg|array_reg[0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[0][0]~q\,
	datab => \left_display|pr_state.LED_8~q\,
	datac => \array_reg|array_reg[0][8]~q\,
	datad => \left_display|pr_state.LED_0~q\,
	combout => \left_display|Selector0~3_combout\);

-- Location: LCCOMB_X24_Y16_N12
\left_matrix_vector|Equal15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|Equal15~0_combout\ = (\racket_logic|temp1\(1) & (\racket_logic|temp1\(2) & \racket_logic|temp1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \racket_logic|temp1\(1),
	datac => \racket_logic|temp1\(2),
	datad => \racket_logic|temp1\(0),
	combout => \left_matrix_vector|Equal15~0_combout\);

-- Location: FF_X24_Y16_N13
\array_reg|array_reg[0][56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|Equal15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][56]~q\);

-- Location: LCCOMB_X24_Y16_N14
\left_matrix_vector|matrix[48]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[48]~52_combout\ = (\racket_logic|temp1\(2) & \racket_logic|temp1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \racket_logic|temp1\(2),
	datad => \racket_logic|temp1\(1),
	combout => \left_matrix_vector|matrix[48]~52_combout\);

-- Location: FF_X24_Y16_N15
\array_reg|array_reg[0][48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[48]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][48]~q\);

-- Location: LCCOMB_X24_Y16_N0
\left_display|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector0~0_combout\ = (\array_reg|array_reg[0][56]~q\ & ((\left_display|pr_state.LED_56~q\) # ((\array_reg|array_reg[0][48]~q\ & \left_display|pr_state.LED_48~q\)))) # (!\array_reg|array_reg[0][56]~q\ & (\array_reg|array_reg[0][48]~q\ & 
-- (\left_display|pr_state.LED_48~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[0][56]~q\,
	datab => \array_reg|array_reg[0][48]~q\,
	datac => \left_display|pr_state.LED_48~q\,
	datad => \left_display|pr_state.LED_56~q\,
	combout => \left_display|Selector0~0_combout\);

-- Location: LCCOMB_X24_Y16_N10
\left_display|Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector0~4_combout\ = (\left_display|Selector0~1_combout\) # ((\left_display|Selector0~2_combout\) # ((\left_display|Selector0~3_combout\) # (\left_display|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|Selector0~1_combout\,
	datab => \left_display|Selector0~2_combout\,
	datac => \left_display|Selector0~3_combout\,
	datad => \left_display|Selector0~0_combout\,
	combout => \left_display|Selector0~4_combout\);

-- Location: LCCOMB_X26_Y17_N2
\left_display|WideOr2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr2~1_combout\ = (\left_display|pr_state.LED_14~q\) # ((\left_display|pr_state.LED_15~q\) # ((\left_display|pr_state.LED_13~q\) # (\left_display|pr_state.LED_12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_14~q\,
	datab => \left_display|pr_state.LED_15~q\,
	datac => \left_display|pr_state.LED_13~q\,
	datad => \left_display|pr_state.LED_12~q\,
	combout => \left_display|WideOr2~1_combout\);

-- Location: LCCOMB_X26_Y19_N10
\left_display|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr2~0_combout\ = (\left_display|pr_state.LED_9~q\) # ((\left_display|pr_state.LED_10~q\) # ((\left_display|pr_state.LED_11~q\) # (\left_display|pr_state.LED_8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_9~q\,
	datab => \left_display|pr_state.LED_10~q\,
	datac => \left_display|pr_state.LED_11~q\,
	datad => \left_display|pr_state.LED_8~q\,
	combout => \left_display|WideOr2~0_combout\);

-- Location: LCCOMB_X26_Y19_N26
\left_display|WideOr2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|WideOr2~combout\ = (\left_display|WideOr2~1_combout\) # (\left_display|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|WideOr2~1_combout\,
	datad => \left_display|WideOr2~0_combout\,
	combout => \left_display|WideOr2~combout\);

-- Location: LCCOMB_X24_Y18_N12
\ball_FSM|Equal10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Equal10~5_combout\ = (\ball_logic|tempX\(0) & (\ball_logic|tempX\(2) & (!\ball_logic|tempX\(3) & \ball_logic|tempX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempX\(0),
	datab => \ball_logic|tempX\(2),
	datac => \ball_logic|tempX\(3),
	datad => \ball_logic|tempX\(1),
	combout => \ball_FSM|Equal10~5_combout\);

-- Location: LCCOMB_X23_Y19_N26
\left_matrix_vector|matrix~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix~78_combout\ = (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~5_combout\,
	combout => \left_matrix_vector|matrix~78_combout\);

-- Location: FF_X23_Y19_N27
\array_reg|array_reg[0][62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][62]~q\);

-- Location: LCCOMB_X23_Y19_N12
\left_matrix_vector|matrix~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix~58_combout\ = (!\ball_logic|tempY\(1) & (\ball_logic|tempY\(0) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~5_combout\,
	combout => \left_matrix_vector|matrix~58_combout\);

-- Location: FF_X23_Y19_N13
\array_reg|array_reg[0][54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][54]~q\);

-- Location: LCCOMB_X23_Y19_N8
\left_display|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector6~0_combout\ = (\left_display|pr_state.LED_62~q\ & ((\array_reg|array_reg[0][62]~q\) # ((\left_display|pr_state.LED_54~q\ & \array_reg|array_reg[0][54]~q\)))) # (!\left_display|pr_state.LED_62~q\ & (\left_display|pr_state.LED_54~q\ & 
-- ((\array_reg|array_reg[0][54]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_62~q\,
	datab => \left_display|pr_state.LED_54~q\,
	datac => \array_reg|array_reg[0][62]~q\,
	datad => \array_reg|array_reg[0][54]~q\,
	combout => \left_display|Selector6~0_combout\);

-- Location: LCCOMB_X27_Y18_N10
\left_matrix_vector|matrix~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix~62_combout\ = (\ball_logic|tempY\(0) & (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~5_combout\,
	combout => \left_matrix_vector|matrix~62_combout\);

-- Location: FF_X27_Y18_N11
\array_reg|array_reg[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][22]~q\);

-- Location: LCCOMB_X23_Y19_N2
\left_matrix_vector|matrix~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix~61_combout\ = (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~5_combout\,
	combout => \left_matrix_vector|matrix~61_combout\);

-- Location: FF_X23_Y19_N3
\array_reg|array_reg[0][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][30]~q\);

-- Location: LCCOMB_X22_Y19_N12
\left_display|Selector6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector6~2_combout\ = (\left_display|pr_state.LED_30~q\ & ((\array_reg|array_reg[0][30]~q\) # ((\array_reg|array_reg[0][22]~q\ & \left_display|pr_state.LED_22~q\)))) # (!\left_display|pr_state.LED_30~q\ & (\array_reg|array_reg[0][22]~q\ & 
-- (\left_display|pr_state.LED_22~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_30~q\,
	datab => \array_reg|array_reg[0][22]~q\,
	datac => \left_display|pr_state.LED_22~q\,
	datad => \array_reg|array_reg[0][30]~q\,
	combout => \left_display|Selector6~2_combout\);

-- Location: LCCOMB_X27_Y18_N22
\left_matrix_vector|matrix~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix~59_combout\ = (!\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~5_combout\,
	combout => \left_matrix_vector|matrix~59_combout\);

-- Location: FF_X27_Y18_N23
\array_reg|array_reg[0][46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][46]~q\);

-- Location: LCCOMB_X27_Y18_N8
\left_matrix_vector|matrix~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix~60_combout\ = (\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~5_combout\,
	combout => \left_matrix_vector|matrix~60_combout\);

-- Location: FF_X27_Y18_N9
\array_reg|array_reg[0][38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][38]~q\);

-- Location: LCCOMB_X23_Y15_N0
\left_display|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector6~1_combout\ = (\array_reg|array_reg[0][46]~q\ & ((\left_display|pr_state.LED_46~q\) # ((\left_display|pr_state.LED_38~q\ & \array_reg|array_reg[0][38]~q\)))) # (!\array_reg|array_reg[0][46]~q\ & (((\left_display|pr_state.LED_38~q\ & 
-- \array_reg|array_reg[0][38]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[0][46]~q\,
	datab => \left_display|pr_state.LED_46~q\,
	datac => \left_display|pr_state.LED_38~q\,
	datad => \array_reg|array_reg[0][38]~q\,
	combout => \left_display|Selector6~1_combout\);

-- Location: LCCOMB_X26_Y18_N12
\left_matrix_vector|matrix~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix~79_combout\ = (\ball_logic|tempY\(1) & (\ball_logic|tempY\(0) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~5_combout\,
	combout => \left_matrix_vector|matrix~79_combout\);

-- Location: FF_X26_Y18_N13
\array_reg|array_reg[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][6]~q\);

-- Location: LCCOMB_X26_Y18_N30
\left_matrix_vector|matrix~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix~63_combout\ = (\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~5_combout\,
	combout => \left_matrix_vector|matrix~63_combout\);

-- Location: FF_X26_Y18_N31
\array_reg|array_reg[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][14]~q\);

-- Location: LCCOMB_X26_Y17_N8
\left_display|Selector6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector6~3_combout\ = (\array_reg|array_reg[0][6]~q\ & ((\left_display|pr_state.LED_6~q\) # ((\left_display|pr_state.LED_14~q\ & \array_reg|array_reg[0][14]~q\)))) # (!\array_reg|array_reg[0][6]~q\ & (\left_display|pr_state.LED_14~q\ & 
-- (\array_reg|array_reg[0][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[0][6]~q\,
	datab => \left_display|pr_state.LED_14~q\,
	datac => \array_reg|array_reg[0][14]~q\,
	datad => \left_display|pr_state.LED_6~q\,
	combout => \left_display|Selector6~3_combout\);

-- Location: LCCOMB_X26_Y16_N28
\left_display|Selector6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector6~4_combout\ = (\left_display|Selector6~0_combout\) # ((\left_display|Selector6~2_combout\) # ((\left_display|Selector6~1_combout\) # (\left_display|Selector6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|Selector6~0_combout\,
	datab => \left_display|Selector6~2_combout\,
	datac => \left_display|Selector6~1_combout\,
	datad => \left_display|Selector6~3_combout\,
	combout => \left_display|Selector6~4_combout\);

-- Location: LCCOMB_X22_Y19_N26
\ball_FSM|Equal10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Equal10~6_combout\ = (\ball_logic|tempX\(2) & (\ball_logic|tempX\(1) & (!\ball_logic|tempX\(3) & !\ball_logic|tempX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempX\(2),
	datab => \ball_logic|tempX\(1),
	datac => \ball_logic|tempX\(3),
	datad => \ball_logic|tempX\(0),
	combout => \ball_FSM|Equal10~6_combout\);

-- Location: LCCOMB_X22_Y19_N22
\left_matrix_vector|matrix[39]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[39]~66_combout\ = (\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & (\ball_FSM|Equal10~6_combout\ & \ball_logic|tempY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~6_combout\,
	datad => \ball_logic|tempY\(2),
	combout => \left_matrix_vector|matrix[39]~66_combout\);

-- Location: FF_X22_Y19_N23
\array_reg|array_reg[0][39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[39]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][39]~q\);

-- Location: LCCOMB_X22_Y19_N24
\left_matrix_vector|matrix[47]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[47]~65_combout\ = (!\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & (\ball_FSM|Equal10~6_combout\ & \ball_logic|tempY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~6_combout\,
	datad => \ball_logic|tempY\(2),
	combout => \left_matrix_vector|matrix[47]~65_combout\);

-- Location: FF_X22_Y19_N25
\array_reg|array_reg[0][47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[47]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][47]~q\);

-- Location: LCCOMB_X21_Y19_N12
\left_display|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector7~1_combout\ = (\left_display|pr_state.LED_47~q\ & ((\array_reg|array_reg[0][47]~q\) # ((\array_reg|array_reg[0][39]~q\ & \left_display|pr_state.LED_39~q\)))) # (!\left_display|pr_state.LED_47~q\ & (\array_reg|array_reg[0][39]~q\ & 
-- (\left_display|pr_state.LED_39~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_47~q\,
	datab => \array_reg|array_reg[0][39]~q\,
	datac => \left_display|pr_state.LED_39~q\,
	datad => \array_reg|array_reg[0][47]~q\,
	combout => \left_display|Selector7~1_combout\);

-- Location: LCCOMB_X22_Y19_N8
\left_matrix_vector|matrix[7]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[7]~81_combout\ = (\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & (\ball_FSM|Equal10~6_combout\ & !\ball_logic|tempY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~6_combout\,
	datad => \ball_logic|tempY\(2),
	combout => \left_matrix_vector|matrix[7]~81_combout\);

-- Location: FF_X22_Y19_N9
\array_reg|array_reg[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[7]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][7]~q\);

-- Location: LCCOMB_X22_Y19_N20
\left_matrix_vector|matrix[15]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[15]~69_combout\ = (!\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & (\ball_FSM|Equal10~6_combout\ & !\ball_logic|tempY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~6_combout\,
	datad => \ball_logic|tempY\(2),
	combout => \left_matrix_vector|matrix[15]~69_combout\);

-- Location: FF_X22_Y19_N21
\array_reg|array_reg[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[15]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][15]~q\);

-- Location: LCCOMB_X21_Y19_N2
\left_display|Selector7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector7~3_combout\ = (\left_display|pr_state.LED_15~q\ & ((\array_reg|array_reg[0][15]~q\) # ((\array_reg|array_reg[0][7]~q\ & \left_display|pr_state.LED_7~q\)))) # (!\left_display|pr_state.LED_15~q\ & (\array_reg|array_reg[0][7]~q\ & 
-- ((\left_display|pr_state.LED_7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_15~q\,
	datab => \array_reg|array_reg[0][7]~q\,
	datac => \array_reg|array_reg[0][15]~q\,
	datad => \left_display|pr_state.LED_7~q\,
	combout => \left_display|Selector7~3_combout\);

-- Location: LCCOMB_X22_Y19_N0
\left_matrix_vector|matrix[31]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[31]~67_combout\ = (!\ball_logic|tempY\(0) & (!\ball_logic|tempY\(1) & (\ball_FSM|Equal10~6_combout\ & !\ball_logic|tempY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~6_combout\,
	datad => \ball_logic|tempY\(2),
	combout => \left_matrix_vector|matrix[31]~67_combout\);

-- Location: FF_X22_Y19_N1
\array_reg|array_reg[0][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[31]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][31]~q\);

-- Location: LCCOMB_X22_Y19_N2
\left_matrix_vector|matrix[23]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[23]~68_combout\ = (\ball_logic|tempY\(0) & (!\ball_logic|tempY\(1) & (\ball_FSM|Equal10~6_combout\ & !\ball_logic|tempY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~6_combout\,
	datad => \ball_logic|tempY\(2),
	combout => \left_matrix_vector|matrix[23]~68_combout\);

-- Location: FF_X22_Y19_N3
\array_reg|array_reg[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][23]~q\);

-- Location: LCCOMB_X23_Y19_N22
\left_display|Selector7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector7~2_combout\ = (\array_reg|array_reg[0][31]~q\ & ((\left_display|pr_state.LED_31~q\) # ((\left_display|pr_state.LED_23~q\ & \array_reg|array_reg[0][23]~q\)))) # (!\array_reg|array_reg[0][31]~q\ & (\left_display|pr_state.LED_23~q\ & 
-- (\array_reg|array_reg[0][23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[0][31]~q\,
	datab => \left_display|pr_state.LED_23~q\,
	datac => \array_reg|array_reg[0][23]~q\,
	datad => \left_display|pr_state.LED_31~q\,
	combout => \left_display|Selector7~2_combout\);

-- Location: LCCOMB_X22_Y19_N28
\left_matrix_vector|matrix[55]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[55]~64_combout\ = (\ball_logic|tempY\(0) & (!\ball_logic|tempY\(1) & (\ball_FSM|Equal10~6_combout\ & \ball_logic|tempY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~6_combout\,
	datad => \ball_logic|tempY\(2),
	combout => \left_matrix_vector|matrix[55]~64_combout\);

-- Location: FF_X22_Y19_N29
\array_reg|array_reg[0][55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[55]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][55]~q\);

-- Location: LCCOMB_X22_Y19_N18
\left_matrix_vector|matrix[63]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_matrix_vector|matrix[63]~80_combout\ = (!\ball_logic|tempY\(0) & (!\ball_logic|tempY\(1) & (\ball_FSM|Equal10~6_combout\ & \ball_logic|tempY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~6_combout\,
	datad => \ball_logic|tempY\(2),
	combout => \left_matrix_vector|matrix[63]~80_combout\);

-- Location: FF_X22_Y19_N19
\array_reg|array_reg[0][63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \left_matrix_vector|matrix[63]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[0][63]~q\);

-- Location: LCCOMB_X22_Y19_N16
\left_display|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector7~0_combout\ = (\left_display|pr_state.LED_63~q\ & ((\array_reg|array_reg[0][63]~q\) # ((\array_reg|array_reg[0][55]~q\ & \left_display|pr_state.LED_55~q\)))) # (!\left_display|pr_state.LED_63~q\ & (\array_reg|array_reg[0][55]~q\ & 
-- (\left_display|pr_state.LED_55~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_63~q\,
	datab => \array_reg|array_reg[0][55]~q\,
	datac => \left_display|pr_state.LED_55~q\,
	datad => \array_reg|array_reg[0][63]~q\,
	combout => \left_display|Selector7~0_combout\);

-- Location: LCCOMB_X21_Y19_N4
\left_display|Selector7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_display|Selector7~4_combout\ = (\left_display|Selector7~1_combout\) # ((\left_display|Selector7~3_combout\) # ((\left_display|Selector7~2_combout\) # (\left_display|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|Selector7~1_combout\,
	datab => \left_display|Selector7~3_combout\,
	datac => \left_display|Selector7~2_combout\,
	datad => \left_display|Selector7~0_combout\,
	combout => \left_display|Selector7~4_combout\);

-- Location: LCCOMB_X24_Y18_N6
\ball_FSM|Equal10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Equal10~7_combout\ = (!\ball_logic|tempX\(0) & (!\ball_logic|tempX\(2) & (\ball_logic|tempX\(3) & !\ball_logic|tempX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempX\(0),
	datab => \ball_logic|tempX\(2),
	datac => \ball_logic|tempX\(3),
	datad => \ball_logic|tempX\(1),
	combout => \ball_FSM|Equal10~7_combout\);

-- Location: LCCOMB_X24_Y18_N2
\right_matrix_vector|matrix~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix~33_combout\ = (!\ball_logic|tempY\(2) & (!\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & \ball_FSM|Equal10~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(1),
	datad => \ball_FSM|Equal10~7_combout\,
	combout => \right_matrix_vector|matrix~33_combout\);

-- Location: FF_X24_Y18_N3
\array_reg|array_reg[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][9]~q\);

-- Location: LCCOMB_X23_Y17_N20
\right_matrix_vector|matrix~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix~70_combout\ = (\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~7_combout\,
	combout => \right_matrix_vector|matrix~70_combout\);

-- Location: FF_X23_Y17_N21
\array_reg|array_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][1]~q\);

-- Location: LCCOMB_X22_Y19_N4
\right_display|Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector1~3_combout\ = (\array_reg|array_reg[1][9]~q\ & ((\left_display|pr_state.LED_9~q\) # ((\array_reg|array_reg[1][1]~q\ & \left_display|pr_state.LED_1~q\)))) # (!\array_reg|array_reg[1][9]~q\ & (\array_reg|array_reg[1][1]~q\ & 
-- (\left_display|pr_state.LED_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[1][9]~q\,
	datab => \array_reg|array_reg[1][1]~q\,
	datac => \left_display|pr_state.LED_1~q\,
	datad => \left_display|pr_state.LED_9~q\,
	combout => \right_display|Selector1~3_combout\);

-- Location: LCCOMB_X23_Y16_N20
\right_matrix_vector|matrix~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix~29_combout\ = (\ball_logic|tempY\(1) & (\ball_logic|tempY\(2) & (!\ball_logic|tempY\(0) & \ball_FSM|Equal10~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(2),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~7_combout\,
	combout => \right_matrix_vector|matrix~29_combout\);

-- Location: FF_X23_Y16_N21
\array_reg|array_reg[1][41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][41]~q\);

-- Location: LCCOMB_X24_Y18_N8
\right_matrix_vector|matrix~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix~30_combout\ = (\ball_logic|tempY\(2) & (\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & \ball_FSM|Equal10~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(1),
	datad => \ball_FSM|Equal10~7_combout\,
	combout => \right_matrix_vector|matrix~30_combout\);

-- Location: FF_X24_Y18_N9
\array_reg|array_reg[1][33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][33]~q\);

-- Location: LCCOMB_X26_Y16_N0
\right_display|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector1~1_combout\ = (\array_reg|array_reg[1][41]~q\ & ((\left_display|pr_state.LED_41~q\) # ((\array_reg|array_reg[1][33]~q\ & \left_display|pr_state.LED_33~q\)))) # (!\array_reg|array_reg[1][41]~q\ & (\array_reg|array_reg[1][33]~q\ & 
-- (\left_display|pr_state.LED_33~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[1][41]~q\,
	datab => \array_reg|array_reg[1][33]~q\,
	datac => \left_display|pr_state.LED_33~q\,
	datad => \left_display|pr_state.LED_41~q\,
	combout => \right_display|Selector1~1_combout\);

-- Location: LCCOMB_X23_Y17_N4
\right_matrix_vector|matrix~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix~32_combout\ = (!\ball_logic|tempY\(0) & (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~7_combout\,
	combout => \right_matrix_vector|matrix~32_combout\);

-- Location: FF_X23_Y17_N5
\array_reg|array_reg[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][25]~q\);

-- Location: LCCOMB_X23_Y17_N2
\right_matrix_vector|matrix~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix~31_combout\ = (\ball_logic|tempY\(0) & (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~7_combout\,
	combout => \right_matrix_vector|matrix~31_combout\);

-- Location: FF_X23_Y17_N3
\array_reg|array_reg[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][17]~q\);

-- Location: LCCOMB_X23_Y17_N30
\right_display|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector1~2_combout\ = (\left_display|pr_state.LED_17~q\ & ((\array_reg|array_reg[1][17]~q\) # ((\left_display|pr_state.LED_25~q\ & \array_reg|array_reg[1][25]~q\)))) # (!\left_display|pr_state.LED_17~q\ & (\left_display|pr_state.LED_25~q\ 
-- & (\array_reg|array_reg[1][25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_17~q\,
	datab => \left_display|pr_state.LED_25~q\,
	datac => \array_reg|array_reg[1][25]~q\,
	datad => \array_reg|array_reg[1][17]~q\,
	combout => \right_display|Selector1~2_combout\);

-- Location: LCCOMB_X27_Y18_N14
\right_matrix_vector|matrix~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix~28_combout\ = (\ball_logic|tempY\(0) & (!\ball_logic|tempY\(1) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~7_combout\,
	combout => \right_matrix_vector|matrix~28_combout\);

-- Location: FF_X27_Y18_N15
\array_reg|array_reg[1][49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][49]~q\);

-- Location: LCCOMB_X27_Y18_N20
\right_matrix_vector|matrix~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix~69_combout\ = (!\ball_logic|tempY\(0) & (!\ball_logic|tempY\(1) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~7_combout\,
	combout => \right_matrix_vector|matrix~69_combout\);

-- Location: FF_X27_Y18_N21
\array_reg|array_reg[1][57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][57]~q\);

-- Location: LCCOMB_X27_Y16_N6
\right_display|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector1~0_combout\ = (\left_display|pr_state.LED_57~q\ & ((\array_reg|array_reg[1][57]~q\) # ((\array_reg|array_reg[1][49]~q\ & \left_display|pr_state.LED_49~q\)))) # (!\left_display|pr_state.LED_57~q\ & (\array_reg|array_reg[1][49]~q\ & 
-- (\left_display|pr_state.LED_49~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_57~q\,
	datab => \array_reg|array_reg[1][49]~q\,
	datac => \left_display|pr_state.LED_49~q\,
	datad => \array_reg|array_reg[1][57]~q\,
	combout => \right_display|Selector1~0_combout\);

-- Location: LCCOMB_X26_Y16_N6
\right_display|Selector1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector1~4_combout\ = (\right_display|Selector1~3_combout\) # ((\right_display|Selector1~1_combout\) # ((\right_display|Selector1~2_combout\) # (\right_display|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \right_display|Selector1~3_combout\,
	datab => \right_display|Selector1~1_combout\,
	datac => \right_display|Selector1~2_combout\,
	datad => \right_display|Selector1~0_combout\,
	combout => \right_display|Selector1~4_combout\);

-- Location: LCCOMB_X24_Y18_N28
\ball_FSM|Equal10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Equal10~8_combout\ = (\ball_logic|tempX\(0) & (!\ball_logic|tempX\(2) & (\ball_logic|tempX\(3) & \ball_logic|tempX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempX\(0),
	datab => \ball_logic|tempX\(2),
	datac => \ball_logic|tempX\(3),
	datad => \ball_logic|tempX\(1),
	combout => \ball_FSM|Equal10~8_combout\);

-- Location: LCCOMB_X23_Y17_N22
\right_matrix_vector|matrix[18]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[18]~37_combout\ = (\ball_logic|tempY\(0) & (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~8_combout\,
	combout => \right_matrix_vector|matrix[18]~37_combout\);

-- Location: FF_X23_Y17_N23
\array_reg|array_reg[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[18]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][18]~q\);

-- Location: LCCOMB_X23_Y17_N0
\right_matrix_vector|matrix[26]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[26]~38_combout\ = (!\ball_logic|tempY\(0) & (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~8_combout\,
	combout => \right_matrix_vector|matrix[26]~38_combout\);

-- Location: FF_X23_Y17_N1
\array_reg|array_reg[1][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[26]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][26]~q\);

-- Location: LCCOMB_X23_Y17_N26
\right_display|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector2~2_combout\ = (\array_reg|array_reg[1][18]~q\ & ((\left_display|pr_state.LED_18~q\) # ((\left_display|pr_state.LED_26~q\ & \array_reg|array_reg[1][26]~q\)))) # (!\array_reg|array_reg[1][18]~q\ & (((\left_display|pr_state.LED_26~q\ 
-- & \array_reg|array_reg[1][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[1][18]~q\,
	datab => \left_display|pr_state.LED_18~q\,
	datac => \left_display|pr_state.LED_26~q\,
	datad => \array_reg|array_reg[1][26]~q\,
	combout => \right_display|Selector2~2_combout\);

-- Location: LCCOMB_X23_Y16_N6
\right_matrix_vector|matrix[42]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[42]~35_combout\ = (\ball_logic|tempY\(1) & (\ball_logic|tempY\(2) & (!\ball_logic|tempY\(0) & \ball_FSM|Equal10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(2),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~8_combout\,
	combout => \right_matrix_vector|matrix[42]~35_combout\);

-- Location: FF_X23_Y16_N7
\array_reg|array_reg[1][42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[42]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][42]~q\);

-- Location: LCCOMB_X24_Y16_N18
\right_matrix_vector|matrix[34]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[34]~36_combout\ = (\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & (\ball_FSM|Equal10~8_combout\ & \ball_logic|tempY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~8_combout\,
	datad => \ball_logic|tempY\(2),
	combout => \right_matrix_vector|matrix[34]~36_combout\);

-- Location: FF_X24_Y16_N19
\array_reg|array_reg[1][34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[34]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][34]~q\);

-- Location: LCCOMB_X24_Y16_N16
\right_display|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector2~1_combout\ = (\left_display|pr_state.LED_42~q\ & ((\array_reg|array_reg[1][42]~q\) # ((\left_display|pr_state.LED_34~q\ & \array_reg|array_reg[1][34]~q\)))) # (!\left_display|pr_state.LED_42~q\ & 
-- (((\left_display|pr_state.LED_34~q\ & \array_reg|array_reg[1][34]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_42~q\,
	datab => \array_reg|array_reg[1][42]~q\,
	datac => \left_display|pr_state.LED_34~q\,
	datad => \array_reg|array_reg[1][34]~q\,
	combout => \right_display|Selector2~1_combout\);

-- Location: LCCOMB_X23_Y16_N4
\right_matrix_vector|matrix[50]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[50]~34_combout\ = (!\ball_logic|tempY\(1) & (\ball_logic|tempY\(2) & (\ball_logic|tempY\(0) & \ball_FSM|Equal10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(2),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~8_combout\,
	combout => \right_matrix_vector|matrix[50]~34_combout\);

-- Location: FF_X23_Y16_N5
\array_reg|array_reg[1][50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[50]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][50]~q\);

-- Location: LCCOMB_X23_Y16_N10
\right_matrix_vector|matrix[58]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[58]~71_combout\ = (!\ball_logic|tempY\(1) & (\ball_logic|tempY\(2) & (!\ball_logic|tempY\(0) & \ball_FSM|Equal10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(2),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~8_combout\,
	combout => \right_matrix_vector|matrix[58]~71_combout\);

-- Location: FF_X23_Y16_N11
\array_reg|array_reg[1][58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[58]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][58]~q\);

-- Location: LCCOMB_X24_Y16_N8
\right_display|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector2~0_combout\ = (\left_display|pr_state.LED_50~q\ & ((\array_reg|array_reg[1][50]~q\) # ((\left_display|pr_state.LED_58~q\ & \array_reg|array_reg[1][58]~q\)))) # (!\left_display|pr_state.LED_50~q\ & 
-- (((\left_display|pr_state.LED_58~q\ & \array_reg|array_reg[1][58]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_50~q\,
	datab => \array_reg|array_reg[1][50]~q\,
	datac => \left_display|pr_state.LED_58~q\,
	datad => \array_reg|array_reg[1][58]~q\,
	combout => \right_display|Selector2~0_combout\);

-- Location: LCCOMB_X27_Y18_N26
\right_matrix_vector|matrix[10]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[10]~39_combout\ = (!\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~8_combout\,
	combout => \right_matrix_vector|matrix[10]~39_combout\);

-- Location: FF_X27_Y18_N27
\array_reg|array_reg[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[10]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][10]~q\);

-- Location: LCCOMB_X27_Y18_N24
\right_matrix_vector|matrix[2]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[2]~72_combout\ = (\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~8_combout\,
	combout => \right_matrix_vector|matrix[2]~72_combout\);

-- Location: FF_X27_Y18_N25
\array_reg|array_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[2]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][2]~q\);

-- Location: LCCOMB_X27_Y18_N4
\right_display|Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector2~3_combout\ = (\array_reg|array_reg[1][10]~q\ & ((\left_display|pr_state.LED_10~q\) # ((\left_display|pr_state.LED_2~q\ & \array_reg|array_reg[1][2]~q\)))) # (!\array_reg|array_reg[1][10]~q\ & (((\left_display|pr_state.LED_2~q\ & 
-- \array_reg|array_reg[1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[1][10]~q\,
	datab => \left_display|pr_state.LED_10~q\,
	datac => \left_display|pr_state.LED_2~q\,
	datad => \array_reg|array_reg[1][2]~q\,
	combout => \right_display|Selector2~3_combout\);

-- Location: LCCOMB_X24_Y16_N22
\right_display|Selector2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector2~4_combout\ = (\right_display|Selector2~2_combout\) # ((\right_display|Selector2~1_combout\) # ((\right_display|Selector2~0_combout\) # (\right_display|Selector2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \right_display|Selector2~2_combout\,
	datab => \right_display|Selector2~1_combout\,
	datac => \right_display|Selector2~0_combout\,
	datad => \right_display|Selector2~3_combout\,
	combout => \right_display|Selector2~4_combout\);

-- Location: LCCOMB_X24_Y18_N30
\ball_FSM|Equal10~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Equal10~9_combout\ = (\ball_logic|tempX\(0) & (!\ball_logic|tempX\(1) & (\ball_logic|tempX\(2) & \ball_logic|tempX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempX\(0),
	datab => \ball_logic|tempX\(1),
	datac => \ball_logic|tempX\(2),
	datad => \ball_logic|tempX\(3),
	combout => \ball_FSM|Equal10~9_combout\);

-- Location: LCCOMB_X24_Y17_N26
\right_matrix_vector|matrix[52]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[52]~40_combout\ = (!\ball_logic|tempY\(1) & (\ball_logic|tempY\(2) & (\ball_FSM|Equal10~9_combout\ & \ball_logic|tempY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(2),
	datac => \ball_FSM|Equal10~9_combout\,
	datad => \ball_logic|tempY\(0),
	combout => \right_matrix_vector|matrix[52]~40_combout\);

-- Location: FF_X24_Y17_N27
\array_reg|array_reg[1][52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[52]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][52]~q\);

-- Location: LCCOMB_X24_Y17_N4
\right_matrix_vector|matrix[60]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[60]~73_combout\ = (!\ball_logic|tempY\(0) & (\ball_logic|tempY\(2) & (\ball_FSM|Equal10~9_combout\ & !\ball_logic|tempY\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(2),
	datac => \ball_FSM|Equal10~9_combout\,
	datad => \ball_logic|tempY\(1),
	combout => \right_matrix_vector|matrix[60]~73_combout\);

-- Location: FF_X24_Y17_N5
\array_reg|array_reg[1][60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[60]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][60]~q\);

-- Location: LCCOMB_X24_Y17_N20
\right_display|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector4~0_combout\ = (\array_reg|array_reg[1][52]~q\ & ((\left_display|pr_state.LED_52~q\) # ((\array_reg|array_reg[1][60]~q\ & \left_display|pr_state.LED_60~q\)))) # (!\array_reg|array_reg[1][52]~q\ & (((\array_reg|array_reg[1][60]~q\ & 
-- \left_display|pr_state.LED_60~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[1][52]~q\,
	datab => \left_display|pr_state.LED_52~q\,
	datac => \array_reg|array_reg[1][60]~q\,
	datad => \left_display|pr_state.LED_60~q\,
	combout => \right_display|Selector4~0_combout\);

-- Location: LCCOMB_X28_Y18_N18
\right_matrix_vector|matrix[28]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[28]~44_combout\ = (!\ball_logic|tempY\(2) & (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & \ball_FSM|Equal10~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~9_combout\,
	combout => \right_matrix_vector|matrix[28]~44_combout\);

-- Location: FF_X28_Y18_N19
\array_reg|array_reg[1][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[28]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][28]~q\);

-- Location: LCCOMB_X28_Y18_N16
\right_matrix_vector|matrix[20]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[20]~43_combout\ = (!\ball_logic|tempY\(2) & (!\ball_logic|tempY\(1) & (\ball_logic|tempY\(0) & \ball_FSM|Equal10~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~9_combout\,
	combout => \right_matrix_vector|matrix[20]~43_combout\);

-- Location: FF_X28_Y18_N17
\array_reg|array_reg[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[20]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][20]~q\);

-- Location: LCCOMB_X28_Y18_N24
\right_display|Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector4~2_combout\ = (\left_display|pr_state.LED_20~q\ & ((\array_reg|array_reg[1][20]~q\) # ((\array_reg|array_reg[1][28]~q\ & \left_display|pr_state.LED_28~q\)))) # (!\left_display|pr_state.LED_20~q\ & (\array_reg|array_reg[1][28]~q\ & 
-- (\left_display|pr_state.LED_28~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_20~q\,
	datab => \array_reg|array_reg[1][28]~q\,
	datac => \left_display|pr_state.LED_28~q\,
	datad => \array_reg|array_reg[1][20]~q\,
	combout => \right_display|Selector4~2_combout\);

-- Location: LCCOMB_X28_Y18_N12
\right_matrix_vector|matrix[12]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[12]~45_combout\ = (!\ball_logic|tempY\(2) & (\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & \ball_FSM|Equal10~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~9_combout\,
	combout => \right_matrix_vector|matrix[12]~45_combout\);

-- Location: FF_X28_Y18_N13
\array_reg|array_reg[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[12]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][12]~q\);

-- Location: LCCOMB_X28_Y18_N26
\right_matrix_vector|matrix[4]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[4]~74_combout\ = (!\ball_logic|tempY\(2) & (\ball_logic|tempY\(1) & (\ball_logic|tempY\(0) & \ball_FSM|Equal10~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~9_combout\,
	combout => \right_matrix_vector|matrix[4]~74_combout\);

-- Location: FF_X28_Y18_N27
\array_reg|array_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[4]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][4]~q\);

-- Location: LCCOMB_X28_Y18_N22
\right_display|Selector4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector4~3_combout\ = (\array_reg|array_reg[1][12]~q\ & ((\left_display|pr_state.LED_12~q\) # ((\left_display|pr_state.LED_4~q\ & \array_reg|array_reg[1][4]~q\)))) # (!\array_reg|array_reg[1][12]~q\ & (\left_display|pr_state.LED_4~q\ & 
-- (\array_reg|array_reg[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[1][12]~q\,
	datab => \left_display|pr_state.LED_4~q\,
	datac => \array_reg|array_reg[1][4]~q\,
	datad => \left_display|pr_state.LED_12~q\,
	combout => \right_display|Selector4~3_combout\);

-- Location: LCCOMB_X24_Y17_N24
\right_matrix_vector|matrix[36]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[36]~42_combout\ = (\ball_logic|tempY\(1) & (\ball_logic|tempY\(2) & (\ball_FSM|Equal10~9_combout\ & \ball_logic|tempY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(2),
	datac => \ball_FSM|Equal10~9_combout\,
	datad => \ball_logic|tempY\(0),
	combout => \right_matrix_vector|matrix[36]~42_combout\);

-- Location: FF_X24_Y17_N25
\array_reg|array_reg[1][36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[36]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][36]~q\);

-- Location: LCCOMB_X24_Y17_N2
\right_matrix_vector|matrix[44]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[44]~41_combout\ = (!\ball_logic|tempY\(0) & (\ball_logic|tempY\(2) & (\ball_FSM|Equal10~9_combout\ & \ball_logic|tempY\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(2),
	datac => \ball_FSM|Equal10~9_combout\,
	datad => \ball_logic|tempY\(1),
	combout => \right_matrix_vector|matrix[44]~41_combout\);

-- Location: FF_X24_Y17_N3
\array_reg|array_reg[1][44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[44]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][44]~q\);

-- Location: LCCOMB_X24_Y17_N14
\right_display|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector4~1_combout\ = (\left_display|pr_state.LED_36~q\ & ((\array_reg|array_reg[1][36]~q\) # ((\left_display|pr_state.LED_44~q\ & \array_reg|array_reg[1][44]~q\)))) # (!\left_display|pr_state.LED_36~q\ & 
-- (((\left_display|pr_state.LED_44~q\ & \array_reg|array_reg[1][44]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_36~q\,
	datab => \array_reg|array_reg[1][36]~q\,
	datac => \left_display|pr_state.LED_44~q\,
	datad => \array_reg|array_reg[1][44]~q\,
	combout => \right_display|Selector4~1_combout\);

-- Location: LCCOMB_X28_Y18_N20
\right_display|Selector4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector4~4_combout\ = (\right_display|Selector4~0_combout\) # ((\right_display|Selector4~2_combout\) # ((\right_display|Selector4~3_combout\) # (\right_display|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \right_display|Selector4~0_combout\,
	datab => \right_display|Selector4~2_combout\,
	datac => \right_display|Selector4~3_combout\,
	datad => \right_display|Selector4~1_combout\,
	combout => \right_display|Selector4~4_combout\);

-- Location: LCCOMB_X26_Y18_N10
\ball_FSM|Equal10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Equal10~10_combout\ = (\ball_logic|tempX\(1) & (!\ball_logic|tempX\(0) & (\ball_logic|tempX\(3) & !\ball_logic|tempX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempX\(1),
	datab => \ball_logic|tempX\(0),
	datac => \ball_logic|tempX\(3),
	datad => \ball_logic|tempX\(2),
	combout => \ball_FSM|Equal10~10_combout\);

-- Location: LCCOMB_X26_Y18_N8
\right_matrix_vector|matrix[3]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[3]~76_combout\ = (\ball_logic|tempY\(1) & (\ball_logic|tempY\(0) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~10_combout\,
	combout => \right_matrix_vector|matrix[3]~76_combout\);

-- Location: FF_X26_Y18_N9
\array_reg|array_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[3]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][3]~q\);

-- Location: LCCOMB_X26_Y18_N26
\right_matrix_vector|matrix[11]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[11]~51_combout\ = (\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~10_combout\,
	combout => \right_matrix_vector|matrix[11]~51_combout\);

-- Location: FF_X26_Y18_N27
\array_reg|array_reg[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[11]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][11]~q\);

-- Location: LCCOMB_X26_Y19_N14
\right_display|Selector3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector3~3_combout\ = (\array_reg|array_reg[1][3]~q\ & ((\left_display|pr_state.LED_3~q\) # ((\left_display|pr_state.LED_11~q\ & \array_reg|array_reg[1][11]~q\)))) # (!\array_reg|array_reg[1][3]~q\ & (((\left_display|pr_state.LED_11~q\ & 
-- \array_reg|array_reg[1][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[1][3]~q\,
	datab => \left_display|pr_state.LED_3~q\,
	datac => \left_display|pr_state.LED_11~q\,
	datad => \array_reg|array_reg[1][11]~q\,
	combout => \right_display|Selector3~3_combout\);

-- Location: LCCOMB_X26_Y18_N24
\right_matrix_vector|matrix[35]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[35]~48_combout\ = (\ball_logic|tempY\(1) & (\ball_logic|tempY\(0) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~10_combout\,
	combout => \right_matrix_vector|matrix[35]~48_combout\);

-- Location: FF_X26_Y18_N25
\array_reg|array_reg[1][35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[35]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][35]~q\);

-- Location: LCCOMB_X26_Y18_N2
\right_matrix_vector|matrix[43]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[43]~47_combout\ = (\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~10_combout\,
	combout => \right_matrix_vector|matrix[43]~47_combout\);

-- Location: FF_X26_Y18_N3
\array_reg|array_reg[1][43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[43]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][43]~q\);

-- Location: LCCOMB_X26_Y16_N4
\right_display|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector3~1_combout\ = (\left_display|pr_state.LED_35~q\ & ((\array_reg|array_reg[1][35]~q\) # ((\left_display|pr_state.LED_43~q\ & \array_reg|array_reg[1][43]~q\)))) # (!\left_display|pr_state.LED_35~q\ & 
-- (((\left_display|pr_state.LED_43~q\ & \array_reg|array_reg[1][43]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_35~q\,
	datab => \array_reg|array_reg[1][35]~q\,
	datac => \left_display|pr_state.LED_43~q\,
	datad => \array_reg|array_reg[1][43]~q\,
	combout => \right_display|Selector3~1_combout\);

-- Location: LCCOMB_X26_Y18_N6
\right_matrix_vector|matrix[27]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[27]~49_combout\ = (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~10_combout\,
	combout => \right_matrix_vector|matrix[27]~49_combout\);

-- Location: FF_X26_Y18_N7
\array_reg|array_reg[1][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[27]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][27]~q\);

-- Location: LCCOMB_X26_Y18_N16
\right_matrix_vector|matrix[19]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[19]~50_combout\ = (!\ball_logic|tempY\(1) & (\ball_logic|tempY\(0) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~10_combout\,
	combout => \right_matrix_vector|matrix[19]~50_combout\);

-- Location: FF_X26_Y18_N17
\array_reg|array_reg[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][19]~q\);

-- Location: LCCOMB_X27_Y18_N30
\right_display|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector3~2_combout\ = (\left_display|pr_state.LED_19~q\ & ((\array_reg|array_reg[1][19]~q\) # ((\array_reg|array_reg[1][27]~q\ & \left_display|pr_state.LED_27~q\)))) # (!\left_display|pr_state.LED_19~q\ & (\array_reg|array_reg[1][27]~q\ & 
-- ((\left_display|pr_state.LED_27~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_19~q\,
	datab => \array_reg|array_reg[1][27]~q\,
	datac => \array_reg|array_reg[1][19]~q\,
	datad => \left_display|pr_state.LED_27~q\,
	combout => \right_display|Selector3~2_combout\);

-- Location: LCCOMB_X26_Y18_N4
\right_matrix_vector|matrix[51]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[51]~46_combout\ = (!\ball_logic|tempY\(1) & (\ball_logic|tempY\(0) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~10_combout\,
	combout => \right_matrix_vector|matrix[51]~46_combout\);

-- Location: FF_X26_Y18_N5
\array_reg|array_reg[1][51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[51]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][51]~q\);

-- Location: LCCOMB_X26_Y18_N14
\right_matrix_vector|matrix[59]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[59]~75_combout\ = (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~10_combout\,
	combout => \right_matrix_vector|matrix[59]~75_combout\);

-- Location: FF_X26_Y18_N15
\array_reg|array_reg[1][59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[59]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][59]~q\);

-- Location: LCCOMB_X27_Y16_N16
\right_display|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector3~0_combout\ = (\left_display|pr_state.LED_51~q\ & ((\array_reg|array_reg[1][51]~q\) # ((\left_display|pr_state.LED_59~q\ & \array_reg|array_reg[1][59]~q\)))) # (!\left_display|pr_state.LED_51~q\ & 
-- (((\left_display|pr_state.LED_59~q\ & \array_reg|array_reg[1][59]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_51~q\,
	datab => \array_reg|array_reg[1][51]~q\,
	datac => \left_display|pr_state.LED_59~q\,
	datad => \array_reg|array_reg[1][59]~q\,
	combout => \right_display|Selector3~0_combout\);

-- Location: LCCOMB_X27_Y16_N22
\right_display|Selector3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector3~4_combout\ = (\right_display|Selector3~3_combout\) # ((\right_display|Selector3~1_combout\) # ((\right_display|Selector3~2_combout\) # (\right_display|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \right_display|Selector3~3_combout\,
	datab => \right_display|Selector3~1_combout\,
	datac => \right_display|Selector3~2_combout\,
	datad => \right_display|Selector3~0_combout\,
	combout => \right_display|Selector3~4_combout\);

-- Location: LCCOMB_X24_Y18_N16
\ball_FSM|Equal10~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Equal10~11_combout\ = (!\ball_logic|tempX\(0) & (!\ball_logic|tempX\(1) & (\ball_logic|tempX\(2) & \ball_logic|tempX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempX\(0),
	datab => \ball_logic|tempX\(1),
	datac => \ball_logic|tempX\(2),
	datad => \ball_logic|tempX\(3),
	combout => \ball_FSM|Equal10~11_combout\);

-- Location: LCCOMB_X23_Y19_N28
\right_matrix_vector|matrix~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix~56_combout\ = (!\ball_logic|tempY\(1) & (\ball_logic|tempY\(0) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~11_combout\,
	combout => \right_matrix_vector|matrix~56_combout\);

-- Location: FF_X23_Y19_N29
\array_reg|array_reg[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][21]~q\);

-- Location: LCCOMB_X23_Y19_N0
\right_matrix_vector|matrix~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix~55_combout\ = (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~11_combout\,
	combout => \right_matrix_vector|matrix~55_combout\);

-- Location: FF_X23_Y19_N1
\array_reg|array_reg[1][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][29]~q\);

-- Location: LCCOMB_X23_Y19_N18
\right_display|Selector5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector5~2_combout\ = (\left_display|pr_state.LED_21~q\ & ((\array_reg|array_reg[1][21]~q\) # ((\left_display|pr_state.LED_29~q\ & \array_reg|array_reg[1][29]~q\)))) # (!\left_display|pr_state.LED_21~q\ & 
-- (((\left_display|pr_state.LED_29~q\ & \array_reg|array_reg[1][29]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_21~q\,
	datab => \array_reg|array_reg[1][21]~q\,
	datac => \left_display|pr_state.LED_29~q\,
	datad => \array_reg|array_reg[1][29]~q\,
	combout => \right_display|Selector5~2_combout\);

-- Location: LCCOMB_X23_Y19_N10
\right_matrix_vector|matrix~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix~52_combout\ = (!\ball_logic|tempY\(1) & (\ball_logic|tempY\(0) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~11_combout\,
	combout => \right_matrix_vector|matrix~52_combout\);

-- Location: FF_X23_Y19_N11
\array_reg|array_reg[1][53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][53]~q\);

-- Location: LCCOMB_X23_Y19_N6
\right_matrix_vector|matrix~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix~77_combout\ = (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~11_combout\,
	combout => \right_matrix_vector|matrix~77_combout\);

-- Location: FF_X23_Y19_N7
\array_reg|array_reg[1][61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][61]~q\);

-- Location: LCCOMB_X22_Y19_N6
\right_display|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector5~0_combout\ = (\left_display|pr_state.LED_53~q\ & ((\array_reg|array_reg[1][53]~q\) # ((\left_display|pr_state.LED_61~q\ & \array_reg|array_reg[1][61]~q\)))) # (!\left_display|pr_state.LED_53~q\ & 
-- (((\left_display|pr_state.LED_61~q\ & \array_reg|array_reg[1][61]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_53~q\,
	datab => \array_reg|array_reg[1][53]~q\,
	datac => \left_display|pr_state.LED_61~q\,
	datad => \array_reg|array_reg[1][61]~q\,
	combout => \right_display|Selector5~0_combout\);

-- Location: LCCOMB_X23_Y17_N28
\right_matrix_vector|matrix~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix~78_combout\ = (!\ball_logic|tempY\(2) & (\ball_logic|tempY\(1) & (\ball_FSM|Equal10~11_combout\ & \ball_logic|tempY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~11_combout\,
	datad => \ball_logic|tempY\(0),
	combout => \right_matrix_vector|matrix~78_combout\);

-- Location: FF_X23_Y17_N29
\array_reg|array_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][5]~q\);

-- Location: LCCOMB_X23_Y17_N18
\right_matrix_vector|matrix~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix~57_combout\ = (!\ball_logic|tempY\(2) & (\ball_logic|tempY\(1) & (\ball_FSM|Equal10~11_combout\ & !\ball_logic|tempY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~11_combout\,
	datad => \ball_logic|tempY\(0),
	combout => \right_matrix_vector|matrix~57_combout\);

-- Location: FF_X23_Y17_N19
\array_reg|array_reg[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][13]~q\);

-- Location: LCCOMB_X26_Y17_N10
\right_display|Selector5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector5~3_combout\ = (\array_reg|array_reg[1][5]~q\ & ((\left_display|pr_state.LED_5~q\) # ((\array_reg|array_reg[1][13]~q\ & \left_display|pr_state.LED_13~q\)))) # (!\array_reg|array_reg[1][5]~q\ & (\array_reg|array_reg[1][13]~q\ & 
-- (\left_display|pr_state.LED_13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[1][5]~q\,
	datab => \array_reg|array_reg[1][13]~q\,
	datac => \left_display|pr_state.LED_13~q\,
	datad => \left_display|pr_state.LED_5~q\,
	combout => \right_display|Selector5~3_combout\);

-- Location: LCCOMB_X23_Y17_N8
\right_matrix_vector|matrix~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix~54_combout\ = (\ball_logic|tempY\(2) & (\ball_logic|tempY\(1) & (\ball_FSM|Equal10~11_combout\ & \ball_logic|tempY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(1),
	datac => \ball_FSM|Equal10~11_combout\,
	datad => \ball_logic|tempY\(0),
	combout => \right_matrix_vector|matrix~54_combout\);

-- Location: FF_X23_Y17_N9
\array_reg|array_reg[1][37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][37]~q\);

-- Location: LCCOMB_X24_Y17_N28
\right_matrix_vector|matrix~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix~53_combout\ = (!\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & (\ball_logic|tempY\(2) & \ball_FSM|Equal10~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~11_combout\,
	combout => \right_matrix_vector|matrix~53_combout\);

-- Location: FF_X24_Y17_N29
\array_reg|array_reg[1][45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][45]~q\);

-- Location: LCCOMB_X24_Y17_N22
\right_display|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector5~1_combout\ = (\array_reg|array_reg[1][37]~q\ & ((\left_display|pr_state.LED_37~q\) # ((\array_reg|array_reg[1][45]~q\ & \left_display|pr_state.LED_45~q\)))) # (!\array_reg|array_reg[1][37]~q\ & (\array_reg|array_reg[1][45]~q\ & 
-- ((\left_display|pr_state.LED_45~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[1][37]~q\,
	datab => \array_reg|array_reg[1][45]~q\,
	datac => \left_display|pr_state.LED_37~q\,
	datad => \left_display|pr_state.LED_45~q\,
	combout => \right_display|Selector5~1_combout\);

-- Location: LCCOMB_X20_Y15_N16
\right_display|Selector5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector5~4_combout\ = (\right_display|Selector5~2_combout\) # ((\right_display|Selector5~0_combout\) # ((\right_display|Selector5~3_combout\) # (\right_display|Selector5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \right_display|Selector5~2_combout\,
	datab => \right_display|Selector5~0_combout\,
	datac => \right_display|Selector5~3_combout\,
	datad => \right_display|Selector5~1_combout\,
	combout => \right_display|Selector5~4_combout\);

-- Location: LCCOMB_X24_Y18_N18
\ball_FSM|Equal10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_FSM|Equal10~12_combout\ = (\ball_logic|tempX\(0) & (!\ball_logic|tempX\(2) & (\ball_logic|tempX\(3) & !\ball_logic|tempX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempX\(0),
	datab => \ball_logic|tempX\(2),
	datac => \ball_logic|tempX\(3),
	datad => \ball_logic|tempX\(1),
	combout => \ball_FSM|Equal10~12_combout\);

-- Location: LCCOMB_X23_Y16_N8
\right_matrix_vector|matrix[40]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix\(40) = (\ball_logic|tempY\(1) & (\ball_logic|tempY\(2) & (!\ball_logic|tempY\(0) & \ball_FSM|Equal10~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(2),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~12_combout\,
	combout => \right_matrix_vector|matrix\(40));

-- Location: FF_X23_Y16_N9
\array_reg|array_reg[1][40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][40]~q\);

-- Location: LCCOMB_X24_Y18_N24
\right_matrix_vector|matrix[32]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix\(32) = (\ball_logic|tempY\(2) & (\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & \ball_FSM|Equal10~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(1),
	datad => \ball_FSM|Equal10~12_combout\,
	combout => \right_matrix_vector|matrix\(32));

-- Location: FF_X24_Y18_N25
\array_reg|array_reg[1][32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][32]~q\);

-- Location: LCCOMB_X23_Y16_N30
\right_display|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector0~1_combout\ = (\left_display|pr_state.LED_40~q\ & ((\array_reg|array_reg[1][40]~q\) # ((\array_reg|array_reg[1][32]~q\ & \left_display|pr_state.LED_32~q\)))) # (!\left_display|pr_state.LED_40~q\ & (((\array_reg|array_reg[1][32]~q\ 
-- & \left_display|pr_state.LED_32~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_40~q\,
	datab => \array_reg|array_reg[1][40]~q\,
	datac => \array_reg|array_reg[1][32]~q\,
	datad => \left_display|pr_state.LED_32~q\,
	combout => \right_display|Selector0~1_combout\);

-- Location: LCCOMB_X23_Y16_N0
\right_matrix_vector|matrix[24]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix\(24) = (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(2) & (!\ball_logic|tempY\(0) & \ball_FSM|Equal10~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(2),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~12_combout\,
	combout => \right_matrix_vector|matrix\(24));

-- Location: FF_X23_Y16_N1
\array_reg|array_reg[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][24]~q\);

-- Location: LCCOMB_X23_Y16_N22
\right_matrix_vector|matrix[16]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix\(16) = (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(2) & (\ball_logic|tempY\(0) & \ball_FSM|Equal10~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(2),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~12_combout\,
	combout => \right_matrix_vector|matrix\(16));

-- Location: FF_X23_Y16_N23
\array_reg|array_reg[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][16]~q\);

-- Location: LCCOMB_X23_Y16_N16
\right_display|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector0~2_combout\ = (\left_display|pr_state.LED_16~q\ & ((\array_reg|array_reg[1][16]~q\) # ((\array_reg|array_reg[1][24]~q\ & \left_display|pr_state.LED_24~q\)))) # (!\left_display|pr_state.LED_16~q\ & (\array_reg|array_reg[1][24]~q\ & 
-- ((\left_display|pr_state.LED_24~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_16~q\,
	datab => \array_reg|array_reg[1][24]~q\,
	datac => \array_reg|array_reg[1][16]~q\,
	datad => \left_display|pr_state.LED_24~q\,
	combout => \right_display|Selector0~2_combout\);

-- Location: LCCOMB_X24_Y18_N26
\right_matrix_vector|matrix[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix\(0) = (!\ball_logic|tempY\(2) & (\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & \ball_FSM|Equal10~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(1),
	datad => \ball_FSM|Equal10~12_combout\,
	combout => \right_matrix_vector|matrix\(0));

-- Location: FF_X24_Y18_N27
\array_reg|array_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][0]~q\);

-- Location: LCCOMB_X23_Y17_N10
\right_matrix_vector|matrix[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix\(8) = (\ball_FSM|Equal10~12_combout\ & (\ball_logic|tempY\(1) & (!\ball_logic|tempY\(2) & !\ball_logic|tempY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_FSM|Equal10~12_combout\,
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_logic|tempY\(0),
	combout => \right_matrix_vector|matrix\(8));

-- Location: FF_X23_Y17_N11
\array_reg|array_reg[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][8]~q\);

-- Location: LCCOMB_X26_Y19_N22
\right_display|Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector0~3_combout\ = (\array_reg|array_reg[1][0]~q\ & ((\left_display|pr_state.LED_0~q\) # ((\array_reg|array_reg[1][8]~q\ & \left_display|pr_state.LED_8~q\)))) # (!\array_reg|array_reg[1][0]~q\ & (\array_reg|array_reg[1][8]~q\ & 
-- (\left_display|pr_state.LED_8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[1][0]~q\,
	datab => \array_reg|array_reg[1][8]~q\,
	datac => \left_display|pr_state.LED_8~q\,
	datad => \left_display|pr_state.LED_0~q\,
	combout => \right_display|Selector0~3_combout\);

-- Location: LCCOMB_X23_Y16_N26
\right_matrix_vector|matrix[48]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix\(48) = (!\ball_logic|tempY\(1) & (\ball_logic|tempY\(2) & (\ball_logic|tempY\(0) & \ball_FSM|Equal10~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(2),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~12_combout\,
	combout => \right_matrix_vector|matrix\(48));

-- Location: FF_X23_Y16_N27
\array_reg|array_reg[1][48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][48]~q\);

-- Location: LCCOMB_X23_Y16_N24
\right_matrix_vector|matrix[56]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix\(56) = (!\ball_logic|tempY\(1) & (\ball_logic|tempY\(2) & (!\ball_logic|tempY\(0) & \ball_FSM|Equal10~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(2),
	datac => \ball_logic|tempY\(0),
	datad => \ball_FSM|Equal10~12_combout\,
	combout => \right_matrix_vector|matrix\(56));

-- Location: FF_X23_Y16_N25
\array_reg|array_reg[1][56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][56]~q\);

-- Location: LCCOMB_X24_Y16_N28
\right_display|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector0~0_combout\ = (\array_reg|array_reg[1][48]~q\ & ((\left_display|pr_state.LED_48~q\) # ((\array_reg|array_reg[1][56]~q\ & \left_display|pr_state.LED_56~q\)))) # (!\array_reg|array_reg[1][48]~q\ & (\array_reg|array_reg[1][56]~q\ & 
-- ((\left_display|pr_state.LED_56~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[1][48]~q\,
	datab => \array_reg|array_reg[1][56]~q\,
	datac => \left_display|pr_state.LED_48~q\,
	datad => \left_display|pr_state.LED_56~q\,
	combout => \right_display|Selector0~0_combout\);

-- Location: LCCOMB_X23_Y16_N18
\right_display|Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector0~4_combout\ = (\right_display|Selector0~1_combout\) # ((\right_display|Selector0~2_combout\) # ((\right_display|Selector0~3_combout\) # (\right_display|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \right_display|Selector0~1_combout\,
	datab => \right_display|Selector0~2_combout\,
	datac => \right_display|Selector0~3_combout\,
	datad => \right_display|Selector0~0_combout\,
	combout => \right_display|Selector0~4_combout\);

-- Location: LCCOMB_X23_Y15_N12
\right_matrix_vector|matrix[38]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[38]~60_combout\ = (\ball_logic|tempY\(2) & (\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & \ball_FSM|Equal10~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(1),
	datad => \ball_FSM|Equal10~13_combout\,
	combout => \right_matrix_vector|matrix[38]~60_combout\);

-- Location: FF_X23_Y15_N13
\array_reg|array_reg[1][38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[38]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][38]~q\);

-- Location: LCCOMB_X23_Y15_N2
\right_matrix_vector|matrix[46]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[46]~59_combout\ = (\ball_logic|tempY\(2) & (!\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & \ball_FSM|Equal10~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(1),
	datad => \ball_FSM|Equal10~13_combout\,
	combout => \right_matrix_vector|matrix[46]~59_combout\);

-- Location: FF_X23_Y15_N3
\array_reg|array_reg[1][46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[46]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][46]~q\);

-- Location: LCCOMB_X23_Y15_N6
\right_display|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector6~1_combout\ = (\array_reg|array_reg[1][38]~q\ & ((\left_display|pr_state.LED_38~q\) # ((\left_display|pr_state.LED_46~q\ & \array_reg|array_reg[1][46]~q\)))) # (!\array_reg|array_reg[1][38]~q\ & (\left_display|pr_state.LED_46~q\ & 
-- ((\array_reg|array_reg[1][46]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[1][38]~q\,
	datab => \left_display|pr_state.LED_46~q\,
	datac => \left_display|pr_state.LED_38~q\,
	datad => \array_reg|array_reg[1][46]~q\,
	combout => \right_display|Selector6~1_combout\);

-- Location: LCCOMB_X21_Y19_N22
\right_matrix_vector|matrix[62]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[62]~79_combout\ = (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & (\ball_FSM|Equal10~13_combout\ & \ball_logic|tempY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_FSM|Equal10~13_combout\,
	datad => \ball_logic|tempY\(2),
	combout => \right_matrix_vector|matrix[62]~79_combout\);

-- Location: FF_X21_Y19_N23
\array_reg|array_reg[1][62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[62]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][62]~q\);

-- Location: LCCOMB_X22_Y19_N14
\right_matrix_vector|matrix[54]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[54]~58_combout\ = (\ball_logic|tempY\(2) & (\ball_logic|tempY\(0) & (!\ball_logic|tempY\(1) & \ball_FSM|Equal10~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(2),
	datab => \ball_logic|tempY\(0),
	datac => \ball_logic|tempY\(1),
	datad => \ball_FSM|Equal10~13_combout\,
	combout => \right_matrix_vector|matrix[54]~58_combout\);

-- Location: FF_X22_Y19_N15
\array_reg|array_reg[1][54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[54]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][54]~q\);

-- Location: LCCOMB_X23_Y19_N30
\right_display|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector6~0_combout\ = (\array_reg|array_reg[1][62]~q\ & ((\left_display|pr_state.LED_62~q\) # ((\array_reg|array_reg[1][54]~q\ & \left_display|pr_state.LED_54~q\)))) # (!\array_reg|array_reg[1][62]~q\ & (\array_reg|array_reg[1][54]~q\ & 
-- ((\left_display|pr_state.LED_54~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[1][62]~q\,
	datab => \array_reg|array_reg[1][54]~q\,
	datac => \left_display|pr_state.LED_62~q\,
	datad => \left_display|pr_state.LED_54~q\,
	combout => \right_display|Selector6~0_combout\);

-- Location: LCCOMB_X22_Y17_N26
\right_matrix_vector|matrix[14]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[14]~63_combout\ = (!\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~13_combout\,
	combout => \right_matrix_vector|matrix[14]~63_combout\);

-- Location: FF_X22_Y17_N27
\array_reg|array_reg[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[14]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][14]~q\);

-- Location: LCCOMB_X22_Y17_N0
\right_matrix_vector|matrix[6]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[6]~80_combout\ = (\ball_logic|tempY\(0) & (\ball_logic|tempY\(1) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~13_combout\,
	combout => \right_matrix_vector|matrix[6]~80_combout\);

-- Location: FF_X22_Y17_N1
\array_reg|array_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[6]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][6]~q\);

-- Location: LCCOMB_X26_Y17_N28
\right_display|Selector6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector6~3_combout\ = (\array_reg|array_reg[1][14]~q\ & ((\left_display|pr_state.LED_14~q\) # ((\array_reg|array_reg[1][6]~q\ & \left_display|pr_state.LED_6~q\)))) # (!\array_reg|array_reg[1][14]~q\ & (((\array_reg|array_reg[1][6]~q\ & 
-- \left_display|pr_state.LED_6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[1][14]~q\,
	datab => \left_display|pr_state.LED_14~q\,
	datac => \array_reg|array_reg[1][6]~q\,
	datad => \left_display|pr_state.LED_6~q\,
	combout => \right_display|Selector6~3_combout\);

-- Location: LCCOMB_X22_Y17_N4
\right_matrix_vector|matrix[22]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[22]~62_combout\ = (\ball_logic|tempY\(0) & (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(2) & \ball_FSM|Equal10~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(0),
	datab => \ball_logic|tempY\(1),
	datac => \ball_logic|tempY\(2),
	datad => \ball_FSM|Equal10~13_combout\,
	combout => \right_matrix_vector|matrix[22]~62_combout\);

-- Location: FF_X22_Y17_N5
\array_reg|array_reg[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[22]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][22]~q\);

-- Location: LCCOMB_X21_Y19_N0
\right_matrix_vector|matrix[30]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[30]~61_combout\ = (!\ball_logic|tempY\(1) & (!\ball_logic|tempY\(0) & (\ball_FSM|Equal10~13_combout\ & !\ball_logic|tempY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_logic|tempY\(1),
	datab => \ball_logic|tempY\(0),
	datac => \ball_FSM|Equal10~13_combout\,
	datad => \ball_logic|tempY\(2),
	combout => \right_matrix_vector|matrix[30]~61_combout\);

-- Location: FF_X21_Y19_N1
\array_reg|array_reg[1][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[30]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][30]~q\);

-- Location: LCCOMB_X23_Y19_N14
\right_display|Selector6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector6~2_combout\ = (\array_reg|array_reg[1][22]~q\ & ((\left_display|pr_state.LED_22~q\) # ((\array_reg|array_reg[1][30]~q\ & \left_display|pr_state.LED_30~q\)))) # (!\array_reg|array_reg[1][22]~q\ & (\array_reg|array_reg[1][30]~q\ & 
-- (\left_display|pr_state.LED_30~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[1][22]~q\,
	datab => \array_reg|array_reg[1][30]~q\,
	datac => \left_display|pr_state.LED_30~q\,
	datad => \left_display|pr_state.LED_22~q\,
	combout => \right_display|Selector6~2_combout\);

-- Location: LCCOMB_X23_Y15_N20
\right_display|Selector6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector6~4_combout\ = (\right_display|Selector6~1_combout\) # ((\right_display|Selector6~0_combout\) # ((\right_display|Selector6~3_combout\) # (\right_display|Selector6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \right_display|Selector6~1_combout\,
	datab => \right_display|Selector6~0_combout\,
	datac => \right_display|Selector6~3_combout\,
	datad => \right_display|Selector6~2_combout\,
	combout => \right_display|Selector6~4_combout\);

-- Location: LCCOMB_X21_Y18_N28
\right_matrix_vector|Equal15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|Equal15~2_combout\ = (\racket_logic|temp2\(1) & (!\racket_logic|temp2\(0) & !\racket_logic|temp2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \racket_logic|temp2\(1),
	datac => \racket_logic|temp2\(0),
	datad => \racket_logic|temp2\(2),
	combout => \right_matrix_vector|Equal15~2_combout\);

-- Location: FF_X21_Y18_N29
\array_reg|array_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|Equal15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][7]~q\);

-- Location: LCCOMB_X21_Y18_N10
\right_matrix_vector|Equal15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|Equal15~1_combout\ = (\racket_logic|temp2\(1) & !\racket_logic|temp2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \racket_logic|temp2\(1),
	datad => \racket_logic|temp2\(2),
	combout => \right_matrix_vector|Equal15~1_combout\);

-- Location: FF_X21_Y18_N11
\array_reg|array_reg[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|Equal15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][15]~q\);

-- Location: LCCOMB_X26_Y17_N22
\right_display|Selector7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector7~3_combout\ = (\left_display|pr_state.LED_7~q\ & ((\array_reg|array_reg[1][7]~q\) # ((\array_reg|array_reg[1][15]~q\ & \left_display|pr_state.LED_15~q\)))) # (!\left_display|pr_state.LED_7~q\ & (((\array_reg|array_reg[1][15]~q\ & 
-- \left_display|pr_state.LED_15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \left_display|pr_state.LED_7~q\,
	datab => \array_reg|array_reg[1][7]~q\,
	datac => \array_reg|array_reg[1][15]~q\,
	datad => \left_display|pr_state.LED_15~q\,
	combout => \right_display|Selector7~3_combout\);

-- Location: LCCOMB_X22_Y15_N0
\right_matrix_vector|Equal15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|Equal15~0_combout\ = (\racket_logic|temp2\(1) & (\racket_logic|temp2\(2) & \racket_logic|temp2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \racket_logic|temp2\(1),
	datac => \racket_logic|temp2\(2),
	datad => \racket_logic|temp2\(0),
	combout => \right_matrix_vector|Equal15~0_combout\);

-- Location: FF_X22_Y15_N1
\array_reg|array_reg[1][63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|Equal15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][63]~q\);

-- Location: LCCOMB_X22_Y15_N6
\right_matrix_vector|matrix[55]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[55]~64_combout\ = (\racket_logic|temp2\(2) & \racket_logic|temp2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \racket_logic|temp2\(2),
	datad => \racket_logic|temp2\(1),
	combout => \right_matrix_vector|matrix[55]~64_combout\);

-- Location: FF_X22_Y15_N7
\array_reg|array_reg[1][55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[55]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][55]~q\);

-- Location: LCCOMB_X26_Y15_N0
\right_display|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector7~0_combout\ = (\array_reg|array_reg[1][63]~q\ & ((\left_display|pr_state.LED_63~q\) # ((\left_display|pr_state.LED_55~q\ & \array_reg|array_reg[1][55]~q\)))) # (!\array_reg|array_reg[1][63]~q\ & (((\left_display|pr_state.LED_55~q\ 
-- & \array_reg|array_reg[1][55]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[1][63]~q\,
	datab => \left_display|pr_state.LED_63~q\,
	datac => \left_display|pr_state.LED_55~q\,
	datad => \array_reg|array_reg[1][55]~q\,
	combout => \right_display|Selector7~0_combout\);

-- Location: LCCOMB_X22_Y17_N10
\right_matrix_vector|matrix[39]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[39]~66_combout\ = (\racket_logic|temp2\(1) & (\racket_logic|temp2\(2) & !\racket_logic|temp2\(0))) # (!\racket_logic|temp2\(1) & (!\racket_logic|temp2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \racket_logic|temp2\(1),
	datac => \racket_logic|temp2\(2),
	datad => \racket_logic|temp2\(0),
	combout => \right_matrix_vector|matrix[39]~66_combout\);

-- Location: FF_X22_Y17_N11
\array_reg|array_reg[1][39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[39]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][39]~q\);

-- Location: LCCOMB_X22_Y16_N30
\right_matrix_vector|matrix[47]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[47]~65_combout\ = (\racket_logic|temp2\(2) & ((\racket_logic|temp2\(1)))) # (!\racket_logic|temp2\(2) & (\racket_logic|temp2\(0) & !\racket_logic|temp2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \racket_logic|temp2\(2),
	datac => \racket_logic|temp2\(0),
	datad => \racket_logic|temp2\(1),
	combout => \right_matrix_vector|matrix[47]~65_combout\);

-- Location: FF_X22_Y16_N31
\array_reg|array_reg[1][47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[47]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][47]~q\);

-- Location: LCCOMB_X26_Y15_N22
\right_display|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector7~1_combout\ = (\array_reg|array_reg[1][39]~q\ & ((\left_display|pr_state.LED_39~q\) # ((\left_display|pr_state.LED_47~q\ & \array_reg|array_reg[1][47]~q\)))) # (!\array_reg|array_reg[1][39]~q\ & (\left_display|pr_state.LED_47~q\ & 
-- (\array_reg|array_reg[1][47]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[1][39]~q\,
	datab => \left_display|pr_state.LED_47~q\,
	datac => \array_reg|array_reg[1][47]~q\,
	datad => \left_display|pr_state.LED_39~q\,
	combout => \right_display|Selector7~1_combout\);

-- Location: LCCOMB_X21_Y17_N4
\right_matrix_vector|matrix[31]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[31]~67_combout\ = (!\racket_logic|temp2\(2) & ((\racket_logic|temp2\(0)) # (!\racket_logic|temp2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \racket_logic|temp2\(2),
	datab => \racket_logic|temp2\(1),
	datac => \racket_logic|temp2\(0),
	combout => \right_matrix_vector|matrix[31]~67_combout\);

-- Location: FF_X21_Y17_N5
\array_reg|array_reg[1][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[31]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][31]~q\);

-- Location: LCCOMB_X21_Y18_N0
\right_matrix_vector|matrix[23]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_matrix_vector|matrix[23]~68_combout\ = (!\racket_logic|temp2\(2) & ((\racket_logic|temp2\(1)) # (!\racket_logic|temp2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \racket_logic|temp2\(1),
	datac => \racket_logic|temp2\(0),
	datad => \racket_logic|temp2\(2),
	combout => \right_matrix_vector|matrix[23]~68_combout\);

-- Location: FF_X21_Y18_N1
\array_reg|array_reg[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \right_matrix_vector|matrix[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \array_reg|array_reg[1][23]~q\);

-- Location: LCCOMB_X27_Y19_N26
\right_display|Selector7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector7~2_combout\ = (\array_reg|array_reg[1][31]~q\ & ((\left_display|pr_state.LED_31~q\) # ((\left_display|pr_state.LED_23~q\ & \array_reg|array_reg[1][23]~q\)))) # (!\array_reg|array_reg[1][31]~q\ & (\left_display|pr_state.LED_23~q\ & 
-- ((\array_reg|array_reg[1][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \array_reg|array_reg[1][31]~q\,
	datab => \left_display|pr_state.LED_23~q\,
	datac => \left_display|pr_state.LED_31~q\,
	datad => \array_reg|array_reg[1][23]~q\,
	combout => \right_display|Selector7~2_combout\);

-- Location: LCCOMB_X26_Y15_N12
\right_display|Selector7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \right_display|Selector7~4_combout\ = (\right_display|Selector7~3_combout\) # ((\right_display|Selector7~0_combout\) # ((\right_display|Selector7~1_combout\) # (\right_display|Selector7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \right_display|Selector7~3_combout\,
	datab => \right_display|Selector7~0_combout\,
	datac => \right_display|Selector7~1_combout\,
	datad => \right_display|Selector7~2_combout\,
	combout => \right_display|Selector7~4_combout\);

ww_score1(0) <= \score1[0]~output_o\;

ww_score1(1) <= \score1[1]~output_o\;

ww_score1(2) <= \score1[2]~output_o\;

ww_score1(3) <= \score1[3]~output_o\;

ww_score1(4) <= \score1[4]~output_o\;

ww_score1(5) <= \score1[5]~output_o\;

ww_score1(6) <= \score1[6]~output_o\;

ww_score2(0) <= \score2[0]~output_o\;

ww_score2(1) <= \score2[1]~output_o\;

ww_score2(2) <= \score2[2]~output_o\;

ww_score2(3) <= \score2[3]~output_o\;

ww_score2(4) <= \score2[4]~output_o\;

ww_score2(5) <= \score2[5]~output_o\;

ww_score2(6) <= \score2[6]~output_o\;

ww_M1(0) <= \M1[0]~output_o\;

ww_M1(1) <= \M1[1]~output_o\;

ww_M1(2) <= \M1[2]~output_o\;

ww_M1(3) <= \M1[3]~output_o\;

ww_M1(4) <= \M1[4]~output_o\;

ww_M1(5) <= \M1[5]~output_o\;

ww_M1(6) <= \M1[6]~output_o\;

ww_M1(7) <= \M1[7]~output_o\;

ww_M1(8) <= \M1[8]~output_o\;

ww_M1(9) <= \M1[9]~output_o\;

ww_M1(10) <= \M1[10]~output_o\;

ww_M1(11) <= \M1[11]~output_o\;

ww_M1(12) <= \M1[12]~output_o\;

ww_M1(13) <= \M1[13]~output_o\;

ww_M1(14) <= \M1[14]~output_o\;

ww_M1(15) <= \M1[15]~output_o\;

ww_M2(0) <= \M2[0]~output_o\;

ww_M2(1) <= \M2[1]~output_o\;

ww_M2(2) <= \M2[2]~output_o\;

ww_M2(3) <= \M2[3]~output_o\;

ww_M2(4) <= \M2[4]~output_o\;

ww_M2(5) <= \M2[5]~output_o\;

ww_M2(6) <= \M2[6]~output_o\;

ww_M2(7) <= \M2[7]~output_o\;

ww_M2(8) <= \M2[8]~output_o\;

ww_M2(9) <= \M2[9]~output_o\;

ww_M2(10) <= \M2[10]~output_o\;

ww_M2(11) <= \M2[11]~output_o\;

ww_M2(12) <= \M2[12]~output_o\;

ww_M2(13) <= \M2[13]~output_o\;

ww_M2(14) <= \M2[14]~output_o\;

ww_M2(15) <= \M2[15]~output_o\;
END structure;


