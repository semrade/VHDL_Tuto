library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use STD.TEXTIO.ALL;

entity ConfigurableModule is
    port (
        clk : in std_logic;
        n_reset : in std_logic;
        data_in : in std_logic_vector(15 downto 0);
        data_out : out std_logic_vector(15 downto 0)
    );
end entity ConfigurableModule;

architecture Behavioral of ConfigurableModule is
    constant FILE_NAME : string := "config.txt";
    signal data_width : integer := 0;
    signal depth : integer := 0;
    type memory_type is array (0 to depth-1) of std_logic_vector(data_width-1 downto 0);
    signal memory : memory_type;
    signal wr_ptr : integer := 0;

begin
    process(clk, n_reset)
        file config_file : text open read_mode is FILE_NAME;
        variable line_content : line;
        variable width, depth_var : integer;
    begin
        if n_reset = '0' then
            data_out <= (others => '0');
        elsif rising_edge(clk) then
            if endfile(config_file) = false then
                readline(config_file, line_content);
                read(line_content, width);
                if width >= 0 and width <= 2147483647 then
                    data_width <= width;
                else
                    report "Width out of range" severity error;
                end if;

                readline(config_file, line_content);
                read(line_content, depth_var);
                if depth_var >= 0 and depth_var <= 2147483647 then
                    depth <= depth_var;
                else
                    report "Depth value out of range" severity error;
                end if;
            end if;
        end if;
    end process;
end architecture Behavioral;
