LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
------------------------------------------
ENTITY ballmovement_fsm IS 
	PORT ( clk        : IN STD_LOGIC;
			 rst        : IN STD_LOGIC;
			 ena			: IN STD_LOGIC;
			 tick			: IN STD_LOGIC;
			 raq1			: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			 raq2			: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			 xb			: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			 yb			: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			 xb_up	  	: OUT STD_LOGIC;
			 xb_dw	  	: OUT STD_LOGIC;
			 yb_up	  	: OUT STD_LOGIC;
			 yb_dw	  	: OUT STD_LOGIC;
			 score1	  	: OUT STD_LOGIC;
			 score2	 	: OUT STD_LOGIC;
			 rst_game	: OUT STD_LOGIC);
			 
END ballmovement_fsm;
------------------------------------------
ARCHITECTURE my_arch OF  ballmovement_fsm IS
	TYPE state IS (stby, mark1, mark2, mov_right, mov_left, right_up, right_down, left_up, left_down);
	SIGNAL pr_state, nx_state: state;
	SIGNAL raq1_sig : UNSIGNED(2 DOWNTO 0);
	SIGNAL raq2_sig : UNSIGNED(2 DOWNTO 0);
	
	
BEGIN
	
	raq1_sig <= UNSIGNED(raq1);
	raq2_sig <= UNSIGNED(raq2);
	
	-- combitational section----------------
	PROCESS (rst, clk)
	BEGIN 
		IF (rst='1') THEN
			pr_state <= stby;
		ELSIF (rising_edge(clk)) THEN 
			pr_state <= nx_state;
		END IF;
	END PROCESS;		
	
	-- upper section------------------------
	PROCESS (tick, raq1_sig, raq2_sig, ena, xb, yb, pr_state)
	BEGIN 
		CASE pr_state IS
		-------------------------------------
			WHEN stby =>
				xb_up  <= '0'; xb_dw  <= '0';
				yb_up  <= '0'; yb_dw  <= '0';
				score1 <= '0'; score2 <= '0';
				rst_game <= '1';
				IF (ena = '1' AND tick = '1') THEN 
					nx_state <= mov_right; 
				ELSE  
					nx_state <= stby;
				END IF;
		-------------------------------------
			WHEN left_up =>
				xb_up  <= '0'; xb_dw  <= '1';
				yb_up  <= '0'; yb_dw  <= '1';
				score1 <= '0'; score2 <= '0';
				rst_game <= '0';
				IF (yb = "000") THEN 
					nx_state <= left_down;
				ELSIF (xb = "0001" AND yb = STD_LOGIC_VECTOR(raq1_sig + 2 ) AND tick = '1') THEN 
					nx_state <= right_down;
				ELSIF (xb = "0001" AND yb = STD_LOGIC_VECTOR(raq1_sig) AND tick = '1') THEN 
					nx_state <= right_up;
				ELSIF (xb = "0001" AND yb = STD_LOGIC_VECTOR(raq1_sig + 1) AND tick = '1' ) THEN 
					nx_state <= mov_right;
				ELSIF (xb = "1111") THEN 
					nx_state <= mark2;
				ELSE 
					nx_state <= left_up;
				END IF;
		-------------------------------------
			WHEN left_down =>
				xb_up  <= '0'; xb_dw  <= '1';
				yb_up  <= '1'; yb_dw  <= '0';
				score1 <= '0'; score2 <= '0';
				rst_game <= '0';
				IF (yb = "111") THEN 
					nx_state <= left_up;
				ELSIF (xb = "0001" AND yb = STD_LOGIC_VECTOR(raq1_sig + 2) AND tick = '1' ) THEN 
					nx_state <= right_down;
				ELSIF (xb = "0001" AND yb = STD_LOGIC_VECTOR(raq1_sig) AND tick = '1') THEN 
					nx_state <= right_up;
				ELSIF (xb = "0001" AND yb = STD_LOGIC_VECTOR(raq1_sig + 1)  AND tick = '1') THEN 
					nx_state <= mov_right;
				ELSIF (xb = "1111") THEN 
					nx_state <= mark2;
				ELSE 
					nx_state <= left_down;
				END IF;
		-------------------------------------
			WHEN right_down =>
				xb_up  <= '1'; xb_dw  <= '0';
				yb_up  <= '1'; yb_dw  <= '0';
				score1 <= '0'; score2 <= '0';
				rst_game <= '0';
				IF (yb = "111") THEN 
					nx_state <= right_up;
				ELSIF (xb = "1110" AND yb = STD_LOGIC_VECTOR(raq2_sig + 2) AND tick = '1' ) THEN 
					nx_state <= left_down;
				ELSIF (xb = "1110" AND yb = STD_LOGIC_VECTOR(raq2_sig) AND tick = '1') THEN 
					nx_state <= left_up;
				ELSIF (xb = "1110" AND yb = STD_LOGIC_VECTOR(raq2_sig + 1)  AND tick = '1') THEN 
					nx_state <= mov_left;
				ELSIF (xb = "0000") THEN 
					nx_state <= mark1;
				ELSE 
					nx_state <= right_down;
				END IF;
		-------------------------------------
			WHEN right_up =>
				xb_up  <= '1'; xb_dw  <= '0';
				yb_up  <= '0'; yb_dw  <= '1';
				score1 <= '0'; score2 <= '0';
				rst_game <= '0';
				IF (yb = "000") THEN 
					nx_state <= right_down;
				ELSIF (xb = "1110" AND yb = STD_LOGIC_VECTOR(raq2_sig + 2) AND tick = '1' ) THEN 
					nx_state <= left_down;
				ELSIF (xb = "1110" AND yb = STD_LOGIC_VECTOR(raq2_sig) AND tick = '1') THEN 
					nx_state <= left_up;
				ELSIF (xb = "1110" AND yb = STD_LOGIC_VECTOR(raq2_sig + 1)  AND tick = '1') THEN 
					nx_state <= mov_left;
				ELSIF (xb = "0000") THEN 
					nx_state <= mark1;
				ELSE 
					nx_state <= right_up;
				END IF;
		-------------------------------------
			WHEN mov_right =>
				xb_up  <= '1'; xb_dw  <= '0';
				yb_up  <= '0'; yb_dw  <= '0';
				score1 <= '0'; score2 <= '0';
				rst_game <= '0';
				IF (xb = "1110" AND yb = STD_LOGIC_VECTOR(raq2_sig + 2) AND tick = '1' ) THEN 
					nx_state <= left_down;
				ELSIF (xb = "1110" AND yb = STD_LOGIC_VECTOR(raq2_sig) AND tick = '1') THEN 
					nx_state <= left_up;
				ELSIF (xb = "1110" AND yb = STD_LOGIC_VECTOR(raq2_sig + 1)  AND tick = '1') THEN 
					nx_state <= mov_left;
				ELSIF (xb = "0000") THEN 
					nx_state <= mark1;
				ELSE 
					nx_state <= mov_right;
				END IF;
		-------------------------------------
			WHEN mov_left =>
				xb_up  <= '0'; xb_dw  <= '1';
				yb_up  <= '0'; yb_dw  <= '0';
				score1 <= '0'; score2 <= '0';
				rst_game <= '0';
				IF (xb = "0001" AND yb = STD_LOGIC_VECTOR(raq1_sig + 2) AND tick = '1' ) THEN 
					nx_state <= right_down;
				ELSIF (xb = "0001" AND yb = STD_LOGIC_VECTOR(raq1_sig) AND tick = '1') THEN 
					nx_state <= right_up;
				ELSIF (xb = "0001" AND yb = STD_LOGIC_VECTOR(raq1_sig + 1)  AND tick = '1') THEN 
					nx_state <= mov_right;
				ELSIF (xb = "1111") THEN 
					nx_state <= mark2;
				ELSE 
					nx_state <= mov_left;
				END IF;
		-------------------------------------
			WHEN mark1 =>
				xb_up  <= '0'; xb_dw  <= '0';
				yb_up  <= '0'; yb_dw  <= '0';
				score1 <= '1'; score2 <= '0';
				rst_game <= '0';
				
				nx_state <= stby;
		-------------------------------------
			WHEN mark2 =>
				xb_up  <= '0'; xb_dw  <= '0';
				yb_up  <= '0'; yb_dw  <= '0';
				score1 <= '0'; score2 <= '1';
				rst_game <= '0';
				
				nx_state <= stby;
		-------------------------------------
			END CASE;
		END PROCESS;
END ARCHITECTURE;