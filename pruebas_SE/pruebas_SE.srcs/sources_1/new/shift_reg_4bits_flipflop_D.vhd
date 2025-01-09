----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2025 19:14:11
-- Design Name: 
-- Module Name: shift_reg_4bits_flipflop_D - Behavioral
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

entity shift_reg_4bits_flipflop_D is
    Port ( In_s : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Out_s : out STD_LOGIC);
end shift_reg_4bits_flipflop_D;

architecture Behavioral of shift_reg_4bits_flipflop_D is

component flipflop_D is
    Port ( D : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC);
end component;

signal Q_interno : std_logic_vector (3 downto 0);

begin

ff0: flipflop_D port map (D=>In_s, Clk=>Clk, Q=>Q_interno(0));

gen1: for i in 1 to 3 generate

    ff1: flipflop_D port map (D=>Q_interno(i-1), Clk=>Clk, Q=>Q_interno(i));

end generate;

Out_s<=Q_interno(3);

end Behavioral;
