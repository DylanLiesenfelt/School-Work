library IEEE;
use IEEE.std_logic_1164.all;

-- TESTBENCH ENTITY
entity testbench is
--empty
end testbench;

architecture tb of testbench is
-- DUT COMPONENT
component Circut_Y is
port(
    A, B, C: in std_logic;
    Y: out std_logic);
end component;

signal A_IN, B_IN, C_IN, Y_OUT : std_logic;

begin

-- CONNECT DUT
DUT: Circut_Y port map(A_IN, B_IN, C_IN, Y_OUT);

	process
  	begin
    	A_IN <='0';
        B_IN <='1';
		C_IN <='0';
        wait for 1 ns;

      	A_IN <='0';
      	B_IN <='1';
		C_IN <='1';
      	wait for 1 ns;

        A_IN <='1';
      	B_IN <='1';
		C_IN <='0';
      	wait for 1 ns;

        A_IN <='1';
      	B_IN <='0';
		C_IN<='0';
      	wait for 1 ns;

        A_IN <='1';
      	B_IN <='1';
		C_IN<='1';
      	wait for 1 ns;

      	-- CLEAR INPUTS
      	A_IN <='0';
      	B_IN <='0';
		C_IN <='0';
      	wait;
	end process;
end tb;