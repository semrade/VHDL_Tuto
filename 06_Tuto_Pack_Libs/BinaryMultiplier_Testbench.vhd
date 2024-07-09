library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity BinaryMultiplier_Testbench is
end BinaryMultiplier_Testbench;

architecture Behavioral of BinaryMultiplier_Testbench is
    signal a, b : std_logic_vector(7 downto 0);
    signal product : std_logic_vector(15 downto 0);

    component BinaryMultiplier
        Port (
            a : in std_logic_vector(7 downto 0);
            b : in std_logic_vector(7 downto 0);
            product : out std_logic_vector(15 downto 0)
        );
    end component;
begin
    uut: BinaryMultiplier port map (a => a, b => b, product => product);

    process
    begin
        a <= "00000011";  -- 3 in binary
        b <= "00000101";  -- 5 in binary
        wait for 10 ns;
        assert (product = "0000000000001111") report "Test failed!" severity error;

        a <= "00000110";  -- 6 in binary
        b <= "00000010";  -- 2 in binary
        wait for 10 ns;
        assert (product = "0000000000001100") report "Test failed!" severity error;

        a <= "00001111";  -- 15 in binary
        b <= "00001111";  -- 15 in binary
        wait for 10 ns;
        assert (product = "0000000011100001") report "Test failed!" severity error;

        wait;
    end process;
end Behavioral;