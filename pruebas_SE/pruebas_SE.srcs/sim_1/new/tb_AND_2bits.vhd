----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.01.2025 22:13:13
-- Design Name: 
-- Module Name: tb_AND_2bits - Behavioral
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

entity tb_AND_2bits is
--  Port ( );
end tb_AND_2bits;

architecture Behavioral of tb_AND_2bits is
component AND_2bits is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           O : out STD_LOGIC);
end component;

signal A_s : std_logic;
signal B_s : std_logic;

signal O_s : std_logic;

begin

DUT : AND_2bits port map (A=>A_s, B=>B_s, O=>O_s);

process begin

A_s<='0';
B_s<='0';
wait for 10 ns;
A_s<='0';
B_s<='1';
wait for 10 ns;
A_s<='1';
B_s<='0';
wait for 10 ns;
A_s<='1';
B_s<='1';
wait for 10 ns;

end process;

end Behavioral;
