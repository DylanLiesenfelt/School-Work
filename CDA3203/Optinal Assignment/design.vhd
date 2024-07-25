library IEEE;
use IEEE.std_logic_1164.all;

-- ENTITY
entity FullAdder is
port(
    A, B, C: in std_logic;
    Sum, Carry: out std_logic);
end FullAdder;

-- ARCHITECTURE
architecture dataflow of FullAdder is
signal xor1, xor2, and1, and2, or1: std_logic;
begin
    xor1 <= A xor B;
    xor2 <= xor1 xor C;
    and1 <= xor1 and C;
    and2 <= A and B;
    or1 <= and1 or and2;
    Sum <= xor2;
    Carry <= or1;
end dataflow;