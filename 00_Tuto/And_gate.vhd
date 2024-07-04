library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity And_gate is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end And_gate;

architecture Behavioral of And_gate is
begin
    Y <= A and B;
end Behavioral;