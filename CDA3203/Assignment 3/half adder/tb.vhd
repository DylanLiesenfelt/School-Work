library IEEE;
use IEEE.std_logic_1164.all;

-- TESTBENCH ENTITY
entity testbench is
--empty
end testbench;

architecture tb of testbench is
-- DUT COMPONENT
component HalfAdder is
port(
	a: in std_logic;
    b: in std_logic;
    sum: out std_logic;
    carry: out std_logic);
end component;

signal aIN, bIN, SUM, CARRY: std_logic;

begin

-- CONNECT DUT
DUT:HalfAdder port map(aIN, bIN, SUM, CARRY);

	process
  	begin
    	aIN <='0';
        bIN <='0';
        wait for 1 ns;

      	aIN <='0';
      	bIN <='1';
      	wait for 1 ns;

        aIN <='1';
      	bIN <='0';
      	wait for 1 ns;

        aIN <='1';
      	bIN <='1';
      	wait for 1 ns;

      	-- CLEAR INPUTS
      	aIN <='0';
      	bIN <='0';
      	wait;
	end process;
end tb;