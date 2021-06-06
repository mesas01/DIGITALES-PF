LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
--------------------------------------------
ENTITY pong IS
	PORT (	clk	:	IN		STD_LOGIC;
				rst	:	IN		STD_LOGIC;
				start	:	IN		STD_LOGIC;
				B1_up	:	IN		STD_LOGIC;
				B1_dw	:	IN		STD_LOGIC;
				B2_up	:	IN		STD_LOGIC;
				B2_dw	:	IN		STD_LOGIC;
				score1:	OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);
				score2:	OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);
				M1		:	OUT	STD_LOGIC_VECTOR(15 DOWNTO 0);
				M2		:	OUT	STD_LOGIC_VECTOR(15 DOWNTO 0));
END ENTITY;
---------------------------------------------
ARCHITECTURE gateLevel OF pong IS
	CONSTANT N		:		INTEGER := 16;
	SIGNAL raq1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL raq2 : STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL xb_up: STD_LOGIC;
	SIGNAL xb_dw: STD_LOGIC;
	SIGNAL yb_up: STD_LOGIC;
	SIGNAL yb_dw: STD_LOGIC;
	SIGNAL xb 	: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL yb 	: STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL rst_game: STD_LOGIC;
	SIGNAL rst_play: STD_LOGIC;
	SIGNAL score1_s: STD_LOGIC;
	SIGNAL score2_s: STD_LOGIC;
	SIGNAL points1_bin: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL points2_bin: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL matrix_left: STD_LOGIC_VECTOR(63 DOWNTO 0);
	SIGNAL matrix_right: STD_LOGIC_VECTOR(63 DOWNTO 0);
	SIGNAL display_left: STD_LOGIC_VECTOR(63 DOWNTO 0);
	SIGNAL display_right: STD_LOGIC_VECTOR(63 DOWNTO 0);
	SIGNAL tick_fps : STD_LOGIC;
	SIGNAL tick_raq : STD_LOGIC;
	SIGNAL tick_ball : STD_LOGIC;
	SIGNAL tick_speed : STD_LOGIC;
	SIGNAL decrease: STD_LOGIC_VECTOR(23 DOWNTO 0);
	
BEGIN
	
	racket_logic: ENTITY work.raq_logic
	PORT MAP (		clk		=>	tick_raq,
						rst		=>	rst_play,
						B1_up		=>	B1_up,
						B1_dw		=>	B1_dw,
						B2_up		=>	NOT(B2_up),
						B2_dw		=>	NOT(B2_dw),
						raq1     => raq1,
						raq2     => raq2);
						
	ball_logic: ENTITY work.ball_logic
	PORT MAP (		clk		=>	tick_ball,
						rst		=>	rst_play,
						xb_up		=>	xb_up,
						xb_dw		=>	xb_dw,
						yb_up		=>	yb_up,
						yb_dw		=>	yb_dw,
						xb     	=> xb,
						yb     	=> yb);		
						
	rst_play <= rst OR rst_game;
	
	ball_FSM: ENTITY work.ballmovement_fsm
	PORT MAP (		clk		=>	clk,
						rst		=>	rst,
						ena 		=> NOT(start),
						tick     => tick_ball,
						raq1     => raq1,
						raq2     => raq2,
						xb_up		=>	xb_up,
						xb_dw		=>	xb_dw,
						yb_up		=>	yb_up,
						yb_dw		=>	yb_dw,
						xb     	=> xb,
						yb     	=> yb,
						score1	=> score1_s,
						score2   => score2_s,
						rst_game => rst_game);		
			
	score_logic: ENTITY work.score_logic
	PORT MAP (		clk		=>	clk,
						rst		=>	rst,
						score1	=> score1_s,
						score2   => score2_s,
						points1  => points1_bin,
						points2  => points2_bin);	
						
	bin_to_sseg_1: ENTITY work.bin_to_sseg
	PORT MAP (		bin => points1_bin,
						sseg => score1);
						
	bin_to_sseg_2: ENTITY work.bin_to_sseg
	PORT MAP (		bin => points2_bin,
						sseg => score2);
						
	left_matrix_vector: ENTITY work.gameleft_to_matrix 
	PORT MAP (		xb => xb,
						yb => yb,
						raq1 => raq1,
						matrix => matrix_left);
						
	right_matrix_vector: ENTITY work.gameright_to_matrix 
	PORT MAP (		xb => xb,
						yb => yb,
						raq2 => raq2,
						matrix => matrix_right);
						
	array_reg: ENTITY work.register_file
	PORT MAP (		clk => clk,
						wr_data_left => matrix_left,
						wr_data_right => matrix_right,
						rd_data_left => display_left,
						rd_data_right => display_right);
						
	left_display: ENTITY work.ledMatrix_controler_fsm 
	PORT MAP (		clk     => clk,
						rst     => rst,
						LEDS    => display_left,
						tick	  => tick_fps,
						PIN_1   => M1(0),
						PIN_2   => M1(1),
						PIN_3   => M1(2),
						PIN_4   => M1(3),
						PIN_5   => M1(4),
						PIN_6   => M1(5),
						PIN_7   => M1(6),
						PIN_8   => M1(7),
						PIN_9   => M1(8),
						PIN_10  => M1(9),
						PIN_11  => M1(10),
						PIN_12  => M1(11),
						PIN_13  => M1(12),
						PIN_14  => M1(13),
						PIN_15  => M1(14),
						PIN_16  => M1(15));
						
	right_display: ENTITY work.ledMatrix_controler_fsm 
	PORT MAP (		clk     => clk,
						rst     => rst,
						LEDS    => display_right,
						tick	  => tick_fps,
						PIN_1   => M2(0),
						PIN_2   => M2(1),
						PIN_3   => M2(2),
						PIN_4   => M2(3),
						PIN_5   => M2(4),
						PIN_6   => M2(5),
						PIN_7   => M2(6),
						PIN_8   => M2(7),
						PIN_9   => M2(8),
						PIN_10  => M2(9),
						PIN_11  => M2(10),
						PIN_12  => M2(11),
						PIN_13  => M2(12),
						PIN_14  => M2(13),
						PIN_15  => M2(14),
						PIN_16  => M2(15));
											
									 					
	timer_fps: ENTITY work.univ_bin_counter
	GENERIC MAP(	N 			=> N)
	PORT MAP (		clk		=>	clk,
						rst		=>	rst,
						d			=> "0100010001011100", 
						max_tick => tick_fps);
						
	timer_raq: ENTITY work.univ_bin_counter
	GENERIC MAP(	N 			=> 24)
	PORT MAP (		clk		=>	clk,
						rst		=>	rst,
						d			=> "100110001001011010000000", -- 0.2s 
						max_tick => tick_raq);
						
	timer_ball: ENTITY work.univ_bin_counter
	GENERIC MAP(	N 			=> 24)
	PORT MAP (		clk		=>	clk,
						rst		=>	rst,
						d			=> decrease, 
						max_tick => tick_ball);
						
	timer_for_speed: ENTITY work.univ_bin_counter
	GENERIC MAP(	N 			=> 28)
	PORT MAP (		clk		=>	clk,
						rst		=>	rst,
						d			=> "0101111101011110000100000000", -- 2s 
						max_tick => tick_speed);
						
	speed_up: ENTITY work.speed
	GENERIC MAP(	N 			=> 24)
	PORT MAP (		clk		=>	tick_speed,
						rst		=>	rst_play,
						tick		=> decrease);
					
END ARCHITECTURE;
					