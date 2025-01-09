----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2025 18:05:06
-- Design Name: 
-- Module Name: sist_votos - Behavioral
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

entity sist_votos is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           Z : out STD_LOGIC);
end sist_votos;

architecture Behavioral of sist_votos is

--z=ba+ca+cb
signal BA : std_logic;
signal CA : std_logic;
signal CB : std_logic;

begin

BA<=B and A;
CA<=C and A;
CB<=C and B;

Z<=BA or CA or CB;

end Behavioral;
