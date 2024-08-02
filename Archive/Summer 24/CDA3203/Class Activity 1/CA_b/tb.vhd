library IEEE;
use IEEE.std_logic_1164.all;

-- TESTBENCH ENTITY
entity testbench is
--empty
end testbench;

architecture tb of testbench is
-- DUT COMPONENT
component comboCircut is
port(
	a,b,c,d: in std_logic;
	z: out std_logic);
end component;

signal aIN, bIN, cIN, dIn, zOUT : std_logic;

begin

-- CONNECT DUT
DUT: comboCircut port map(aIN, bIN, cIN, dIn, zOUT);

	process
  	begin
    	aIN <='0';
        bIN <='0';
		cIN <='0';
		dIn <='0';
        wait for 1 ns;

		aIN <='0';
        bIN <='0';
		cIN <='0';
		dIn <='1';
        wait for 1 ns;

		aIN <='0';
        bIN <='0';
		cIN <='1';
		dIn <='0';
        wait for 1 ns;

		aIN <='0';
        bIN <='0';
		cIN <='1';
		dIn <='1';
        wait for 1 ns;

		aIN <='0';
        bIN <='1';
		cIN <='0';
		dIn <='0';
        wait for 1 ns;

		aIN <='0';
        bIN <='1';
		cIN <='0';
		dIn <='1';
        wait for 1 ns;

		aIN <='0';
        bIN <='1';
		cIN <='1';
		dIn <='0';
        wait for 1 ns;

		aIN <='0';
        bIN <='1';
		cIN <='1';
		dIn <='1';
        wait for 1 ns;

		aIN <='1';
        bIN <='0';
		cIN <='0';
		dIn <='0';
        wait for 1 ns;

		aIN <='1';
        bIN <='0';
		cIN <='0';
		dIn <='1';
        wait for 1 ns;

		aIN <='1';
        bIN <='0';
		cIN <='1';
		dIn <='0';
        wait for 1 ns;

		aIN <='1';
        bIN <='0';
		cIN <='1';
		dIn <='1';
        wait for 1 ns;

		aIN <='1';
        bIN <='1';
		cIN <='0';
		dIn <='0';
        wait for 1 ns;

		aIN <='1';
        bIN <='1';
		cIN <='0';
		dIn <='1';
        wait for 1 ns;

		aIN <='1';
        bIN <='1';
		cIN <='1';
		dIn <='0';
        wait for 1 ns;

		aIN <='1';
        bIN <='1';
		cIN <='1';
		dIn <='1';
        wait for 1 ns;

      	-- CLEAR INPUTS
      	aIN <='0';
        bIN <='0';
		cIN <='0';
		dIn <='0';
      	wait;
	end process;
end tb;