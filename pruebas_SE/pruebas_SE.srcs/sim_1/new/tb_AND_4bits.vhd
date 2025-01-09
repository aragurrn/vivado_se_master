----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.01.2025 22:50:07
-- Design Name: 
-- Module Name: tb_AND_4bits - Behavioral
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

entity tb_AND_4bits is
--  Port ( );
end tb_AND_4bits;

architecture Behavioral of tb_AND_4bits is
component AND_4bits is
     Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           O : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal a_s : std_logic_vector (3 downto 0);
signal b_s : std_logic_vector (3 downto 0);
signal o_s : std_logic_vector (3 downto 0);

begin

DUT : AND_4bits port map (A=>a_s, B=>b_s, O=>o_s);

process begin

a_s <= "0000";
b_s <= "0001";
wait for 10 ns;

a_s <= "0001";
b_s <= "0011";
wait for 10 ns;

a_s <= "0100";
b_s <= "0010";
wait for 10 ns;

a_s <= "1000";
b_s <= "1000";
wait for 10 ns;


end process;

end Behavioral;
