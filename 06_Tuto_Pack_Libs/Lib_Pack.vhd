library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Lib_Pack is
    Port ( a : in  std_logic_vector(7 downto 0);
           b : in  std_logic_vector(7 downto 0);
           sum : out std_logic_vector(7 downto 0));
end Lib_Pack;

architecture Behavioral of Lib_Pack is
begin
    process(a, b)
    variable a_int, b_int, sum_int : signed(7 downto 0);
    begin
        a_int := signed(a);
        b_int := signed(b);
        sum_int := a_int + b_int;
        sum <= std_logic_vector(sum_int);
    end process;
end Behavioral;