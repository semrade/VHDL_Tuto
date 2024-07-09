library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Multiplier is
    Generic (
        N : integer := 4  -- Number of bits (can be 4, 8, or 16)
    );
    Port (
        m       : in  std_logic_vector(N-1 downto 0);
        q       : in  std_logic_vector(N-1 downto 0);
        product : out std_logic_vector(2*N-1 downto 0)
    );
end entity Multiplier;

architecture Structural of Multiplier is
    -- Signals for partial products
    type pp_array is array (0 to N-1) of std_logic_vector(N-1 downto 0);
    signal pp    : pp_array;
    signal sum   : std_logic_vector(2*N-1 downto 0) := (others => '0');
    signal carry : std_logic_vector(2*N downto 0) := (others => '0');

    component FullAdder
        Port (
            a    : in std_logic;
            b    : in std_logic;
            cin  : in std_logic;
            sum  : out std_logic;
            cout : out std_logic
        );
    end component;

begin

    -- Generate partial products
    gen_partial_products: process(m, q)
    begin
        for i in 0 to N-1 loop
            for j in 0 to N-1 loop
                pp(i)(j) <= m(i) and q(j);
            end loop;
        end loop;
    end process;

    -- Sum the partial products using Full Adders
    sum_partial_products: process(pp)
    begin
        -- Initialize sum and carry signals
        sum   <= (others => '0');
        carry <= (others => '0');

        -- Sum the partial products with cascading full adders
        for i in 0 to N-1 loop
            for j in 0 to N-1 loop
                if i = 0 then
                    sum(j) <= pp(i)(j);
                else
                    FullAdder_inst: FullAdder
                        port map (
                            a    => pp(i)(j),
                            b    => sum(i + j),
                            cin  => carry(i + j),
                            sum  => sum(i + j),
                            cout => carry(i + j + 1)
                        );
                end if;
            end loop;
        end loop;
    end process;

    -- Output the final product
    product <= sum;

end architecture Structural;
