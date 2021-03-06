LIBRARY ieee;
USE ieee.std_logic_1164.all;
------------------------------------------------
ENTITY gameright_to_matrix IS
	PORT ( xb		: IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
			 yb		: IN	STD_LOGIC_VECTOR(2 DOWNTO 0);
			 raq2		: IN	STD_LOGIC_VECTOR(2 DOWNTO 0);
			 matrix	: OUT STD_LOGIC_VECTOR(63 DOWNTO 0));
END ENTITY gameright_to_matrix;
------------------------------------------------
ARCHITECTURE behaviour OF gameright_to_matrix IS
BEGIN

	matrix(6 DOWNTO 0) <= "0000001" WHEN xb = "1000" AND yb = "000" ELSE
								 "0000010" WHEN xb = "1001" AND yb = "000" ELSE
								 "0000100" WHEN xb = "1010" AND yb = "000" ELSE
								 "0001000" WHEN xb = "1011" AND yb = "000" ELSE
								 "0010000" WHEN xb = "1100" AND yb = "000" ELSE
								 "0100000" WHEN xb = "1101" AND yb = "000" ELSE
								 "1000000" WHEN xb = "1110" AND yb = "000" ELSE
								 "0000000";
								 
	matrix(14 DOWNTO 8) <= "0000001" WHEN xb = "1000" AND yb = "001" ELSE
								  "0000010" WHEN xb = "1001" AND yb = "001" ELSE
								  "0000100" WHEN xb = "1010" AND yb = "001" ELSE
								  "0001000" WHEN xb = "1011" AND yb = "001" ELSE
								  "0010000" WHEN xb = "1100" AND yb = "001" ELSE
								  "0100000" WHEN xb = "1101" AND yb = "001" ELSE
								  "1000000" WHEN xb = "1110" AND yb = "001" ELSE
								  "0000000";
								  
	matrix(22 DOWNTO 16) <= "0000001" WHEN xb = "1000" AND yb = "010" ELSE
									"0000010" WHEN xb = "1001" AND yb = "010" ELSE
									"0000100" WHEN xb = "1010" AND yb = "010" ELSE
									"0001000" WHEN xb = "1011" AND yb = "010" ELSE
									"0010000" WHEN xb = "1100" AND yb = "010" ELSE
									"0100000" WHEN xb = "1101" AND yb = "010" ELSE
									"1000000" WHEN xb = "1110" AND yb = "010" ELSE
									"0000000";
	
	matrix(30 DOWNTO 24) <= "0000001" WHEN xb = "1000" AND yb = "011" ELSE
									"0000010" WHEN xb = "1001" AND yb = "011" ELSE
									"0000100" WHEN xb = "1010" AND yb = "011" ELSE
									"0001000" WHEN xb = "1011" AND yb = "011" ELSE
									"0010000" WHEN xb = "1100" AND yb = "011" ELSE
									"0100000" WHEN xb = "1101" AND yb = "011" ELSE
									"1000000" WHEN xb = "1110" AND yb = "011" ELSE
									"0000000";
									
	matrix(38 DOWNTO 32) <= "0000001" WHEN xb = "1000" AND yb = "100" ELSE
									"0000010" WHEN xb = "1001" AND yb = "100" ELSE
									"0000100" WHEN xb = "1010" AND yb = "100" ELSE
									"0001000" WHEN xb = "1011" AND yb = "100" ELSE
									"0010000" WHEN xb = "1100" AND yb = "100" ELSE
									"0100000" WHEN xb = "1101" AND yb = "100" ELSE
									"1000000" WHEN xb = "1110" AND yb = "100" ELSE
									"0000000";
									
	matrix(46 DOWNTO 40) <= "0000001" WHEN xb = "1000" AND yb = "101" ELSE
									"0000010" WHEN xb = "1001" AND yb = "101" ELSE
									"0000100" WHEN xb = "1010" AND yb = "101" ELSE
									"0001000" WHEN xb = "1011" AND yb = "101" ELSE
									"0010000" WHEN xb = "1100" AND yb = "101" ELSE
									"0100000" WHEN xb = "1101" AND yb = "101" ELSE
									"1000000" WHEN xb = "1110" AND yb = "101" ELSE
									"0000000";
									
	matrix(54 DOWNTO 48) <= "0000001" WHEN xb = "1000" AND yb = "110" ELSE
									"0000010" WHEN xb = "1001" AND yb = "110" ELSE
									"0000100" WHEN xb = "1010" AND yb = "110" ELSE
									"0001000" WHEN xb = "1011" AND yb = "110" ELSE
									"0010000" WHEN xb = "1100" AND yb = "110" ELSE
									"0100000" WHEN xb = "1101" AND yb = "110" ELSE
									"1000000" WHEN xb = "1110" AND yb = "110" ELSE
									"0000000";
									
	matrix(62 DOWNTO 56) <= "0000001" WHEN xb = "1000" AND yb = "111" ELSE
									"0000010" WHEN xb = "1001" AND yb = "111" ELSE
									"0000100" WHEN xb = "1010" AND yb = "111" ELSE
									"0001000" WHEN xb = "1011" AND yb = "111" ELSE
									"0010000" WHEN xb = "1100" AND yb = "111" ELSE
									"0100000" WHEN xb = "1101" AND yb = "111" ELSE
									"1000000" WHEN xb = "1110" AND yb = "111" ELSE
									"0000000";
									
	matrix(7) <= '1' WHEN raq2 = "000" ELSE '0';
	matrix(15)<= '1' WHEN raq2 = "000" OR raq2 = "001" ELSE '0';
	matrix(23)<= '1' WHEN raq2 = "000" OR raq2 = "001" OR raq2 = "010" ELSE '0';
	matrix(31)<= '1' WHEN raq2 = "001" OR raq2 = "010" OR raq2 = "011" ELSE '0';
	matrix(39)<= '1' WHEN raq2 = "010" OR raq2 = "011" OR raq2 = "100" ELSE '0';
	matrix(47)<= '1' WHEN raq2 = "011" OR raq2 = "100" OR raq2 = "101" ELSE '0';
	matrix(55)<= '1' WHEN raq2 = "100" OR raq2 = "101" ELSE '0';
	matrix(63)<= '1' WHEN raq2 = "101" ELSE '0';
	
END behaviour;