library IEEE;
use IEEE.std_logic_1164.all;

-- ENTITY
entity fullAdder is
port(
    a, b, CarryIn: in std_logic;
    sum, CarryOut: out std_logic);
end fullAdder;

-- ARCHITECTURE
architecture dataflow of fullAdder is
signal S1, S2, S3: std_logic;
begin
    S1 <= a xor b;
    S2 <= a and b;
    S3 <= s1 and CarryIn;
    sum <= s1 xor CarryIn;
    CarryOut <= S3 or S2;
end dataflow;