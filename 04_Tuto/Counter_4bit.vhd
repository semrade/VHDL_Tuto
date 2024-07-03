library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Counter_4bit is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR(3 downto 0));
end Counter_4bit;

architecture Behavioral of Counter_4bit is
    signal count : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
begin
    process(CLK, RESET)
    begin
        if RESET = '1' then
            count <= (others => '0');
        elsif rising_edge(CLK) then
            count <= count + 1;
        end if;
    end process;
    Q <= count;
end Behavioral;