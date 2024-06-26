-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

-- TESTBENCH ENTITY
entity testbench is
--empty
end testbench;

architecture tb of testbench is
-- DUT COMPONENT
component and_gate is
port(
	a: in std_logic;
    b: in std_logic;
    q: out std_logic);
end component;

signal aIN, bIN, qOUT: std_logic;

begin

-- CONNECT DUT
DUT:and_gate port map(aIN, bIN, qOUT);

	process
  	begin
    	aIN <='0';
        bIN <='0';
        wait for 1 ns;

      	aIN <='0';
      	bIN <='1';
      	wait for 1 ns;
        
        aIN <='1';
      	bIN <='1';
      	wait for 1 ns;
		
        aIN <='1';
      	bIN <='X';
      	wait for 1 ns;
     
      	-- CLEAR INPUTS
      	aIN <='0';
      	bIN <='0';
      	wait;
	end process;
end tb;