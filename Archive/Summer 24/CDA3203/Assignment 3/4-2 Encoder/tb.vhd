library IEEE;
use IEEE.std_logic_1164.all;

-- TESTBENCH ENTITY
entity testbench is
--empty
end testbench;

architecture tb of testbench is
-- DUT COMPONENT
component Encoder is
port(
    y3, y2, y1: in std_logic;
    a1, a0: out std_logic);
end component;

signal Y3_IN, Y2_IN, Y1_IN, A1_OUT, A0_OUT : std_logic;

begin

-- CONNECT DUT
DUT: Encoder port map(Y3_IN, Y2_IN, Y1_IN, A1_OUT, A0_OUT);

	process
  	begin
    	Y3_IN <='0';
        Y2_IN <='0';
		Y1_IN <='0';
        wait for 1 ns;

      	Y3_IN <='0';
      	Y2_IN <='0';
		Y1_IN <='1';
      	wait for 1 ns;

        Y3_IN <='0';
      	Y2_IN <='1';
		Y1_IN <='0';
      	wait for 1 ns;

        Y3_IN <='1';
      	Y2_IN <='0';
		Y1_IN<='0';
      	wait for 1 ns;

      	-- CLEAR INPUTS
      	Y3_IN <='0';
      	Y2_IN <='0';
		Y1_IN <='0';
      	wait;
	end process;
end tb;