-- my_package.vhdl
library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;

package my_package is
    constant MY_CONSTANT : integer := 0;
    type my_array is array (0 to 31) of std_logic;
    function my_function(a, b : integer) return integer;
end my_package;

package body my_package is
    function my_function(a, b : integer) return integer is
    begin
        return a + b;
    end my_function;
end my_package;