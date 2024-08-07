library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity vending_machine is
    Port (
        clk : in STD_LOGIC;
        n_reset : in STD_LOGIC;
        coin : in STD_LOGIC;
        item_select : in STD_LOGIC;
        cancel : in STD_LOGIC;
        dispense_item_signal : out STD_LOGIC;
        return_coins : out STD_LOGIC
    );
end vending_machine;

architecture Behavioral of vending_machine is
    type state_type is (IDLE, ACCEPTING_COINS, DISPENSE_ITEM, GIVE_CHANGE);
    signal state, next_state : state_type;
    signal total_amount : INTEGER := 0;
    constant ITEM_COST : INTEGER := 5;  -- Adjust the item cost as needed

begin

    -- State transition process
    state_register: process(clk, n_reset)
    begin
        if n_reset = '0' then
            state <= IDLE;
            total_amount <= 0;
        elsif rising_edge(clk) then
            state <= next_state;
            -- Update total_amount based on the current state and inputs
            case state is
                when IDLE =>
                    total_amount <= 0;
                when ACCEPTING_COINS =>
                    if coin = '1' then
                        total_amount <= total_amount + 1;  -- Assume each coin adds value 1
                    end if;
                when DISPENSE_ITEM =>
                    total_amount <= total_amount;  -- Maintain the current value
                when GIVE_CHANGE =>
                    total_amount <= 0;  -- Reset the total amount after giving change
                when others =>
                    total_amount <= 0;  -- Default to reset the total amount
            end case;
        end if;
    end process;

    -- Next state logic
    Next_State_Com_Logic: process(state, coin, item_select, cancel, total_amount)
    begin
        next_state <= state;  -- Default to hold state
        case state is
            when IDLE =>
                if coin = '1' then
                    next_state <= ACCEPTING_COINS;
                elsif cancel = '1' then
                    next_state <= IDLE;
                end if;

            when ACCEPTING_COINS =>
                if cancel = '1' then
                    next_state <= GIVE_CHANGE;
                elsif item_select = '1' and total_amount >= ITEM_COST then
                    next_state <= DISPENSE_ITEM;
                elsif coin = '1' then
                    next_state <= ACCEPTING_COINS;
                end if;

            when DISPENSE_ITEM =>
                next_state <= GIVE_CHANGE;

            when GIVE_CHANGE =>
                next_state <= IDLE;

            when others =>
                next_state <= IDLE;
        end case;
    end process;

    -- Output logic
    Output_Comb_Logic: process(state)
    begin
        dispense_item_signal <= '0';
        return_coins <= '0';

        case state is
            when DISPENSE_ITEM =>
                dispense_item_signal <= '1';
            when GIVE_CHANGE =>
                return_coins <= '1';
            when others =>
                -- Defaults to '0'
                dispense_item_signal <= '0';
                return_coins <= '0';
        end case;
    end process;

end Behavioral;
