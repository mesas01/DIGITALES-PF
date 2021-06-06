LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
------------------------------------------
ENTITY ledMatrix_controler_fsm IS 
	PORT ( clk        : IN STD_LOGIC;
			 rst        : IN STD_LOGIC;
			 LEDS       : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
			 tick			: IN STD_LOGIC;
			 PIN_1   	: OUT STD_LOGIC;
			 PIN_2   	: OUT STD_LOGIC;
			 PIN_3   	: OUT STD_LOGIC;
			 PIN_4   	: OUT STD_LOGIC;
			 PIN_5   	: OUT STD_LOGIC;
			 PIN_6   	: OUT STD_LOGIC;
			 PIN_7   	: OUT STD_LOGIC;
			 PIN_8   	: OUT STD_LOGIC;
			 PIN_9   	: OUT STD_LOGIC;
			 PIN_10   	: OUT STD_LOGIC;
			 PIN_11  	: OUT STD_LOGIC;
			 PIN_12  	: OUT STD_LOGIC;
			 PIN_13  	: OUT STD_LOGIC;
			 PIN_14  	: OUT STD_LOGIC;
			 PIN_15  	: OUT STD_LOGIC;
			 PIN_16  	: OUT STD_LOGIC);
			 
END ledMatrix_controler_fsm;
------------------------------------------
ARCHITECTURE my_arch OF  ledMatrix_controler_fsm IS
	TYPE state IS (stby, LED_0,  LED_1,  LED_2,  LED_3,  LED_4,  LED_5,  LED_6,  LED_7,
								LED_8,  LED_9,  LED_10, LED_11, LED_12, LED_13, LED_14, LED_15,
								LED_16, LED_17, LED_18, LED_19, LED_20, LED_21, LED_22, LED_23,
								LED_24, LED_25, LED_26, LED_27, LED_28, LED_29, LED_30, LED_31,
								LED_32, LED_33, LED_34, LED_35, LED_36, LED_37, LED_38, LED_39,
								LED_40, LED_41, LED_42, LED_43, LED_44, LED_45, LED_46, LED_47,
								LED_48, LED_49, LED_50, LED_51, LED_52, LED_53, LED_54, LED_55,
								LED_56, LED_57, LED_58, LED_59, LED_60, LED_61, LED_62, LED_63);
	SIGNAL pr_state, nx_state: state;
	
BEGIN
	
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
	PROCESS (LEDS, tick, pr_state)
	BEGIN 
		CASE pr_state IS
		-------------------------------------
			WHEN stby =>
				PIN_9  <= '1';	   PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF 	(tick='1')  THEN 
					nx_state <= LED_0; 
				ELSE  
					nx_state <= stby;
				END IF;
		-------------------------------------
			WHEN LED_0 =>
				PIN_9  <= '0';		PIN_13 <= LEDS(0);
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_1;
				ELSE 
					nx_state <= LED_0;
				END IF;
		-------------------------------------
			WHEN LED_1 =>
				PIN_9  <= '0';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= LEDS(1);
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_2;
				ELSE 
					nx_state <= LED_1;
				END IF;
		-------------------------------------
			WHEN LED_2 =>
				PIN_9  <= '0';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= LEDS(2);
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_3;
				ELSE 
					nx_state <= LED_2;
				END IF;
		-------------------------------------
			WHEN LED_3 =>
				PIN_9  <= '0';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= LEDS(3);
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_4;
				ELSE 
					nx_state <= LED_3;
				END IF;
		-------------------------------------
			WHEN LED_4 =>
				PIN_9  <= '0';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= LEDS(4);
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_5;
				ELSE 
					nx_state <= LED_4;
				END IF;
		-------------------------------------
			WHEN LED_5 =>
				PIN_9  <= '0';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= LEDS(5);
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_6;
				ELSE 
					nx_state <= LED_5;
				END IF;
		-------------------------------------
			WHEN LED_6 =>
				PIN_9  <= '0';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= LEDS(6);
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_7;
				ELSE 
					nx_state <= LED_6;
				END IF;
		-------------------------------------
			WHEN LED_7 =>
				PIN_9  <= '0';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= LEDS(7);
				
				IF (tick='1') THEN 
					nx_state <= LED_8;
				ELSE 
					nx_state <= LED_7;
				END IF;
		-------------------------------------
			WHEN LED_8 =>
				PIN_9  <= '1';		PIN_13 <= LEDS(8);
				PIN_14 <= '0';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_9;
				ELSE 
					nx_state <= LED_8;
				END IF;
		-------------------------------------
			WHEN LED_9 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '0';		PIN_3  <= LEDS(9);
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_10;
				ELSE 
					nx_state <= LED_9;
				END IF;
		-------------------------------------
			WHEN LED_10 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '0';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= LEDS(10);
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_11;
				ELSE 
					nx_state <= LED_10;
				END IF;
		-------------------------------------
			WHEN LED_11 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '0';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= LEDS(11);
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_12;
				ELSE 
					nx_state <= LED_11;
				END IF;
		-------------------------------------
			WHEN LED_12 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '0';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= LEDS(12);
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_13;
				ELSE 
					nx_state <= LED_12;
				END IF;
		-------------------------------------
			WHEN LED_13 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '0';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= LEDS(13);
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_14;
				ELSE 
					nx_state <= LED_13;
				END IF;
		-------------------------------------
			WHEN LED_14 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '0';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= LEDS(14);
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_15;
				ELSE 
					nx_state <= LED_14;
				END IF;
		-------------------------------------
			WHEN LED_15 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '0';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= LEDS(15);
				
				IF (tick='1') THEN 
					nx_state <= LED_16;
				ELSE 
					nx_state <= LED_15;
				END IF;
		-------------------------------------
			WHEN LED_16 =>
				PIN_9  <= '1';		PIN_13 <= LEDS(16);
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '0';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_17;
				ELSE 
					nx_state <= LED_16;
				END IF;
		-------------------------------------
			WHEN LED_17 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= LEDS(17);
				PIN_8  <= '0';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_18;
				ELSE 
					nx_state <= LED_17;
				END IF;
		-------------------------------------
			WHEN LED_18 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '0';		PIN_4  <= LEDS(18);
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_19;
				ELSE 
					nx_state <= LED_18;
				END IF;
		-------------------------------------
			WHEN LED_19 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '0';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= LEDS(19);
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_20;
				ELSE 
					nx_state <= LED_19;
				END IF;
		-------------------------------------
			WHEN LED_20 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '0';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= LEDS(20);
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_21;
				ELSE 
					nx_state <= LED_20;
				END IF;
		-------------------------------------
			WHEN LED_21 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '0';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= LEDS(21);
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_22;
				ELSE 
					nx_state <= LED_21;
				END IF;
		-------------------------------------
			WHEN LED_22 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '0';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= LEDS(22);
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_23;
				ELSE 
					nx_state <= LED_22;
				END IF;
		-------------------------------------
			WHEN LED_23 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '0';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= LEDS(23);
				
				IF (tick='1') THEN 
					nx_state <= LED_24;
				ELSE 
					nx_state <= LED_23;
				END IF;
		-------------------------------------
			WHEN LED_24 =>
				PIN_9  <= '1';		PIN_13 <= LEDS(24);
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '0';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_25;
				ELSE 
					nx_state <= LED_24;
				END IF;
		-------------------------------------
			WHEN LED_25 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= LEDS(25);
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '0';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_26;
				ELSE 
					nx_state <= LED_25;
				END IF;
		-------------------------------------
			WHEN LED_26 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= LEDS(26);
				PIN_12 <= '0';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_27;
				ELSE 
					nx_state <= LED_26;
				END IF;
		-------------------------------------
			WHEN LED_27 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '0';		PIN_10 <= LEDS(27);
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_28;
				ELSE 
					nx_state <= LED_27;
				END IF;
		-------------------------------------
			WHEN LED_28 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '0';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= LEDS(28);
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_29;
				ELSE 
					nx_state <= LED_28;
				END IF;
		-------------------------------------
			WHEN LED_29 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '0';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= LEDS(29);
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_30;
				ELSE 
					nx_state <= LED_29;
				END IF;
		-------------------------------------
			WHEN LED_30 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '0';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= LEDS(30);
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_31;
				ELSE 
					nx_state <= LED_30;
				END IF;
		-------------------------------------
			WHEN LED_31 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '0';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= LEDS(31);
				
				IF (tick='1') THEN 
					nx_state <= LED_32;
				ELSE 
					nx_state <= LED_31;
				END IF;
		-------------------------------------
			WHEN LED_32 =>
				PIN_9  <= '1';		PIN_13 <= LEDS(32);
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '0';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_33;
				ELSE 
					nx_state <= LED_32;
				END IF;
		-------------------------------------
			WHEN LED_33 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= LEDS(33);
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '0';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_34;
				ELSE 
					nx_state <= LED_33;
				END IF;
		-------------------------------------
			WHEN LED_34 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= LEDS(34);
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '0';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_35;
				ELSE 
					nx_state <= LED_34;
				END IF;
		-------------------------------------
			WHEN LED_35 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= LEDS(35);
				PIN_1  <= '0';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_36;
				ELSE 
					nx_state <= LED_35;
				END IF;
		-------------------------------------
			WHEN LED_36 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '0';		PIN_6  <= LEDS(36);
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_37;
				ELSE 
					nx_state <= LED_36;
				END IF;
		-------------------------------------
			WHEN LED_37 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '0';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= LEDS(37);
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_38;
				ELSE 
					nx_state <= LED_37;
				END IF;
		-------------------------------------
			WHEN LED_38 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '0';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= LEDS(38);
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_39;
				ELSE 
					nx_state <= LED_38;
				END IF;
		-------------------------------------
			WHEN LED_39 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '0';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= LEDS(39);
				
				IF (tick='1') THEN 
					nx_state <= LED_40;
				ELSE 
					nx_state <= LED_39;
				END IF;
		-------------------------------------
			WHEN LED_40 =>
				PIN_9  <= '1';		PIN_13 <= LEDS(40);
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '0';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_41;
				ELSE 
					nx_state <= LED_40;
				END IF;
		-------------------------------------
			WHEN LED_41 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= LEDS(41);
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '0';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_42;
				ELSE 
					nx_state <= LED_41;
				END IF;
		-------------------------------------
			WHEN LED_42 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= LEDS(42);
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '0';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_43;
				ELSE 
					nx_state <= LED_42;
				END IF;
		-------------------------------------
			WHEN LED_43 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= LEDS(43);
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '0';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_44;
				ELSE 
					nx_state <= LED_43;
				END IF;
		-------------------------------------
			WHEN LED_44 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= LEDS(44);
				PIN_7  <= '0';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_45;
				ELSE 
					nx_state <= LED_44;
				END IF;
		-------------------------------------
			WHEN LED_45 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '0';		PIN_11 <= LEDS(45);
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_46;
				ELSE 
					nx_state <= LED_45;
				END IF;
		-------------------------------------
			WHEN LED_46 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '0';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= LEDS(46);
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_47;
				ELSE 
					nx_state <= LED_46;
				END IF;
		-------------------------------------
			WHEN LED_47 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '0';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= LEDS(47);
				
				IF (tick='1') THEN 
					nx_state <= LED_48;
				ELSE 
					nx_state <= LED_47;
				END IF;
		-------------------------------------
			WHEN LED_48 =>
				PIN_9  <= '1';		PIN_13 <= LEDS(48);
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '0';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_49;
				ELSE 
					nx_state <= LED_48;
				END IF;
		-------------------------------------
			WHEN LED_49 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= LEDS(49);
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '0';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_50;
				ELSE 
					nx_state <= LED_49;
				END IF;
		-------------------------------------
			WHEN LED_50 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= LEDS(50);
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '0';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_51;
				ELSE 
					nx_state <= LED_50;
				END IF;
		-------------------------------------
			WHEN LED_51 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= LEDS(51);
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '0';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_52;
				ELSE 
					nx_state <= LED_51;
				END IF;
		-------------------------------------
			WHEN LED_52 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= LEDS(52);
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '0';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_53;
				ELSE 
					nx_state <= LED_52;
				END IF;
		-------------------------------------
			WHEN LED_53 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= LEDS(53);
				PIN_2  <= '0';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_54;
				ELSE 
					nx_state <= LED_53;
				END IF;
		-------------------------------------
			WHEN LED_54 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '0';		PIN_15 <= LEDS(54);
				PIN_5  <= '1';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_55;
				ELSE 
					nx_state <= LED_54;
				END IF;
		-------------------------------------
			WHEN LED_55 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '0';		PIN_15 <= '0';
				PIN_5  <= '1';		PIN_16 <= LEDS(55);
				
				IF (tick='1') THEN 
					nx_state <= LED_56;
				ELSE 
					nx_state <= LED_55;
				END IF;
		-------------------------------------
			WHEN LED_56 =>
				PIN_9  <= '1';		PIN_13 <= LEDS(56);
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '0';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_57;
				ELSE 
					nx_state <= LED_56;
				END IF;
		-------------------------------------
			WHEN LED_57 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= LEDS(57);
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '0';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_58;
				ELSE 
					nx_state <= LED_57;
				END IF;
		-------------------------------------
			WHEN LED_58 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= LEDS(58);
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '0';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_59;
				ELSE 
					nx_state <= LED_58;
				END IF;
		-------------------------------------
			WHEN LED_59 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= LEDS(59);
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '0';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_60;
				ELSE 
					nx_state <= LED_59;
				END IF;
		-------------------------------------
			WHEN LED_60 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= LEDS(60);
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '0';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_61;
				ELSE 
					nx_state <= LED_60;
				END IF;
		-------------------------------------
			WHEN LED_61 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= LEDS(61);
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '0';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_62;
				ELSE 
					nx_state <= LED_61;
				END IF;
		-------------------------------------
			WHEN LED_62 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= LEDS(62);
				PIN_5  <= '0';		PIN_16 <= '0';
				
				IF (tick='1') THEN 
					nx_state <= LED_63;
				ELSE 
					nx_state <= LED_62;
				END IF;
		-------------------------------------
			WHEN LED_63 =>
				PIN_9  <= '1';		PIN_13 <= '0';
				PIN_14 <= '1';		PIN_3  <= '0';
				PIN_8  <= '1';		PIN_4  <= '0';
				PIN_12 <= '1';		PIN_10 <= '0';
				PIN_1  <= '1';		PIN_6  <= '0';
				PIN_7  <= '1';		PIN_11 <= '0';
				PIN_2  <= '1';		PIN_15 <= '0';
				PIN_5  <= '0';		PIN_16 <= LEDS(63);
				
				IF (tick='1') THEN 
					nx_state <= stby;
				ELSE 
					nx_state <= LED_63;
				END IF;
		-------------------------------------
			END CASE;
		END PROCESS;
END ARCHITECTURE;