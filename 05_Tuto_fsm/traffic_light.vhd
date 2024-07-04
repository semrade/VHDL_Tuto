library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity traffic_light is
    Port ( clk : in STD_LOGIC;
           n_reset : in STD_LOGIC;
           red, yellow, green : out STD_LOGIC);
end traffic_light;

architecture Behavioral of traffic_light is
    type state_type is (S_RED, S_GREEN, S_YELLOW);
    signal state, next_state : state_type;
begin

    -- State transition process
    process(clk, n_reset)
    begin
        if n_reset = '0' then
            state <= S_RED;
        elsif rising_edge(clk) then
            state <= next_state;
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
                red <= '1';
                yellow <= '0';
                green <= '0';
            when S_GREEN =>
                red <= '0';
                yellow <= '0';
                green <= '1';
            when S_YELLOW =>
                red <= '0';
                yellow <= '1';
                green <= '0';
            when others =>
                red <= '0';
                yellow <= '0';
                green <= '0';
        end case;
    end process;

end Behavioral;