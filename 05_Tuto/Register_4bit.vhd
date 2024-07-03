library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Register_4bit is
    Port ( D : in STD_LOGIC_VECTOR(3 downto 0);
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR(3 downto 0));
end Register_4bit;

architecture Behavioral of Register_4bit is
    signal Q_internal : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            Q_internal <= D;
        end if;
    end process;
    Q <= Q_internal;
end Behavioral;