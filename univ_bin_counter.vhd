LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
---------------------------------------
ENTITY univ_bin_counter IS
	GENERIC	(	N			:			INTEGER	:= 4);
	PORT		(	clk		:	IN		STD_LOGIC;
					rst		:	IN		STD_LOGIC;
					d			:	IN		STD_LOGIC_VECTOR(N-1 DOWNTO 0);
					max_tick	:	OUT	STD_LOGIC);
END ENTITY;
---------------------------------------
ARCHITECTURE rtl OF univ_bin_counter IS
	
	SIGNAL	count_s		: UNSIGNED(N-1 DOWNTO 0);
	SIGNAL	count_next	: UNSIGNED(N-1 DOWNTO 0);
BEGIN
	--NEXT STATE LOGIC
	count_next	<=		(OTHERS => '0') WHEN count_s = UNSIGNED(d) ELSE
							count_s + 1;
							
	PROCESS(clk,rst)
		VARIABLE	temp	:	UNSIGNED(N-1 DOWNTO 0);
	BEGIN
		IF(rst='1')THEN
			temp	:= (OTHERS => '0');
		ELSIF (rising_edge(clk)) THEN 
				temp	:= count_next;
		END IF;
		count_s	<= temp;
	END PROCESS;
	
	--OUTPUT LOGIC
	max_tick <= '1' WHEN count_s = UNSIGNED(d) ELSE '0';
	
END ARCHITECTURE;