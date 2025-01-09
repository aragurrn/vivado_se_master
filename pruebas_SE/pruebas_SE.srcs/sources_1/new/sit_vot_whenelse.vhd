----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2025 13:02:54
-- Design Name: 
-- Module Name: sit_vot_whenelse - Behavioral
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

entity sit_vot_whenelse is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           Z : out STD_LOGIC);
end sit_vot_whenelse;

architecture Behavioral of sit_vot_whenelse is
--z=ba+ca+cb
begin
Z<= '1' when A='1' and  B='1' else
    '1' when C='1' and B='1' else
    '1' when C='1' and A='1' else
    '0';


end Behavioral;
