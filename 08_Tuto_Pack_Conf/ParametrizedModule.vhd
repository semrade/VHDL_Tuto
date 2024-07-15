library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ParametrizedModule is
	  generic (
		 WIDTH : integer := 8
	  );
	  port (
		 clk   		: in  std_logic;
		 n_reset 	: in  std_logic;
		 data_in  	: in  std_logic_vector(WIDTH-1 downto 0);
		 data_out 	: out std_logic_vector(WIDTH-1 downto 0)
	  );
end entity ParametrizedModule;

architecture Behavioral of ParametrizedModule is
begin
  process(clk, n_reset)
  begin
    if n_reset = '0' then
      data_out <= (others => '0');
    elsif rising_edge(clk) then
      data_out <= data_in;
    end if;
  end process;
end architecture Behavioral;