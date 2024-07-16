library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity ALU is
    Port (
        A       : in  STD_LOGIC_VECTOR(31 downto 0);
        B       : in  STD_LOGIC_VECTOR(31 downto 0);
        ALU_Sel : in  STD_LOGIC_VECTOR(2 downto 0);
        Result  : out STD_LOGIC_VECTOR(63 downto 0)
    );
end ALU;

architecture Behavioral of ALU is

begin
    process(A, B, ALU_Sel)
    begin
        case ALU_Sel is
            when "000" =>  -- Addition
                Result <= std_logic_vector(resize(unsigned(A), 64) + resize(unsigned(B), 64));
            when "001" =>  -- Subtraction
                Result <= std_logic_vector(resize(unsigned(A), 64) - resize(unsigned(B), 64));
            when "010" =>  -- Multiplication
                Result <= std_logic_vector(unsigned(A) * unsigned(B));
                --Result <= std_logic_vector(Mul_Result);
            when "011" =>  -- Division
                if B /= "00000000000000000000000000000000" then
                    Result <= std_logic_vector(resize(unsigned(A) / unsigned(B), 64));
                else
                    Result <= (others => '0');  -- Division by zero results in zero
                end if;
            when "100" =>  -- AND
                Result <= "00000000000000000000000000000000" & (A and B);
            when "101" =>  -- OR
                Result <= "00000000000000000000000000000000" & (A or B);
            when "110" =>  -- XOR
                Result <= "00000000000000000000000000000000" & (A xor B);
            when others =>
                Result <= (others => '0');  -- Default case
        end case;
    end process;
end Behavioral;
