library IEEE;
use IEEE.std_logic_1164.all;

-- ENTITY
entity Decoder is
port(
    a1, a0, e: in std_logic;
    y3, y2, y1, y0: out std_logic);
end Decoder;

-- ARCHITECTURE
architecture dataflow of Decoder is
begin
    y3 <= a1 and a0 and e;
    y2 <= a1 and not a0 and e;
    y1 <= not a1 and a0 and e;
    y0 <= not a1 and not a0 and e;
end dataflow;