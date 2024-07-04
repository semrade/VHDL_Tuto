LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY traffic_light_testbench IS
END traffic_light_testbench;

ARCHITECTURE behavior OF traffic_light_testbench IS

    COMPONENT traffic_light
    Port ( clk : in STD_LOGIC;
           n_reset : in STD_LOGIC;
           red, yellow, green : out STD_LOGIC);
    END COMPONENT;

    SIGNAL m_clk : std_logic := '0';
    SIGNAL m_reset : std_logic := '0';
    SIGNAL m_red, m_yellow, m_green : std_logic := '0';

BEGIN

    uut: traffic_light PORT MAP (
        clk => m_clk,
        n_reset => m_reset,
        red => m_red,
        yellow => m_yellow,
		  green => m_green
    );

    clk_process :process
    begin
        m_clk <= '0';
        wait for 10 ns;
        m_clk <= '1';
        wait for 10 ns;
    end process;

    stim_proc: process
    begin       
        m_reset <= '1';
        wait for 20 ns; 
        m_reset <= '0';
        wait;
    end process;

END behavior;