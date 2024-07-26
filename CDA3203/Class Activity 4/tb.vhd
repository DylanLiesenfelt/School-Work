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

signal and1, and2, masterSin, masterSout, masterRin,
masterRout, slaveSin, slaveRin, slaveSout, slaveRout,
qSig, qbarSig: std_logic;

begin

-- CONNECT DUT
DUT: JKFlipFlop port map(Jin, Kin, CLOCKin, Qout, QBARout);

	process
  	begin

    	Jin <='0'; --start state
        Kin <='0';
        CLOCKin <='0';
        wait for 10 ns;
        CLOCKin <='1';
        wait for 10 ns;

        and1 <= '1'; --initialize  circuit

      	Jin <='1'; --set
      	Kin <='0';
      	CLOCKin <='0';
        wait for 10 ns;
        CLOCKin <='1';
        wait for 10 ns;

        and1 <= J and qbarSig; --normalize gate

        Jin <='0'; --reset
      	Kin <='1';
      	CLOCKin <='0';
        wait for 10 ns;
        CLOCKin <='1';
        wait for 10 ns;

      	-- CLEAR INPUTS
      	Jin <='0';
      	kin <='0';
		CLOCKin <='0';
      	wait;
	end process;
end tb;