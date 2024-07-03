library IEEE;
   use IEEE.STD_LOGIC_1164.ALL;

   entity Mux_4to1 is
       Port ( A : in  STD_LOGIC;
              B : in  STD_LOGIC;
              C : in  STD_LOGIC;
              D : in  STD_LOGIC;
              Sel : in  STD_LOGIC_VECTOR (1 downto 0);
              Y : out STD_LOGIC);
   end Mux_4to1;

   architecture Behavioral of Mux_4to1 is
   begin
       process (A, B, C, D, Sel)
       begin
           case Sel is
               when "00" => Y <= A;
               when "01" => Y <= B;
               when "10" => Y <= C;
               when "11" => Y <= D;
               when others => Y <= '0';
           end case;
       end process;
   end Behavioral;