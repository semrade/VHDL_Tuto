library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity EightBitMultiplier is
    Port (
        a : in std_logic_vector(7 downto 0);
        b : in std_logic_vector(7 downto 0);
        product : out std_logic_vector(15 downto 0)
    );
end EightBitMultiplier;

architecture Structural of EightBitMultiplier is

    -- Intermediate signals for partial products and sums
    signal pp : std_logic_vector(7 downto 0) := (others => '0');
    signal sum : std_logic_vector(15 downto 0) := (others => '0');
    signal carry : std_logic_vector(15 downto 0) := (others => '0');

    component OneBitMultiplier
        Port (
            a : in std_logic;
            b : in std_logic;
            product : out std_logic
        );
    end component;

    component HalfAdder
        Port (
            a : in std_logic;
            b : in std_logic;
            sum : out std_logic;
            carry : out std_logic
        );
    end component;

    component FullAdder
        Port (
            a : in std_logic;
            b : in std_logic;
            cin : in std_logic;
            sum : out std_logic;
            cout : out std_logic
        );
    end component;

begin

    -- Generate partial products
    gen_partial_products: for i in 0 to 7 generate
        for j in 0 to 7 loop
            pp(i*8+j) <= a(i) and b(j);
        end loop;
    end generate;

    -- Sum the partial products using adders
    -- First row of half adders
    HalfAdders: for i in 0 to 7 generate
        HA1: entity work.HalfAdder port map (
            a => pp(i),
            b => pp(i+8),
            sum => sum(i),
            carry => carry(i+1)
        );
    end generate;

    -- Rest of the adders (full adders)
    FullAdders: for i in 8 to 15 generate
        FA1: entity work.FullAdder port map (
            a => pp(i),
            b => pp(i+8),
            cin => carry(i),
            sum => sum(i),
            cout => carry(i+1)
        );
    end generate;

    -- Final output
    product <= sum;

end Structural;