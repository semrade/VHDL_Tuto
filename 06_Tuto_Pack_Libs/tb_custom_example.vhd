library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.my_package.all;

entity tb_custom_example is
-- No ports in a test bench entity
end tb_custom_example;

architecture testbench of tb_custom_example is
    -- Component declaration for the Unit Under Test (UUT)
    component custom_exemple
        Port ( a, b  : in  integer;
               result : out integer);
    end component;

    -- Signal declarations to connect to UUT
    signal a, b : integer := 0;
    signal result : integer;
    
begin
    -- Instantiate the Unit Under Test (UUT)
    uut: custom_exemple
        Port map (
            a => a,
            b => b,
            result => result
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Test case 1
        a <= 10;
        b <= 20;
        wait for 10 ns;
        
        -- Check result
        assert result = (my_function(10, 20) + MY_CONSTANT)
        report "Test case 1 failed" severity error;
        
        -- Test case 2
        a <= -5;
        b <= 15;
        wait for 10 ns;
        
        -- Check result
        assert result = (my_function(-5, 15) + MY_CONSTANT)
        report "Test case 2 failed" severity error;
        
        -- Add more test cases as needed
        
        -- End of test
        wait;
    end process;

end testbench;
