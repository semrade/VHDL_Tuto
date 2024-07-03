library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity T_flip_flop is
    Port ( T : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC);
end T_flip_flop;

architecture Behavioral of T_flip_flop is
    signal Q_internal : STD_LOGIC := '0';
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            if T = '1' then
                Q_internal <= not Q_internal;
            end if;
        end if;
    end process;
    Q <= Q_internal;
end Behavioral;