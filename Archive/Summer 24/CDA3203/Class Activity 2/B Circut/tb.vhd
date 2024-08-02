library IEEE;
use IEEE.std_logic_1164.all;

-- TESTBENCH ENTITY
entity testbench is
--empty
end testbench;

architecture tb of testbench is
-- DUT COMPONENT
component Circut_F is
port(
    W, X, Y, Z: in std_logic;
    F: out std_logic);
end component;

signal W_IN, X_IN, Y_IN, Z_IN, F_OUT : std_logic;

begin
-- CONNECT DUT
DUT: Circut_F port map(W_IN, X_IN, Y_IN, Z_IN, F_OUT);

	process
  	begin
    	W_IN <='1';
        X_IN <='0';
		Y_IN <='1';
		Z_IN <='0';
        wait for 1 ns;

		W_IN <='1';
        X_IN <='0';
		Y_IN <='1';
		Z_IN <='1';
        wait for 1 ns;

		W_IN <='1';
        X_IN <='1';
		Y_IN <='0';
		Z_IN <='1';
        wait for 1 ns;

		W_IN <='1';
        X_IN <='0';
		Y_IN <='0';
		Z_IN <='1';
        wait for 1 ns;

		W_IN <='1';
        X_IN <='1';
		Y_IN <='0';
		Z_IN <='0';
        wait for 1 ns;

      	-- CLEAR INPUTS
      	W_IN <='0';
      	X_IN <='0';
		Y_IN <='0';
		Z_IN <='0';
      	wait;
	end process;
end tb;