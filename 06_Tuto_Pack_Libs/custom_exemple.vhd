library IEEE;
use IEEE.std_logic_1164.all;
use work.my_package.all;

entity custom_exemple is
    Port ( a, b 	: in  integer;
           result : out integer);
end custom_exemple;


architecture Behavioral of custom_exemple is
begin
    process(a, b)
    begin
        result <= my_function(a, b) + MY_CONSTANT;
    end process;
end Behavioral;