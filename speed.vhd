LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
---------------------------------------
ENTITY speed IS
	GENERIC	(	N			:			INTEGER	:= 24);
	PORT		(	clk		:	IN		STD_LOGIC;
					rst		:	IN		STD_LOGIC;
					tick		:	OUT	STD_LOGIC_VECTOR(N-1 DOWNTO 0));
END ENTITY;
---------------------------------------
ARCHITECTURE rtl OF speed IS	
	SIGNAL	tick_s		: UNSIGNED(N-1 DOWNTO 0);
	SIGNAL	tick_next	: UNSIGNED(N-1 DOWNTO 0);
	
BEGIN

	--NEXT STATE LOGIC
	tick_next	<=		tick_s - "000000111101000010010000"; --0,005
					
	PROCESS(clk,rst)
		VARIABLE	temp	:	UNSIGNED(N-1 DOWNTO 0):= "100110001001011010000000"; --0,1
	BEGIN
		IF(rst='1')THEN
			temp := "100110001001011010000000";
		ELSIF (rising_edge(clk)) THEN
			IF (tick_next < "001001100010010110100000") THEN --0,05 
				temp := "100110001001011010000000";
			ELSE
				temp := tick_next;
			END IF;
		END IF;
		tick	<= STD_LOGIC_VECTOR(temp);
		tick_s	<= temp;
	END PROCESS;
END ARCHITECTURE;