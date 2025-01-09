----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2025 19:33:40
-- Design Name: 
-- Module Name: coder_4a2 - Behavioral
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

entity coder_4a2 is
    Port ( E0 : in STD_LOGIC;
           E1 : in STD_LOGIC;
           E2 : in STD_LOGIC;
           E3 : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (1 downto 0);
           G : out STD_LOGIC);--salida group strobe, no es necesaria pero por si acaso
           --que cuesta más escribir que borrar
end coder_4a2;

architecture Behavioral of coder_4a2 is

begin
process (E0, E1, E2, E3) begin

    if E0='1' then
        S<="00";
        G<='0';
    elsif E1='1' then
        S<="01";
        G<='0';
    elsif E2='1' then
        S<="10";
        G<='0';
    elsif E3='1' then
        S<="11";
        G<='0';
    else 
        G<='1';
    end if;

end process;


end Behavioral;
