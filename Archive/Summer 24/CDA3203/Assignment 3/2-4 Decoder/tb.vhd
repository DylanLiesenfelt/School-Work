library IEEE;
use IEEE.std_logic_1164.all;

-- TESTBENCH ENTITY
entity testbench is
--empty
end testbench;

architecture tb of testbench is
-- DUT COMPONENT
component Decoder is
port(
    a1, a0, e: in std_logic;
    y3, y2, y1, y0: out std_logic);
end component;

signal A1_IN, A0_IN, ENABLE, Y3_OUT, Y2_OUT, Y1_OUT, Y0_OUT : std_logic;

begin

-- CONNECT DUT
DUT: Decoder port map(A1_IN, A0_IN, ENABLE, Y3_OUT, Y2_OUT, Y1_OUT, Y0_OUT);

	process
  	begin

      	A1_IN <='0';
      	A0_IN <='0';
		ENABLE <='1';
      	wait for 1 ns;

        A1_IN <='0';
      	A0_IN <='1';
		ENABLE <='1';
      	wait for 1 ns;

        A1_IN <='1';
      	A0_IN <='0';
		ENABLE <='1';
      	wait for 1 ns;

        A1_IN <='1';
      	A0_IN <='1';
		ENABLE <='1';
      	wait for 1 ns;

        A1_IN <='0';
        A0_IN <='0';
		ENABLE <='0';
        wait for 1 ns;

		A1_IN <='1';
      	A0_IN <='1';
		ENABLE <='0';
      	wait for 1 ns;

      	-- CLEAR INPUTS
      	A1_IN <='0';
      	A0_IN <='0';
		ENABLE <='0';
      	wait;
	end process;
end tb;