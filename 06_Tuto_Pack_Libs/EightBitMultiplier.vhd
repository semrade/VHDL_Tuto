library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity EightBitMultiplier is
    Port (
        m : in std_logic_vector(3 downto 0);
        q : in std_logic_vector(3 downto 0);
        product : out std_logic_vector(7 downto 0)
    );
end EightBitMultiplier;

architecture Structural of EightBitMultiplier is

    component FullAdder
        Port (
            a       : in std_logic;
            b       : in std_logic;
            cin     : in std_logic;
            sum     : out std_logic;
            cout    : out std_logic
        );
    end component;

begin

    -- Rest of the adders (full adders)
    product(0)<= m(0) and q(0);
    FA1 : FullAdder port map(
        q() => m(0), 
        b => q(0), 
        cin => '0', sum => product(0), cout => open);


    -- Final output
    product <= sum;

end Structural;