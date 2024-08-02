library IEEE;
use IEEE.std_logic_1164.all;

-- ENTITY
entity Circut_Y is
port(
    A, B, C: in std_logic;
    Y: out std_logic);
end Circut_Y;

-- ARCHITECTURE
architecture dataflow of Circut_Y is
signal and1, and2, and3, or1: std_logic;
begin
    and1 <= not(A) and B and not(C);
    and2 <= not(B) and not(C);
    and3 <= A and B and C;
    or1 <= and1 or and2 or and3;
    y <= or1;
end dataflow;