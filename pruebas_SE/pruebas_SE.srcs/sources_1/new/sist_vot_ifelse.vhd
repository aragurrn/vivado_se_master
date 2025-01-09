----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2025 18:57:19
-- Design Name: 
-- Module Name: sist_vot_ifelse - Behavioral
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

entity sist_vot_ifelse is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           Z : out STD_LOGIC);
end sist_vot_ifelse;

architecture Behavioral of sist_vot_ifelse is
--Z=BA+CA+CB
begin
    process (A, B, C) begin
        if A='1' and B='1' then
            Z<='1';
        elsif A='1' and C='1' then
            Z<='1';
        elsif B='1' and C='1' then 
            Z<='1';
        else
            Z<='0';
        end if;
    end process;

end Behavioral;
