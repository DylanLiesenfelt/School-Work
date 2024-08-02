library IEEE;
use IEEE.std_logic_1164.all;

entity JKFlipFlop is
    port (
        J, K, CLOCK : in std_logic;
        Q, Qbar : out std_logic
    );
end JKFlipFlop;

architecture Behavioral of JKFlipFlop is
    signal Q_internal : std_logic := '0';
begin

    process (CLOCK)
    begin
        if rising_edge(CLOCK) then
            if (J = '0' and K = '0') then
                Q_internal <= Q_internal; -- No change
            elsif (J = '0' and K = '1') then
                Q_internal <= '0'; -- Reset
            elsif (J = '1' and K = '0') then
                Q_internal <= '1'; -- Set
            elsif (J = '1' and K = '1') then
                Q_internal <= not Q_internal; -- Toggle
            end if;
        end if;
    end process;

    Q <= Q_internal;
    Qbar <= not Q_internal;

end Behavioral;
