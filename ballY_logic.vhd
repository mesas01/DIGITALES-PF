LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
---------------------------------------
ENTITY ballY_logic IS
	PORT		(	clk		:	IN		STD_LOGIC;
					rst		:	IN		STD_LOGIC;
					ena		:	IN		STD_LOGIC;
					syn_clr	:	IN		STD_LOGIC;
					yb_up		:	IN		STD_LOGIC;
					yb_dw		:	IN		STD_LOGIC;
					yb			:	OUT	STD_LOGIC_VECTOR(2 DOWNTO 0));
END ENTITY;
---------------------------------------
ARCHITECTURE rtl OF ballY_logic IS	
	SIGNAL	yb_s		: UNSIGNED(2 DOWNTO 0);
	SIGNAL	yb_next	: UNSIGNED(2 DOWNTO 0);
	
BEGIN

	--NEXT STATE LOGIC
	yb_next	<=		"000" 	WHEN syn_clr ='1' ELSE
						yb_s + 1	WHEN (ena='1' AND yb_up = '1')	ELSE
						yb_s - 1	WHEN (ena='1' AND yb_dw = '1')	ELSE
						yb_s;
					
	PROCESS(clk,rst)
		VARIABLE	temp	:	UNSIGNED(2 DOWNTO 0);
	BEGIN
		IF(rst='1')THEN
			temp := "000";
		ELSIF (rising_edge(clk)) THEN
			IF (ena='1') THEN
				temp	:= yb_next;
			END IF;
		END IF;
		yb	<= STD_LOGIC_VECTOR(temp);
		yb_s	<= temp;
	END PROCESS;
END ARCHITECTURE;