library IEEE;
use IEEE.std_logic_1164.all;

-- ENTITY
entity comboCircut is
port(
    a, b, c, d: in std_logic;
    z: out std_logic
);
end comboCircut;

-- ARCHITECTURE
architecture dataflow of comboCircut is
signal S1, S2, S3, S4, S5, S6: std_logic;
begin
    S1 <= b xor d;
    S2 <= b and c;
    S3 <= c or d;
    S4 <= S1 or S2;
    S5 <= not S3;
    S6 <= a or S5;
    z <= S6 xor S4;
end dataflow;
