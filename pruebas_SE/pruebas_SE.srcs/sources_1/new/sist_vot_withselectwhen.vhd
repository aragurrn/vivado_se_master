----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2025 13:12:12
-- Design Name: 
-- Module Name: sist_vot_withselectwhen - Behavioral
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

entity sist_vot_withselectwhen is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           Z : out STD_LOGIC);
end sist_vot_withselectwhen;

architecture Behavioral of sist_vot_withselectwhen is
--z=ba+ca+cb
signal CBA : std_logic_vector (3 downto 0);
begin
CBA(2)<=C;
CBA(1)<=B;
CBA(0)<=A;

with CBA select
    Z<= '1' when "011",
        '1' when "101",
        '1' when "110",
        '1' when "111",
        '0' when others;

end Behavioral;
