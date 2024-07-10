library ieee;
use ieee.std_logic_1164.all;
-- use ieee.std_logic_textio.all;   -- NOT USED
-- use ieee.std_logic_unsigned.all; -- NOT USED

entity multy is 
    port (
        x: in  std_logic_vector (3 downto 0);
        y: in  std_logic_vector (3 downto 0);
        p: out std_logic_vector (7 downto 0)
    );
end entity multy;

architecture rtl of multy is
    component Ripple_Adder
        port ( 
            A:      in  std_logic_vector (3 downto 0);
            B:      in  std_logic_vector (3 downto 0);
            Cin:    in  std_logic;
            S:      out std_logic_vector (3 downto 0);
           Cout:    out std_logic
        );
    end component;
-- AND Product terms:
    signal G0, G1, G2:  std_logic_vector (3 downto 0);
-- B Inputs (B0 has three bits of AND product)
    signal B0, B1, B2:  std_logic_vector (3 downto 0);

begin

    -- y(1) thru y (3) AND products, assigned aggregates:
    G0 <= (x(3) and y(1), x(2) and y(1), x(1) and y(1), x(0) and y(1));
    G1 <= (x(3) and y(2), x(2) and y(2), x(1) and y(2), x(0) and y(2));
    G2 <= (x(3) and y(3), x(2) and y(3), x(1) and y(3), x(0) and y(3));
    -- y(0) AND products (and y0(3) '0'):
    B0 <=  ('0',          x(3) and y(0), x(2) and y(0), x(1) and y(0));

-- named association:
cell_1: 
    Ripple_Adder 
        port map (
            a => G0,
            b => B0,
            cin => '0',
            cout => B1(3), -- named association can be in any order
            S(3) => B1(2), -- individual elements of S, all are associated
            S(2) => B1(1), -- all formal members must be provide contiguously
            S(1) => B1(0),
            S(0) => p(1)
        );
cell_2: 
    Ripple_Adder 
        port map (
            a => G1,
            b => B1,
            cin => '0',
            cout => B2(3),
            S(3) => B2(2),
            S(2) => B2(1),
            S(1) => B2(0),
            S(0) => p(2)
        );
cell_3: 
    Ripple_Adder 
        port map (
            a => G2,
            b => B2,
            cin => '0',
            cout => p(7),
            S => p(6 downto 3)  -- matching elements for formal
        );
    p(0) <= x(0) and y(0); 
end architecture rtl;