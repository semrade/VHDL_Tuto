library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU_tb is
end ALU_tb;

architecture Behavioral of ALU_tb is

    -- Component Declaration for the ALU
    component ALU
        Port (
            A       : in  STD_LOGIC_VECTOR(31 downto 0);
            B       : in  STD_LOGIC_VECTOR(31 downto 0);
            ALU_Sel : in  STD_LOGIC_VECTOR(2 downto 0);
            Result  : out STD_LOGIC_VECTOR(63 downto 0)
        );
    end component;

    -- Inputs
    signal A       : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal B       : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal ALU_Sel : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');

    -- Outputs
    signal Result  : STD_LOGIC_VECTOR(63 downto 0);

begin

    -- Instantiate the ALU
    uut: ALU Port map (
            A => A,
            B => B,
            ALU_Sel => ALU_Sel,
            Result => Result
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Test Addition
        A <= "00000000000000000000000000000101"; -- 5
        B <= "00000000000000000000000000000111"; -- 7
        ALU_Sel <= "000";
        wait for 10 ns;

        -- Test Subtraction
        ALU_Sel <= "001";
        wait for 10 ns;

        -- Test Multiplication
        ALU_Sel <= "010";
        wait for 10 ns;

        -- Test Division
        ALU_Sel <= "011";
        wait for 10 ns;

        -- Test AND
        ALU_Sel <= "100";
        wait for 10 ns;

        -- Test OR
        ALU_Sel <= "101";
        wait for 10 ns;

        -- Test XOR
        ALU_Sel <= "110";
        wait for 10 ns;

        -- End simulation
        wait;
    end process;

end Behavioral;