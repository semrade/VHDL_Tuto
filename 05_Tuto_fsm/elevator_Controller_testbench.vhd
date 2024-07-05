library ieee;
use ieee.STD_LOGIC_1164.ALL;
use ieee.STD_LOGIC_ARITH.ALL;
use ieee.STD_LOGIC_UNSIGNED.ALL;

entity elevator_Controller_testbench is
--  Port ( );
end elevator_Controller_testbench;

architecture Behavioral of elevator_Controller_testbench is

    -- Component Declaration for the Unit Under Test (UUT)
    component elevator_Controller
        Port (
            clk         : in STD_LOGIC;
            n_reset     : in STD_LOGIC;
            call_floor1 : in STD_LOGIC;
            call_floor2 : in STD_LOGIC;
            door_close  : in STD_LOGIC;
            move_up     : out STD_LOGIC;
            move_down   : out STD_LOGIC;
            open_door   : out STD_LOGIC
        );
    end component;

    -- Signals to connect to the UUT
    signal clk         : STD_LOGIC := '0';
    signal n_reset     : STD_LOGIC := '0';
    signal call_floor1 : STD_LOGIC := '0';
    signal call_floor2 : STD_LOGIC := '0';
    signal door_close  : STD_LOGIC := '0';
    signal move_up     : STD_LOGIC;
    signal move_down   : STD_LOGIC;
    signal open_door   : STD_LOGIC;

    -- Clock period definition
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: elevator_Controller
        Port map (
            clk => clk,
            n_reset => n_reset,
            call_floor1 => call_floor1,
            call_floor2 => call_floor2,
            door_close => door_close,
            move_up => move_up,
            move_down => move_down,
            open_door => open_door
        );

    -- Clock process definitions
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period / 2;
        clk <= '1';
        wait for clk_period / 2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- hold reset state for 100 ns.
        wait for 100 ns;
        n_reset <= '1';

        -- Test case 1: Call from floor 1 to floor 2
        wait for 20 ns;
        call_floor2 <= '1';
        wait for 20 ns;
        call_floor2 <= '0';

        -- Wait until elevator reaches floor 2
        wait for 50 ns;

        -- Test case 2: Close door at floor 2
        door_close <= '1';
        wait for 20 ns;
        door_close <= '0';

        -- Test case 3: Call from floor 2 to floor 1
        wait for 20 ns;
        call_floor1 <= '1';
        wait for 20 ns;
        call_floor1 <= '0';

        -- Wait until elevator reaches floor 1
        wait for 50 ns;

        -- Test case 4: Close door at floor 1
        door_close <= '1';
        wait for 20 ns;
        door_close <= '0';

        -- Simulation end
        --wait for 100 ns;
        assert false report "End of Simulation" severity failure;
		  -- End simulation
        --wait;
    end process;

end Behavioral;
