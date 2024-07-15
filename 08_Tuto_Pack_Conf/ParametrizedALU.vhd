library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ParametrizedALU is
  generic (
    WIDTH : integer := 32
  );
  port (
    A       : in  std_logic_vector(WIDTH-1 downto 0);
    B       : in  std_logic_vector(WIDTH-1 downto 0);
    Op      : in  std_logic_vector(1 downto 0);  -- 2-bit vector for 4 operations
    Result  : out std_logic_vector(WIDTH-1 downto 0);
    CarryOut: out std_logic
  );
end entity ParametrizedALU;

architecture Behavioral of ParametrizedALU is
begin
  process(A, B, Op)
  begin
    case Op is
      when "00" =>
        Result <= std_logic_vector(unsigned(A) + unsigned(B));
        CarryOut <= '1' ;--when unsigned(A) + unsigned(B) > 2**WIDTH-1 else '0';
      when "01" =>
        Result <= std_logic_vector(unsigned(A) - unsigned(B));
        CarryOut <= '0'; -- No carry out for subtraction
      when "10" =>
        Result <= A and B;
        CarryOut <= '0';
      when "11" =>
        Result <= A or B;
        CarryOut <= '0';
      when others =>
        Result <= (others => '0');
        CarryOut <= '0';
    end case;
  end process;
end architecture Behavioral;
