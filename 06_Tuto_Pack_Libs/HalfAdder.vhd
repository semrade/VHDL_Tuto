library IEEE;
use IEEE.std_logic_1164.all;

entity HalfAdder is
    Port (
        a : in std_logic;
        b : in std_logic;
        sum : out std_logic;
        carry : out std_logic
    );
end HalfAdder;

architecture Behavioral of HalfAdder is
begin
    sum <= a xor b;
    carry <= a and b;
end Behavioral;