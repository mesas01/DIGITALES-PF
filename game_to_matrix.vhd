LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
------------------------------------------------
ENTITY game_to_matrix IS
	PORT ( xb				: IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
			 yb				: IN	STD_LOGIC_VECTOR(2 DOWNTO 0);
			 raq1				: IN	STD_LOGIC_VECTOR(2 DOWNTO 0);
			 raq2				: IN	STD_LOGIC_VECTOR(2 DOWNTO 0);
			 wr_ad_raq1		: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			 wr_ad_raq1_1	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			 wr_ad_raq1_2	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			 wr_ad_raq2		: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			 wr_ad_raq2_1	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			 wr_ad_raq2_2	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			 wr_ad_ball_L	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			 wr_ad_ball_R	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
			 
END ENTITY game_to_matrix;
------------------------------------------------
ARCHITECTURE behaviour OF game_to_matrix IS
	SIGNAL wr_ad_raq1_s : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL wr_ad_raq2_s : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
BEGIN
	
	wr_ad_raq1 <= wr_ad_raq1_s;
	wr_ad_raq2 <= wr_ad_raq2_s;

	wr_ad_raq1_1 <= STD_LOGIC_VECTOR(UNSIGNED(wr_ad_raq1_s)+"00001000");
	wr_ad_raq1_2 <= STD_LOGIC_VECTOR(UNSIGNED(wr_ad_raq1_s)+"00010000");
	
	wr_ad_raq2_1 <= STD_LOGIC_VECTOR(UNSIGNED(wr_ad_raq2_s)+8);
	wr_ad_raq2_2 <= STD_LOGIC_VECTOR(UNSIGNED(wr_ad_raq2_s)+16);
	
	wr_ad_raq1_s <= "00000000" WHEN raq1 = "000" ELSE
						 "00001000" WHEN raq1 = "001" ELSE
						 "00010000" WHEN raq1 = "010" ELSE
						 "00011000" WHEN raq1 = "011" ELSE
						 "00100000" WHEN raq1 = "100" ELSE
						 "00101000"; 
					  
	wr_ad_raq2_s <= "00000111" WHEN raq1 = "000" ELSE
						 "00001111" WHEN raq1 = "001" ELSE
						 "00010111" WHEN raq1 = "010" ELSE
						 "00011111" WHEN raq1 = "011" ELSE
						 "00100111" WHEN raq1 = "100" ELSE
						 "00101111";
					  
	wr_ad_ball_L <= "00000001" WHEN xb = "0001" AND yb = "000" ELSE 
						 "00000010" WHEN xb = "0010" AND yb = "000" ELSE
						 "00000011" WHEN xb = "0011" AND yb = "000" ELSE 
						 "00000100" WHEN xb = "0100" AND yb = "000" ELSE 
						 "00000101" WHEN xb = "0101" AND yb = "000" ELSE
						 "00000110" WHEN xb = "0110" AND yb = "000" ELSE
						 "00000111" WHEN xb = "0111" AND yb = "000" ELSE
						 
						 "00001001" WHEN xb = "0001" AND yb = "001" ELSE 
						 "00001010" WHEN xb = "0010" AND yb = "001" ELSE
						 "00001011" WHEN xb = "0011" AND yb = "001" ELSE
						 "00001100" WHEN xb = "0100" AND yb = "001" ELSE
						 "00001101" WHEN xb = "0101" AND yb = "001" ELSE
						 "00001110" WHEN xb = "0110" AND yb = "001" ELSE
						 "00001111" WHEN xb = "0111" AND yb = "001" ELSE
						 
						 "00010001" WHEN xb = "0001" AND yb = "010" ELSE
						 "00010010" WHEN xb = "0010" AND yb = "010" ELSE
						 "00010011" WHEN xb = "0011" AND yb = "010" ELSE
						 "00010100" WHEN xb = "0100" AND yb = "010" ELSE
						 "00010101" WHEN xb = "0101" AND yb = "010" ELSE
						 "00010110" WHEN xb = "0110" AND yb = "010" ELSE
						 "00010111" WHEN xb = "0111" AND yb = "010" ELSE
						 
						 "00011001" WHEN xb = "0001" AND yb = "011" ELSE
						 "00011010" WHEN xb = "0010" AND yb = "011" ELSE
						 "00011011" WHEN xb = "0011" AND yb = "011" ELSE
						 "00011100" WHEN xb = "0100" AND yb = "011" ELSE
						 "00011101" WHEN xb = "0101" AND yb = "011" ELSE
						 "00011110" WHEN xb = "0110" AND yb = "011" ELSE
						 "00011111" WHEN xb = "0111" AND yb = "011" ELSE
						 
						 "00100001" WHEN xb = "0001" AND yb = "100" ELSE
						 "00100010" WHEN xb = "0010" AND yb = "100" ELSE
						 "00100011" WHEN xb = "0011" AND yb = "100" ELSE
						 "00100100" WHEN xb = "0100" AND yb = "100" ELSE
						 "00100101" WHEN xb = "0101" AND yb = "100" ELSE
						 "00100110" WHEN xb = "0110" AND yb = "100" ELSE
						 "00100111" WHEN xb = "0111" AND yb = "100" ELSE
						 
						 "00101001" WHEN xb = "0001" AND yb = "101" ELSE
						 "00101010" WHEN xb = "0010" AND yb = "101" ELSE
						 "00101011" WHEN xb = "0011" AND yb = "101" ELSE
						 "00101100" WHEN xb = "0100" AND yb = "101" ELSE
						 "00101101" WHEN xb = "0101" AND yb = "101" ELSE
						 "00101110" WHEN xb = "0110" AND yb = "101" ELSE
						 "00101111" WHEN xb = "0111" AND yb = "101" ELSE
						 
						 "00110001" WHEN xb = "0001" AND yb = "110" ELSE
						 "00110010" WHEN xb = "0010" AND yb = "110" ELSE
						 "00110011" WHEN xb = "0011" AND yb = "110" ELSE
						 "00110100" WHEN xb = "0100" AND yb = "110" ELSE
						 "00110101" WHEN xb = "0101" AND yb = "110" ELSE
						 "00110110" WHEN xb = "0110" AND yb = "110" ELSE
						 "00110111" WHEN xb = "0111" AND yb = "110" ELSE
						 
						 "00111001" WHEN xb = "0001" AND yb = "111" ELSE
						 "00111010" WHEN xb = "0010" AND yb = "111" ELSE
						 "00111011" WHEN xb = "0011" AND yb = "111" ELSE
						 "00111100" WHEN xb = "0100" AND yb = "111" ELSE
						 "00111101" WHEN xb = "0101" AND yb = "111" ELSE
						 "00111110" WHEN xb = "0110" AND yb = "111" ELSE
						 "00111111" WHEN xb = "0111" AND yb = "111" ELSE
						 "01000000";
						 
	wr_ad_ball_L <= "00000000" WHEN xb = "1000" AND yb = "000" ELSE
						 "00000001" WHEN xb = "1001" AND yb = "000" ELSE
						 "00000010" WHEN xb = "1010" AND yb = "000" ELSE
						 "00000011" WHEN xb = "1011" AND yb = "000" ELSE
						 "00000100" WHEN xb = "1100" AND yb = "000" ELSE
						 "00000101" WHEN xb = "1101" AND yb = "000" ELSE
						 "00000110" WHEN xb = "1110" AND yb = "000" ELSE
						 
						 "00001000" WHEN xb = "1000" AND yb = "001" ELSE
						 "00001001" WHEN xb = "1001" AND yb = "001" ELSE
						 "00001010" WHEN xb = "1010" AND yb = "001" ELSE
						 "00001011" WHEN xb = "1011" AND yb = "001" ELSE
						 "00001100" WHEN xb = "1100" AND yb = "001" ELSE
						 "00001101" WHEN xb = "1101" AND yb = "001" ELSE
						 "00001110" WHEN xb = "1110" AND yb = "001" ELSE
						 
						 "00010000" WHEN xb = "1000" AND yb = "010" ELSE
						 "00010001" WHEN xb = "1001" AND yb = "010" ELSE
						 "00010010" WHEN xb = "1010" AND yb = "010" ELSE
						 "00010011" WHEN xb = "1011" AND yb = "010" ELSE
						 "00010100" WHEN xb = "1100" AND yb = "010" ELSE
						 "00010101" WHEN xb = "1101" AND yb = "010" ELSE
						 "00010110" WHEN xb = "1110" AND yb = "010" ELSE
									
						 "00011000" WHEN xb = "1000" AND yb = "011" ELSE
						 "00011001" WHEN xb = "1001" AND yb = "011" ELSE
						 "00011010" WHEN xb = "1010" AND yb = "011" ELSE
						 "00011011" WHEN xb = "1011" AND yb = "011" ELSE
						 "00011100" WHEN xb = "1100" AND yb = "011" ELSE
						 "00011101" WHEN xb = "1101" AND yb = "011" ELSE
						 "00011110" WHEN xb = "1110" AND yb = "011" ELSE
									
						 "00100000" WHEN xb = "1000" AND yb = "100" ELSE
						 "00100001" WHEN xb = "1001" AND yb = "100" ELSE
						 "00100010" WHEN xb = "1010" AND yb = "100" ELSE
						 "00100011" WHEN xb = "1011" AND yb = "100" ELSE
						 "00100100" WHEN xb = "1100" AND yb = "100" ELSE
						 "00100101" WHEN xb = "1101" AND yb = "100" ELSE
						 "00100110" WHEN xb = "1110" AND yb = "100" ELSE
									
						 "00101000" WHEN xb = "1000" AND yb = "101" ELSE
						 "00101001" WHEN xb = "1001" AND yb = "101" ELSE
						 "00101010" WHEN xb = "1010" AND yb = "101" ELSE
						 "00101011" WHEN xb = "1011" AND yb = "101" ELSE
						 "00101100" WHEN xb = "1100" AND yb = "101" ELSE
						 "00101101" WHEN xb = "1101" AND yb = "101" ELSE
						 "00101110" WHEN xb = "1110" AND yb = "101" ELSE
									
						 "00110000" WHEN xb = "1000" AND yb = "110" ELSE
						 "00110001" WHEN xb = "1001" AND yb = "111" ELSE
						 "00110010" WHEN xb = "1010" AND yb = "110" ELSE
						 "00110011" WHEN xb = "1011" AND yb = "110" ELSE
						 "00110100" WHEN xb = "1100" AND yb = "110" ELSE
						 "00110101" WHEN xb = "1101" AND yb = "110" ELSE
						 "00110110" WHEN xb = "1110" AND yb = "110" ELSE
									
						 "00111000" WHEN xb = "1000" AND yb = "111" ELSE
						 "00111001" WHEN xb = "1001" AND yb = "111" ELSE
						 "00111010" WHEN xb = "1010" AND yb = "111" ELSE
						 "00111011" WHEN xb = "1011" AND yb = "111" ELSE
						 "00111100" WHEN xb = "1100" AND yb = "111" ELSE
						 "00111101" WHEN xb = "1101" AND yb = "111" ELSE
						 "00111110" WHEN xb = "1110" AND yb = "111" ELSE
						 "01000000";
 				  
END behaviour;