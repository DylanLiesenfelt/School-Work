library IEEE;
use IEEE.std_logic_1164.all;

-- ENTITY
entity HalfAdder is
port(
	a: in std_logic;
    b: in std_logic;
    sum: out std_logic;
    carry: out std_logic);
end HalfAdder;

-- ARCHITECTURE
architecture dataflow of HalfAdder is
begin
	sum <= a xor b;
    carry <= a and b;
end dataflow;