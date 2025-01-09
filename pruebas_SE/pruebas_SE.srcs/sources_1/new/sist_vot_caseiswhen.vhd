----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2025 19:03:43
-- Design Name: 
-- Module Name: sist_vot_caseiswhen - Behavioral
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

entity sist_vot_caseiswhen is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           Z : out STD_LOGIC);
end sist_vot_caseiswhen;

architecture Behavioral of sist_vot_caseiswhen is
--z=ba+ca+cb
signal CBA : std_logic_vector (3 downto 0);
begin
CBA(2)<=C;
CBA(1)<=B;
CBA(0)<=A;
    process (CBA) begin
        case CBA is
            when "011" =>
                Z<='1';
            when "101" =>
                Z<='1';
            when "110" =>
                Z<='1';
            when others =>
                Z<='0';
        end case;
    end process;


end Behavioral;
