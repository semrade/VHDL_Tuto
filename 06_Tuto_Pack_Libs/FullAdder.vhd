library IEEE;
use IEEE.std_logic_1164.all;

entity FullAdder is
    Port (
        a : in std_logic;
        b : in std_logic;
        cin : in std_logic;
        sum : out std_logic;
        cout : out std_logic
    );
end FullAdder;

architecture Behavioral of FullAdder is
begin
    sum <= a xor b xor cin;
    cout <= (a and b) or (cin and (a xor b));
end Behavioral;