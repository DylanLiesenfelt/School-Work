library IEEE;
use IEEE.std_logic_1164.all;

-- ENTITY
entity JKFlipFlop is
port(
    J, K, CLOCK: in std_logic;
    Q, Qbar: out std_logic);
end JKFlipFlop;

-- ARCHITECTURE
architecture dataflow of JKFlipFlop is
signal and1, and2, masterSin, masterSout, masterRin,
 masterRout, slaveSin, slaveRin, slaveSout, slaveRout,
 qSig, qbarSig: std_logic;
begin
    and1 <= J and qbarSig;
    and2 <= K and qSig;
    masterSin <= and1 nand CLOCK;
    masterRin <= and2 nand CLOCK;
    masterSout <= masterSin nand masterRout;
    masterRout <= masterRin nand masterSout;
    slaveSin <= masterSout nand not(CLOCK);
    slaveRin <= masterRout nand not(CLOCK);
    slaveSout <= slaveSin nand slaveRout;
    slaveRout <= slaveRin nand slaveSout;
    qsig <= slaveSout;
    qbarSig <= slaveRout;
    Q <= qsig;
    qbar <= qbarSig;
end dataflow;