LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
---------------------------------------
ENTITY raq_logic IS
	PORT		(	clk		:	IN		STD_LOGIC;
					rst		:	IN		STD_LOGIC;
					B1_up		:	IN		STD_LOGIC;
					B1_dw		:	IN		STD_LOGIC;
					B2_up		:	IN		STD_LOGIC;
					B2_dw		:	IN		STD_LOGIC;
					raq1		:	OUT	STD_LOGIC_VECTOR(2 DOWNTO 0);
					raq2		:	OUT	STD_LOGIC_VECTOR(2 DOWNTO 0));
END ENTITY;
---------------------------------------
ARCHITECTURE rtl OF raq_logic IS	
	SIGNAL	raq1_s		: UNSIGNED(2 DOWNTO 0);
	SIGNAL	raq1_next	: UNSIGNED(2 DOWNTO 0);
	SIGNAL	raq2_s		: UNSIGNED(2 DOWNTO 0);
	SIGNAL	raq2_next	: UNSIGNED(2 DOWNTO 0);
	
BEGIN
	
	--NEXT STATE LOGIC
	raq1_next	<=		raq1_s + 1	WHEN (B1_up = '1' AND B1_dw = '0')	ELSE
							raq1_s - 1	WHEN (B1_up = '0' AND B1_dw = '1')	ELSE
							raq1_s;
	
	raq2_next	<=		raq2_s + 1	WHEN (B2_up = '1' AND B2_dw = '0')	ELSE
							raq2_s - 1	WHEN (B2_up = '0' AND B2_dw= '1')	ELSE
							raq2_s;
					
	PROCESS(clk,rst)
		VARIABLE	temp1	:	UNSIGNED(2 DOWNTO 0);
		VARIABLE	temp2	:	UNSIGNED(2 DOWNTO 0);
	BEGIN
		IF(rst='1')THEN
			temp1 := "010";
			temp2 := "010";
		ELSIF (rising_edge(clk)) THEN
			IF (raq1_next = "111") THEN 
				temp1	:= "000";
				temp2	:= raq2_next;
			ELSIF (raq1_next > "101") THEN 
				temp1	:= "101";
				temp2	:= raq2_next;
			ELSIF(raq2_next = "111") THEN
				temp1	:= raq1_next;
				temp2	:= "000";
			ELSIF (raq2_next > "101") THEN
				temp1	:= raq1_next;
				temp2	:= "101";
			ELSE
				temp1	:= raq1_next;
				temp2	:= raq2_next;
			END IF;
		END IF;
		raq1	<= STD_LOGIC_VECTOR(temp1);
		raq1_s	<= temp1;
		raq2	<= STD_LOGIC_VECTOR(temp2);
		raq2_s	<= temp2;
	END PROCESS;
END ARCHITECTURE;