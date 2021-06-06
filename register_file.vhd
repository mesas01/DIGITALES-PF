LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
-----------------------------------------
ENTITY register_file IS 
	PORT ( clk    			: IN 	STD_LOGIC;
			 wr_data_left 	: IN 	STD_LOGIC_VECTOR(63 DOWNTO 0);
			 wr_data_right : IN 	STD_LOGIC_VECTOR(63 DOWNTO 0);
			 rd_data_left 	: OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
			 rd_data_right : OUT STD_LOGIC_VECTOR(63 DOWNTO 0));
			 
END ENTITY;
-----------------------------------------
ARCHITECTURE rtl OF register_file IS
	TYPE mem_2d_type IS ARRAY (0 TO 1) OF STD_LOGIC_VECTOR(63 DOWNTO 0);
	SIGNAL array_reg: mem_2d_type;
	
BEGIN 

-- WRITE PROCESS
	write_process : PROCESS(clk)
	BEGIN
	IF (rising_edge(clk)) THEN 
		array_reg(0) <= wr_data_left;
		array_reg(1) <= wr_data_right;
	END IF;
	END PROCESS;

	--READ
	rd_data_left <= array_reg(0);
	rd_data_right <= array_reg(1);
END ARCHITECTURE;
	