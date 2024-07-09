library IEEE;
use IEEE.std_logic_1164.all;

entity OneBitMultiplier is
    Port (
        a : in std_logic;
        b : in std_logic;
        product : out std_logic
    );
end OneBitMultiplier;

architecture Behavioral of OneBitMultiplier is
begin
    product <= a and b;
end Behavioral;