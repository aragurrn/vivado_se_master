----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.01.2025 12:45:06
-- Design Name: 
-- Module Name: comparador_GEL_Nbits - Behavioral
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

entity comparador_GEL_Nbits is
    generic (N : integer := 4);
    Port ( A : in STD_LOGIC_VECTOR (N-1 downto 0);
           B : in STD_LOGIC_VECTOR (N-1 downto 0);
           G : out STD_LOGIC;
           E : out STD_LOGIC;
           L : out STD_LOGIC);
end comparador_GEL_Nbits;

architecture Behavioral of comparador_GEL_Nbits is

begin
process (A, B) variable gr, eq, lo : std_logic; begin

    gr :='0';
    eq :='1';
    lo :='0';
    
    for i in 0 to N-1 loop
        lo:=((not A(i)) and B(i)) or (((not A(i)) or B(i)) and lo);
        eq := (A(i) xnor B(i)) and eq;
        gr:=((not B(i)) and A(i)) or (((not B(i)) or A(i)) and gr);
    end loop;
    
    G<=gr;
    E<=eq;
    L<=lo;

end process;

end Behavioral;
