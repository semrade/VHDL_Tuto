library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity And_gate_test_bench is
end And_gate_test_bench;

architecture Behavioral of And_gate_test_bench is
    signal A : STD_LOGIC := '0';
    signal B : STD_LOGIC := '0';
    signal Y : STD_LOGIC;

    -- Instantiate the AND gate
    component And_gate
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

begin
    -- Connect signals to the DUT
    uut: And_gate Port Map (
        A => A,
        B => B,
        Y => Y
    );

    -- Stimulus process
    stimulus: process
    begin
        -- Test case 1
        A <= '0'; B <= '0';
        wait for 10 ns;
        -- Test case 2
        A <= '0'; B <= '1';
        wait for 10 ns;
        -- Test case 3
        A <= '1'; B <= '0';
        wait for 10 ns;
        -- Test case 4
        A <= '1'; B <= '1';
        wait for 10 ns;

        -- Stop simulation
        wait;
    end process;
end Behavioral;