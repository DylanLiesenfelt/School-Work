library IEEE;
use IEEE.std_logic_1164.all;

-- ENTITY
entity Encoder is
port(
    y3, y2, y1: in std_logic;
    a1, a0: out std_logic);
end Encoder;

-- ARCHITECTURE
architecture dataflow of Encoder is
begin
    a1 <= y3 or y2;
    a0 <= y3 or y1;
end dataflow;