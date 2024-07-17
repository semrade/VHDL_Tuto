library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ParametrizedFIFO is
  generic (
    DATA_WIDTH : integer := 8;
    DEPTH      : integer := 16
  );
  port (
    clk     : in  std_logic;
    reset   : in  std_logic;
    wr_en   : in  std_logic;
    rd_en   : in  std_logic;
    data_in : in  std_logic_vector(DATA_WIDTH-1 downto 0);
    data_out: out std_logic_vector(DATA_WIDTH-1 downto 0);
    empty   : out std_logic;
    full    : out std_logic
  );
end entity ParametrizedFIFO;

architecture Behavioral of ParametrizedFIFO is
  type memory_type is array (0 to DEPTH-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
  signal memory     : memory_type;
  signal wr_ptr     : integer range 0 to DEPTH-1 := 0;
  signal rd_ptr     : integer range 0 to DEPTH-1 := 0;
  signal fifo_count : integer range 0 to DEPTH := 0;
begin
  process(clk, reset)
  begin
    if reset = '1' then
      wr_ptr <= 0;
      rd_ptr <= 0;
      fifo_count <= 0;
    elsif rising_edge(clk) then
      if wr_en = '1' and fifo_count < DEPTH then
        memory(wr_ptr) <= data_in;
        wr_ptr <= (wr_ptr + 1) mod DEPTH;
        fifo_count <= fifo_count + 1;
      end if;
      if rd_en = '1' and fifo_count > 0 then
        data_out <= memory(rd_ptr);
        rd_ptr <= (rd_ptr + 1) mod DEPTH;
        fifo_count <= fifo_count - 1;
      end if;
    end if;
  end process;

  empty <= '1' when fifo_count = 0 else '0';
  full  <= '1' when fifo_count = DEPTH else '0';
end architecture Behavioral;