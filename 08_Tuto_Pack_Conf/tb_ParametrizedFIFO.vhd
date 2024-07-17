library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_ParametrizedFIFO is
end entity tb_ParametrizedFIFO;

architecture Behavioral of tb_ParametrizedFIFO is
  constant DATA_WIDTH : integer := 8;
  constant DEPTH      : integer := 16;
  
  signal clk     : std_logic := '0';
  signal reset   : std_logic := '0';
  signal wr_en   : std_logic := '0';
  signal rd_en   : std_logic := '0';
  signal data_in : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
  signal data_out: std_logic_vector(DATA_WIDTH-1 downto 0);
  signal empty   : std_logic;
  signal full    : std_logic;
  
  -- Clock period definition
  constant clk_period : time := 10 ns;

begin
  -- Instantiate the Unit Under Test (UUT)
  uut: entity work.ParametrizedFIFO
    generic map (
      DATA_WIDTH => DATA_WIDTH,
      DEPTH      => DEPTH
    )
    port map (
      clk     => clk,
      n_reset   => reset,
      wr_en   => wr_en,
      rd_en   => rd_en,
      data_in => data_in,
      data_out=> data_out,
      empty   => empty,
      full    => full
    );

  -- Clock process definitions
  clk_process : process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;
  
  -- Stimulus process
  stim_proc: process
  begin		
    -- Reset the FIFO
    reset <= '0';
    wait for clk_period*2;
    reset <= '1';
    wait for clk_period*2;
    
    -- Write to the FIFO
    for i in 0 to DEPTH-1 loop
      data_in <= std_logic_vector(to_unsigned(i, DATA_WIDTH));
      wr_en <= '1';
      wait for clk_period;
    end loop;
    wr_en <= '0';
    wait for clk_period;

    -- Read from the FIFO
    for i in 0 to DEPTH-1 loop
      rd_en <= '1';
      wait for clk_period;
    end loop;
    rd_en <= '0';
    wait for clk_period;
    
    -- Finish simulation
    wait;
  end process;

end architecture Behavioral;
