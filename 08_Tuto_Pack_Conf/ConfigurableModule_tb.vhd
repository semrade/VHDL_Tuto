library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use STD.TEXTIO.ALL;

entity ConfigurableModule_tb is
end entity ConfigurableModule_tb;

architecture Behavioral of ConfigurableModule_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component ConfigurableModule is
        port (
            clk : in std_logic;
            n_reset : in std_logic;
            data_in : in std_logic_vector(15 downto 0);
            data_out : out std_logic_vector(15 downto 0)
        );
    end component;

    -- Signals for the testbench
    signal clk_tb : std_logic := '0';
    signal reset_tb : std_logic := '0';
    signal data_in_tb : std_logic_vector(15 downto 0) := (others => '0');
    signal data_out_tb : std_logic_vector(15 downto 0);

    -- Clock period definition
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: ConfigurableModule port map (
        clk => clk_tb,
        n_reset => reset_tb,
        data_in => data_in_tb,
        data_out => data_out_tb
    );

    -- Clock process definitions
    clk_process : process
    begin
        clk_tb <= '0';
        wait for clk_period / 2;
        clk_tb <= '1';
        wait for clk_period / 2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initialize Inputs
        reset_tb <= '0';
        wait for clk_period * 2;

        reset_tb <= '1';
        wait for clk_period * 2;

        -- Apply test vectors
        data_in_tb <= x"1234";
        wait for clk_period * 2;
        data_in_tb <= x"5678";
        wait for clk_period * 2;
        data_in_tb <= x"9ABC";
        wait for clk_period * 2;
        data_in_tb <= x"DEF0";
        wait for clk_period * 2;

        -- Wait for the end of the simulation
        wait for clk_period * 10;

        -- Finish the simulation
        wait;
    end process;

end architecture Behavioral;
