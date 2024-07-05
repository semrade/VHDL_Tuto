library ieee;
use ieee.STD_LOGIC_1164.ALL;
use ieee.STD_LOGIC_ARITH.ALL;
use ieee.STD_LOGIC_UNSIGNED.ALL;

entity elevator_Controller is
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
end elevator_Controller;

architecture Behavioral of elevator_Controller is
    type state_type is (FLOOR1, FLOOR2, MOVING_UP, MOVING_DOWN);
    signal state, next_state : state_type;

begin

    -- State transition process
    state_register:process(clk, n_reset)
    begin
        if n_reset = '0' then
            state <= FLOOR1;
        elsif rising_edge(clk) then
            state <= next_state;
        end if;
    end process;

    -- Next state logic
    Next_State_Com_Logic:process(state, call_floor1, call_floor2, door_close)
    begin
        next_state <= state;  -- Default to hold state
        case state is
            when FLOOR1 =>
                if call_floor2 = '1' then
                    next_state <= MOVING_UP;
                elsif door_close = '1' then
                    next_state <= FLOOR1;
                end if;

            when FLOOR2 =>
                if call_floor1 = '1' then
                    next_state <= MOVING_DOWN;
                elsif door_close = '1' then
                    next_state <= FLOOR2;
                end if;

            when MOVING_UP =>
                next_state <= FLOOR2;

            when MOVING_DOWN =>
                next_state <= FLOOR1;

            when others =>
                next_state <= FLOOR1;
        end case;
    end process;

    -- Output logic
    Output_Comb_Logic:process(state)
    begin
        move_up <= '0';
        move_down <= '0';
        open_door <= '0';

        case state is
            when FLOOR1 =>
                open_door <= '1';

            when FLOOR2 =>
                open_door <= '1';

            when MOVING_UP =>
                move_up <= '1';

            when MOVING_DOWN =>
                move_down <= '1';

            when others =>
                open_door <= '0';
        end case;
    end process;

end Behavioral;
