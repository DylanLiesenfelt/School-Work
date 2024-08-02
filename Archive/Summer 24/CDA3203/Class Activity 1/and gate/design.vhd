-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

-- ENTITY
entity and_gate is
port(
	a: in std_logic;
    b: in std_logic;
    q: out std_logic);
end and_gate;
-- ARCHITECTURE
architecture rtl of and_gate is
begin
	process(a) is
    begin
    	q <= a and b;
    end process;
end rtl;