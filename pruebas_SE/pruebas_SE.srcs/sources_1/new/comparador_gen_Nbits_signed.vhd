----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.01.2025 13:06:11
-- Design Name: 
-- Module Name: comparador_gen_Nbits_signed - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comparador_gen_Nbits_signed is
    generic (N : integer := 4);
    Port ( A : in STD_LOGIC_VECTOR (N-1 downto 0);
           B : in STD_LOGIC_VECTOR (N-1 downto 0);
           G : out STD_LOGIC;
           E : out STD_LOGIC;
           L : out STD_LOGIC);
end comparador_gen_Nbits_signed;

architecture Behavioral of comparador_gen_Nbits_signed is

begin

process (A, B) variable gr, eq, lo : std_logic; begin

    if A(N-1)='1' and B(N-1)='0' then 
        lo:='1';
        eq:='0';
        gr:='0';
    elsif A(N-1)='0' and B(N-1)='1' then 
        lo:='0';
        eq:='0';
        gr:='1';
    else 
        gr :='0';
        eq :='1';
        lo :='0';
    
        for i in 0 to N-1 loop
            lo:=((not A(i)) and B(i)) or (((not A(i)) or B(i)) and lo);
            eq := (A(i) xnor B(i)) and eq;
            gr:=((not B(i)) and A(i)) or (((not B(i)) or A(i)) and gr);
        end loop;
        
    end if;
    
    G<=gr;
    E<=eq;
    L<=lo;

end process;

end Behavioral;
