----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2025 13:37:47
-- Design Name: 
-- Module Name: tb_generico - Behavioral
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

entity tb_generico is
--  Port ( );
end tb_generico;

architecture Behavioral of tb_generico is
component comp_A1_generico is
    generic (N : integer := 1);
    Port ( A : in STD_LOGIC_VECTOR (N downto 0);
           Z : out STD_LOGIC_VECTOR (N downto 0));
 end component;
 signal A1, Z1 : std_logic_vector(3 downto 0);
 signal A2, Z2 : std_logic_vector(1 downto 0);

begin

C1: comp_A1_generico generic map (N=>3) port map (A=>A1, Z=>Z1);

C2: comp_A1_generico generic map (N=>1) port map (A=>A2, Z=>Z2);

process begin

    A1<="1111";
    A2<="11";
    wait for 10 ns;
    A1<="0110";
    A2<="10";
    wait for 10 ns;
    A1<="1111";
    A2<="11";
    wait for 10 ns;
    A1<="0101";
    A2<="01";
    wait for 10 ns;

end process;

end Behavioral;
