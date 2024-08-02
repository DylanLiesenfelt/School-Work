library IEEE;
use IEEE.std_logic_1164.all;

-- TESTBENCH ENTITY
entity testbench is
--empty
end testbench;

architecture tb of testbench is
-- DUT COMPONENT
component fullAdder is
port(
    a, b, CarryIn: in std_logic;
    sum, CarryOut: out std_logic
);
end component;

signal aIN, bIN, CARRY_IN, SUM, CARRY_OUT : std_logic;

begin

-- CONNECT DUT
DUT: fullAdder port map(aIN, bIN, CARRY_IN, SUM, CARRY_OUT);

	process
  	begin
    	aIN <='0';
        bIN <='0';
		CARRY_IN <='0';
        wait for 1 ns;

      	aIN <='0';
      	bIN <='1';
		CARRY_IN <='1';
      	wait for 1 ns;

        aIN <='1';
      	bIN <='0';
		CARRY_IN <='0';
      	wait for 1 ns;

        aIN <='1';
      	bIN <='1';
		CARRY_IN<='1';
      	wait for 1 ns;

      	-- CLEAR INPUTS
      	aIN <='0';
      	bIN <='0';
		CARRY_IN <='0';
      	wait;
	end process;
end tb;