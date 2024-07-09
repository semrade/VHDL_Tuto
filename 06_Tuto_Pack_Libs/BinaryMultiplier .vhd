library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity BinaryMultiplier is
    Port (
        a : in std_logic_vector(7 downto 0);
        b : in std_logic_vector(7 downto 0);
        product : out std_logic_vector(15 downto 0)
    );
end BinaryMultiplier;

architecture Behavioral of BinaryMultiplier is
begin
    process(a, b)
        variable multiplicand : unsigned(7 downto 0);
        variable multiplier : unsigned(7 downto 0);
        variable result : unsigned(15 downto 0);
        variable temp : unsigned(15 downto 0); -- Temporary variable for shifting
    begin
        multiplicand := unsigned(a);
        multiplier := unsigned(b);
        result := (others => '0');

        -- Binary multiplication using shift-and-add method
        for i in 0 to 7 loop
            if multiplier(0) = '1' then
                temp := unsigned(resize(multiplicand, 16)); -- Resize multiplicand to 16 bits
                result := result + temp;
            end if;
            multiplicand := multiplicand sll 1;
            multiplier := multiplier srl 1;
        end loop;

        product <= std_logic_vector(result);
    end process;
end Behavioral;
