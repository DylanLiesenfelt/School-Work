library IEEE;
use IEEE.std_logic_1164.all;

-- TESTBENCH ENTITY
entity testbench is
--empty
end testbench;

architecture tb of testbench is
-- DUT COMPONENT
component JKFlipFlop is
port(
    J, K, CLOCK: in std_logic;
    Q, Qbar: out std_logic);
end component;

signal Jin, Kin, CLOCKin: std_logic := '0';
signal Qout, QBARout: std_logic;

constant clk_period : time := 10 ns;

begin

-- CONNECT DUT
DUT: JKFlipFlop port map(Jin, Kin, CLOCKin, Qout, QBARout);

    clk_process: process
    begin
        while now < 100 ns loop
            CLOCKin <= '0';
            wait for clk_period/2;
            CLOCKin <= '1';
            wait for clk_period/2;
        end loop;
        wait;
    end process;

    stim_proc: process
    begin
        wait for 2 ns;

        Jin <= '0';
        Kin <= '0';
        wait for clk_period;

        Jin <= '0';
        Kin <= '1';
        wait for clk_period;

        Jin <= '0';
        Kin <= '0';
        wait for clk_period;

        Jin <= '1';
        Kin <= '0';
        wait for clk_period;

        Jin <= '0';
        Kin <= '0';
        wait for clk_period;

        Jin <= '1';
        Kin <= '1';
        wait for clk_period;

        wait;
    end process;
end tb;
