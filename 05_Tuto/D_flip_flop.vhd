library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_flip_flop is
    Port ( D : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC);
end D_flip_flop;

architecture Behavioral of D_flip_flop is
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            Q <= D;
        end if;
    end process;
end Behavioral;