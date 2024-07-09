library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity unsigned_multiplier is
    generic (
        n : integer := 4  -- Number of bits in each operand
    );
    port (
        m, q : in  std_logic_vector(n-1 downto 0);  -- Input operands
        product : out std_logic_vector(2*n-1 downto 0)  -- Output product
    );
end entity unsigned_multiplier;

architecture behavioral of unsigned_multiplier is
begin
    process
        variable partial_sum : std_logic_vector(2*n-1 downto 0) := (others => '0');  -- Accumulator for partial products
        variable carry : std_logic := '0';
    begin
        -- Calculate partial products
        for i in 0 to n-1 loop
            for j in 0 to n-1 loop
                if i + j < 2*n then
                    partial_sum(i + j) := std_logic_vector(unsigned(partial_sum(i + j)) + (unsigned(m(i)) and unsigned(q(j))) + unsigned(carry));
                    carry := '0';
                    if i + j < 2*n-1 then
                        carry := std_logic((unsigned(partial_sum(i + j)) + (unsigned(m(i)) and unsigned(q(j))))(2));
                    end if;
                end if;
            end loop;
        end loop;

        -- Output the final product
        product <= partial_sum;
        
        wait;
    end process;
end architecture behavioral;
