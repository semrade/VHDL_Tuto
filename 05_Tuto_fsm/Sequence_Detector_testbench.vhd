library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Sequence_Detector_testbench is
end Sequence_Detector_testbench;

architecture Behavioral of Sequence_Detector_testbench is

    -- Component Declaration for the Unit Under Test (UUT)
    component Sequence_Detector
    Port ( clk : in STD_LOGIC;
           n_reset : in STD_LOGIC;
           serial_in : in STD_LOGIC;
           Sequence_Detected : out STD_LOGIC);
    end component;

    -- Inputs
    signal clk : STD_LOGIC := '0';
    signal reset : STD_LOGIC := '1';
    signal serial_in : STD_LOGIC := '0';

    -- Outputs
    signal Sequence_Detected : STD_LOGIC;

    -- Clock period definition
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: Sequence_Detector Port Map (
          clk => clk,
          n_reset => reset,
          serial_in => serial_in,
          Sequence_Detected => Sequence_Detected
        );

    -- Clock process definitions
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin		
        -- Initialize Inputs
        reset <= '0';
        wait for clk_period*2;
        reset <= '1';

        -- Apply sequence: 1, 0, 1, 1, 0, 1, 1
        serial_in <= '1';
        wait for clk_period;
        serial_in <= '0';
        wait for clk_period;
        serial_in <= '1';
        wait for clk_period;
        serial_in <= '1';
        wait for clk_period;
        -- Sequence 1011 detected here
        serial_in <= '0';
        wait for clk_period;
        serial_in <= '1';
        wait for clk_period;
        serial_in <= '1';
        wait for clk_period;

        -- Wait for a few clock cycles to observe output
        wait for clk_period*5;

        -- End simulation
        wait;
    end process;

end Behavioral;
