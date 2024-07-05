library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity vending_machine_testbench is
end vending_machine_testbench;

architecture Behavioral of vending_machine_testbench is

    -- Component Declaration for the Unit Under Test (UUT)
    component vending_machine
        Port (
            clk : in STD_LOGIC;
            n_reset : in STD_LOGIC;
            coin : in STD_LOGIC;
            item_select : in STD_LOGIC;
            cancel : in STD_LOGIC;
            dispense_item_signal : out STD_LOGIC;
            return_coins : out STD_LOGIC
        );
    end component;

    -- Inputs
    signal clk : STD_LOGIC := '0';
    signal n_reset : STD_LOGIC := '0';
    signal coin : STD_LOGIC := '0';
    signal item_select : STD_LOGIC := '0';
    signal cancel : STD_LOGIC := '0';

    -- Outputs
    signal dispense_item_signal : STD_LOGIC;
    signal return_coins : STD_LOGIC;

    -- Clock period definition
    constant clk_period : time := 1 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: vending_machine Port Map (
          clk => clk,
          n_reset => n_reset,
          coin => coin,
          item_select => item_select,
          cancel => cancel,
          dispense_item_signal => dispense_item_signal,
          return_coins => return_coins
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
        n_reset <= '0';
        wait for clk_period*2;
        n_reset <= '1';
        wait for clk_period*2;
        
        -- Test inserting coins and selecting item
        coin <= '1';
        wait for clk_period;
        coin <= '0';
        wait for clk_period;
        coin <= '1';
        wait for clk_period;
        coin <= '0';
        wait for clk_period;
        coin <= '1';
        wait for clk_period;
        coin <= '0';
        wait for clk_period;
        coin <= '1';
        wait for clk_period;
        coin <= '0';
        wait for clk_period;
        coin <= '1';
        wait for clk_period;
        coin <= '0';
        wait for clk_period;

        -- Select item
        item_select <= '1';
        wait for clk_period;
        item_select <= '0';
        wait for clk_period*2;
        
        -- Test canceling the transaction
        coin <= '1';
        wait for clk_period;
        coin <= '0';
        wait for clk_period;
        cancel <= '1';
        wait for clk_period;
        cancel <= '0';
        wait for clk_period*2;

        -- End simulation
        wait;
    end process;

end Behavioral;
