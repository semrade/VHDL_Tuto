library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK_flip_flop is
    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC);
end JK_flip_flop;

architecture Behavioral of JK_flip_flop is
    signal Q_internal : STD_LOGIC := '0';
    signal JK_vector : STD_LOGIC_VECTOR(1 downto 0);  -- Temporary signal for concatenation
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            JK_vector <= J & K;  -- Concatenate J and K
            case JK_vector is
                when "00" =>
                    Q_internal <= Q_internal;
                when "01" =>
                    Q_internal <= '0';
                when "10" =>
                    Q_internal <= '1';
                when "11" =>
                    Q_internal <= not Q_internal;
                when others =>
                    Q_internal <= Q_internal;
            end case;
        end if;
    end process;
    Q <= Q_internal;
end Behavioral;
