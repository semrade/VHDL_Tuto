library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Ripple_Adder is
    Port (
        A    : in  STD_LOGIC_VECTOR (3 downto 0);
        B    : in  STD_LOGIC_VECTOR (3 downto 0);
        Cin  : in  STD_LOGIC;
        S    : out STD_LOGIC_VECTOR (3 downto 0);
        Cout : out STD_LOGIC
    );
end Ripple_Adder;

architecture Behavioral of Ripple_Adder is

    -- Full Adder VHDL Code Component Declaration
    component Fulladder
        Port (
            a    : in  std_logic;
            b    : in  std_logic;
            cin  : in  std_logic;
            sum  : out std_logic;
            cout : out std_logic
        );
    end component;

    -- Intermediate Carry declaration
    signal c1, c2, c3 : STD_LOGIC;

begin

    -- Port Mapping Full Adder 4 times
    FA1: Fulladder port map(
        a    => A(0),
        b    => B(0),
        cin  => Cin,
        sum  => S(0),
        cout => c1
    );

    FA2: Fulladder port map(
        a    => A(1),
        b    => B(1),
        cin  => c1,
        sum  => S(1),
        cout => c2
    );

    FA3: Fulladder port map(
        a    => A(2),
        b    => B(2),
        cin  => c2,
        sum  => S(2),
        cout => c3
    );

    FA4: Fulladder port map(
        a    => A(3),
        b    => B(3),
        cin  => c3,
        sum  => S(3),
        cout => Cout
    );

end Behavioral;
