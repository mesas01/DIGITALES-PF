LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
---------------------------------------
ENTITY ball_logic IS
	PORT		(	clk		:	IN		STD_LOGIC;
					rst		:	IN		STD_LOGIC;
					xb_up		:	IN		STD_LOGIC;
					xb_dw		:	IN		STD_LOGIC;
					yb_up		:	IN		STD_LOGIC;
					yb_dw		:	IN		STD_LOGIC;
					xb			:	OUT	STD_LOGIC_VECTOR(3 DOWNTO 0);
					yb			:	OUT	STD_LOGIC_VECTOR(2 DOWNTO 0));
END ENTITY;
---------------------------------------
ARCHITECTURE rtl OF ball_logic IS	
	SIGNAL	xb_s		: UNSIGNED(3 DOWNTO 0);
	SIGNAL	xb_next	: UNSIGNED(3 DOWNTO 0);
	SIGNAL	yb_s		: UNSIGNED(2 DOWNTO 0);
	SIGNAL	yb_next	: UNSIGNED(2 DOWNTO 0);
	
BEGIN

	--NEXT STATE LOGIC
	xb_next	<=		xb_s + 1	WHEN (xb_up = '1')	ELSE
						xb_s - 1	WHEN (xb_dw = '1')	ELSE
						xb_s;
	
	yb_next	<=		yb_s + 1	WHEN (yb_up = '1')	ELSE
						yb_s - 1	WHEN (yb_dw = '1')	ELSE
						yb_s;
					
	PROCESS(clk,rst)
		VARIABLE	tempX	:	UNSIGNED(3 DOWNTO 0);
		VARIABLE	tempY	:	UNSIGNED(2 DOWNTO 0);
	BEGIN
		IF(rst='1')THEN
			tempX := "0001";
			tempY := "011";
		ELSIF (rising_edge(clk)) THEN
				tempX	:= xb_next;
				tempY	:= yb_next;
		END IF;
		xb	<= STD_LOGIC_VECTOR(tempX);
		xb_s	<= tempX;
		yb	<= STD_LOGIC_VECTOR(tempY);
		yb_s	<= tempY;
	END PROCESS;
END ARCHITECTURE;