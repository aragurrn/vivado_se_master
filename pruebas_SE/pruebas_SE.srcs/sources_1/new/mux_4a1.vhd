----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2025 19:27:14
-- Design Name: 
-- Module Name: mux_4a1 - Behavioral
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

entity mux_4a1 is
    Port ( E0 : in STD_LOGIC;
           E1 : in STD_LOGIC;
           E2 : in STD_LOGIC;
           E3 : in STD_LOGIC;
           S : in std_logic_vector (1 downto 0);
           Z : out STD_LOGIC);
end mux_4a1;

architecture Behavioral of mux_4a1 is

begin
with S select
Z<= E0 when "00",
    E1 when "01",
    E2 when "10",
    E3 when "11";

end Behavioral;
