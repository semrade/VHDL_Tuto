library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_EightBitMultiplier is
end tb_EightBitMultiplier;

architecture testbench of tb_EightBitMultiplier is

    -- Component Declaration for the Unit Under Test (UUT)
    component EightBitMultiplier
        Port (
            a : in std_logic_vector(7 downto 0);
            b : in std_logic_vector(7 downto 0);
            product : out std_logic_vector(15 downto 0)
        );
    end component;

    -- Signals to connect to UUT
    signal a : std_logic_vector(7 downto 0) := (others => '0');
    signal b : std_logic_vector(7 downto 0) := (others => '0');
    signal product : std_logic_vector(15 downto 0);

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: EightBitMultiplier
        Port map (
            a => a,
            b => b,
            product => product
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Test case 1
        a <= "00000011"; -- 3
        b <= "00000010"; -- 2
        wait for 10 ns;
        assert (product = "0000000000000110") report "Test case 1 failed" severity error; -- 6
        
        -- Test case 2
        a <= "00000101"; -- 5
        b <= "00000011"; -- 3
        wait for 10 ns;
        assert (product = "0000000000001111") report "Test case 2 failed" severity error; -- 15
        
        -- Test case 3
        a <= "11111111"; -- 255
        b <= "00000001"; -- 1
        wait for 10 ns;
        assert (product = "0000000011111111") report "Test case 3 failed" severity error; -- 255
        
        -- Test case 4
        a <= "11111111"; -- 255
        b <= "11111111"; -- 255
        wait for 10 ns;
        assert (product = "1111111000000001") report "Test case 4 failed" severity error; -- 65025
        
        -- Add more test cases as needed
        
        wait;
    end process;

end testbench;
