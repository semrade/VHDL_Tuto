library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_2to1 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Sel : in  STD_LOGIC;
           Y : out STD_LOGIC);
end Mux_2to1;

architecture Behavioral of Mux_2to1 is
begin
    process (A, B, Sel)
    begin
        if (Sel = '0') then
            Y <= A;
        else
            Y <= B;
        end if;
    end process;
end Behavioral;