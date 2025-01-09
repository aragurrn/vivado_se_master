----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2025 19:44:44
-- Design Name: 
-- Module Name: decoder_2a4 - Behavioral
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

entity decoder_2a4 is
    Port ( E : in STD_LOGIC_VECTOR (1 downto 0);
           S0 : out STD_LOGIC;
           S1 : out STD_LOGIC;
           S2 : out STD_LOGIC;
           S3 : out STD_LOGIC);
end decoder_2a4;

architecture Behavioral of decoder_2a4 is

begin

with E select
    S0<= '1' when "00",
        '0' when others;
with E select
    S1<= '1' when "01",
        '0' when others;
with E select
    S2<= '1' when "10",
        '0' when others;
with E select
    S3<= '1' when "11",
        '0' when others;


end Behavioral;
