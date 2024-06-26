library IEEE;
use IEEE.std_logic_1164.all;

-- ENTITY
entity Circut_F is
port(
    W, X, Y, Z: in std_logic;
    F: out std_logic);
end Circut_F;

-- ARCHITECTURE
architecture dataflow of Circut_F is
signal and1, and2, and3, and4, or1: std_logic;
begin
    and1 <= W and X and Y and Z;
    and2 <= not(W) and X and not(Y) and Z;
    and3 <= W and not(X) and Y and not(Z);
    and4 <= not(W) and not(X) and not(Y) and not(Z);
    or1 <= and1 or and2 or and3 or and4;
    F <= or1;
end dataflow;