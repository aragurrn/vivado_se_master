----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2025 19:09:15
-- Design Name: 
-- Module Name: flipflop_D - Behavioral
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

entity flipflop_D is
    Port ( D : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC);
end flipflop_D;

architecture Behavioral of flipflop_D is

begin
process (Clk) begin
    if rising_edge(Clk) then
        Q<=D;
    end if;
end process;


end Behavioral;
