library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TopLevel is
	  port (
		 clk   		: in  std_logic;
		 n_reset 	: in  std_logic;
		 data_in  	: in  std_logic_vector(15 downto 0);
		 data_out 	: out std_logic_vector(15 downto 0)
	  );
end entity TopLevel;


architecture Behavioral of TopLevel is

  signal data_out_internal : std_logic_vector(15 downto 0);

begin
  U1: entity work.ParametrizedModule
    generic map (
      WIDTH => 16
    )
    port map (
      clk => clk,
      n_reset => n_reset,
      data_in => data_in,
      data_out => data_out_internal
    );

  data_out <= data_out_internal;

end architecture Behavioral;