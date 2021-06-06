LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
---------------------------------------
ENTITY score_logic IS
	PORT		(	clk		:	IN		STD_LOGIC;
					rst		:	IN		STD_LOGIC;
					score1	:	IN		STD_LOGIC;
					score2	:	IN		STD_LOGIC;
					points1	:	OUT	STD_LOGIC_VECTOR(3 DOWNTO 0);
					points2	:	OUT	STD_LOGIC_VECTOR(3 DOWNTO 0));
END ENTITY;
---------------------------------------
ARCHITECTURE rtl OF score_logic IS	
	SIGNAL	points1_s	: UNSIGNED(3 DOWNTO 0);
	SIGNAL	points2_s	: UNSIGNED(3 DOWNTO 0);
	SIGNAL	points1_next: UNSIGNED(3 DOWNTO 0);
	SIGNAL	points2_next: UNSIGNED(3 DOWNTO 0);
	
BEGIN

	--NEXT STATE LOGIC
	points1_next	<=		points1_s + 1	WHEN (score1 = '1')	ELSE
								points1_s;
						
	points2_next	<=		points2_s + 1	WHEN (score2 = '1')	ELSE
								points2_s;
					
	PROCESS(clk,rst)
		VARIABLE	temp1	:	UNSIGNED(3 DOWNTO 0);
		VARIABLE	temp2	:	UNSIGNED(3 DOWNTO 0);
	BEGIN
		IF(rst='1')THEN
			temp1 := "0000";
			temp2 := "0000";
		ELSIF (rising_edge(clk)) THEN
				temp1	:= points1_next;
				temp2	:= points2_next;
		END IF;
		points1	<= STD_LOGIC_VECTOR(temp1);
		points1_s	<= temp1;
		points2	<= STD_LOGIC_VECTOR(temp2);
		points2_s	<= temp2;
	END PROCESS;
END ARCHITECTURE;