library ieee;
use ieee.STD_LOGIC_1164.ALL;
use ieee.STD_LOGIC_ARITH.ALL;
use ieee.STD_LOGIC_UNSIGNED.ALL;

entity traffic_light is
    Port ( clk                      : in STD_LOGIC;
           n_reset                  : in STD_LOGIC;
           red, yellow, green, wlak : out STD_LOGIC);
end traffic_light;

architecture Behavioral of traffic_light is
    type state_type is (S_RED, S_GREEN, S_YELLOW);
    signal state, next_state : state_type;

    -- Timer signal
    signal timer : INTEGER := 0;

    constant RED_TIME : INTEGER := 50;
    constant GREEN_TIME : INTEGER := 50;
    constant YELLOW_TIME : INTEGER := 10;
    constant WALK_TIME : INTEGER := 20;
begin

    -- State transition process
    process(clk, n_reset)
    begin
        if n_reset = '0' then
            state <= S_RED;
            timer <= 0;
        elsif rising_edge(clk) then
            if timer = 0 then
                state <= next_state;
                case( next_state ) is
                    when S_RED =>
                        timer <= RED_TIME;
                    when S_GREEN =>
                        timer <= GREEN_TIME;
                    when S_YELLOW =>
                        timer <= YELLOW_TIME;
                    when others =>
                        timer <= 0;   
                end case ;
            else
                timer <= timer - 1;        
            end if;
        end if;
    end process;

    -- Next state logic
    process(state)
    begin
        case state is
            when S_RED =>
                next_state <= S_GREEN;
            when S_GREEN =>
                next_state <= S_YELLOW;
            when S_YELLOW =>
                next_state <= S_RED;
            when others =>
                next_state <= S_RED;
        end case;
    end process;

    -- Output logic
    process(state)
    begin
        case state is
            when S_RED =>
                if timer > (RED_TIME - WALK_TIME) then
                    walk <= '1';
                else
                    walk <= '0';
                end if;
            when S_GREEN =>
                red <= '0';
                yellow <= '0';
                green <= '1';
				walk <= '0';
            when S_YELLOW =>
                red <= '0';
                yellow <= '1';
                green <= '0';
				walk <= '0';
            when others =>
                red <= '0';
                yellow <= '0';
                green <= '0';
				walk <= '0';
        end case;
    end process;

end Behavioral;