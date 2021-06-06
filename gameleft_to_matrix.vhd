LIBRARY ieee;
USE ieee.std_logic_1164.all;
------------------------------------------------
ENTITY gameleft_to_matrix IS
	PORT ( xb		: IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
			 yb		: IN	STD_LOGIC_VECTOR(2 DOWNTO 0);
			 raq1		: IN	STD_LOGIC_VECTOR(2 DOWNTO 0);
			 matrix	: OUT STD_LOGIC_VECTOR(63 DOWNTO 0));
END ENTITY gameleft_to_matrix;
------------------------------------------------
ARCHITECTURE behaviour OF gameleft_to_matrix IS
BEGIN

	matrix(7 DOWNTO 1) <= "0000001" WHEN xb = "0001" AND yb = "000" ELSE
								 "0000010" WHEN xb = "0010" AND yb = "000" ELSE
								 "0000100" WHEN xb = "0011" AND yb = "000" ELSE
								 "0001000" WHEN xb = "0100" AND yb = "000" ELSE
								 "0010000" WHEN xb = "0101" AND yb = "000" ELSE
								 "0100000" WHEN xb = "0110" AND yb = "000" ELSE
								 "1000000" WHEN xb = "0111" AND yb = "000" ELSE
								 "0000000";
								 
	matrix(15 DOWNTO 9) <= "0000001" WHEN xb = "0001" AND yb = "001" ELSE
								  "0000010" WHEN xb = "0010" AND yb = "001" ELSE
								  "0000100" WHEN xb = "0011" AND yb = "001" ELSE
								  "0001000" WHEN xb = "0100" AND yb = "001" ELSE
								  "0010000" WHEN xb = "0101" AND yb = "001" ELSE
								  "0100000" WHEN xb = "0110" AND yb = "001" ELSE
								  "1000000" WHEN xb = "0111" AND yb = "001" ELSE
								  "0000000";
								  
	matrix(23 DOWNTO 17) <= "0000001" WHEN xb = "0001" AND yb = "010" ELSE
									"0000010" WHEN xb = "0010" AND yb = "010" ELSE
									"0000100" WHEN xb = "0011" AND yb = "010" ELSE
									"0001000" WHEN xb = "0100" AND yb = "010" ELSE
									"0010000" WHEN xb = "0101" AND yb = "010" ELSE
									"0100000" WHEN xb = "0110" AND yb = "010" ELSE
									"1000000" WHEN xb = "0111" AND yb = "010" ELSE
									"0000000";
	
	matrix(31 DOWNTO 25) <= "0000001" WHEN xb = "0001" AND yb = "011" ELSE
									"0000010" WHEN xb = "0010" AND yb = "011" ELSE
									"0000100" WHEN xb = "0011" AND yb = "011" ELSE
									"0001000" WHEN xb = "0100" AND yb = "011" ELSE
									"0010000" WHEN xb = "0101" AND yb = "011" ELSE
									"0100000" WHEN xb = "0110" AND yb = "011" ELSE
									"1000000" WHEN xb = "0111" AND yb = "011" ELSE
									"0000000";
									
	matrix(39 DOWNTO 33) <= "0000001" WHEN xb = "0001" AND yb = "100" ELSE
									"0000010" WHEN xb = "0010" AND yb = "100" ELSE
									"0000100" WHEN xb = "0011" AND yb = "100" ELSE
									"0001000" WHEN xb = "0100" AND yb = "100" ELSE
									"0010000" WHEN xb = "0101" AND yb = "100" ELSE
									"0100000" WHEN xb = "0110" AND yb = "100" ELSE
									"1000000" WHEN xb = "0111" AND yb = "100" ELSE
									"0000000";
									
	matrix(47 DOWNTO 41) <= "0000001" WHEN xb = "0001" AND yb = "101" ELSE
									"0000010" WHEN xb = "0010" AND yb = "101" ELSE
									"0000100" WHEN xb = "0011" AND yb = "101" ELSE
									"0001000" WHEN xb = "0100" AND yb = "101" ELSE
									"0010000" WHEN xb = "0101" AND yb = "101" ELSE
									"0100000" WHEN xb = "0110" AND yb = "101" ELSE
									"1000000" WHEN xb = "0111" AND yb = "101" ELSE
									"0000000";
									
	matrix(55 DOWNTO 49) <= "0000001" WHEN xb = "0001" AND yb = "110" ELSE
									"0000010" WHEN xb = "0010" AND yb = "110" ELSE
									"0000100" WHEN xb = "0011" AND yb = "110" ELSE
									"0001000" WHEN xb = "0100" AND yb = "110" ELSE
									"0010000" WHEN xb = "0101" AND yb = "110" ELSE
									"0100000" WHEN xb = "0110" AND yb = "110" ELSE
									"1000000" WHEN xb = "0111" AND yb = "110" ELSE
									"0000000";
									
	matrix(63 DOWNTO 57) <= "0000001" WHEN xb = "0001" AND yb = "111" ELSE
									"0000010" WHEN xb = "0010" AND yb = "111" ELSE
									"0000100" WHEN xb = "0011" AND yb = "111" ELSE
									"0001000" WHEN xb = "0100" AND yb = "111" ELSE
									"0010000" WHEN xb = "0101" AND yb = "111" ELSE
									"0100000" WHEN xb = "0110" AND yb = "111" ELSE
									"1000000" WHEN xb = "0111" AND yb = "111" ELSE
									"0000000";
									
	matrix(0) <= '1' WHEN raq1 = "000" ELSE '0';
	matrix(8)<= '1' WHEN raq1 = "000" OR raq1 = "001" ELSE '0';
	matrix(16)<= '1' WHEN raq1 = "000" OR raq1 = "001" OR raq1 = "010" ELSE '0';
	matrix(24)<= '1' WHEN raq1 = "001" OR raq1 = "010" OR raq1 = "011" ELSE '0';
	matrix(32)<= '1' WHEN raq1 = "010" OR raq1 = "011" OR raq1 = "100" ELSE '0';
	matrix(40)<= '1' WHEN raq1 = "011" OR raq1 = "100" OR raq1 = "101" ELSE '0';
	matrix(48)<= '1' WHEN raq1 = "100" OR raq1 = "101" ELSE '0';
	matrix(56)<= '1' WHEN raq1 = "101" ELSE '0';
	
END behaviour;