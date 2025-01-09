----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.01.2025 13:17:47
-- Design Name: 
-- Module Name: registro_desplazador_4bits - Behavioral
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

entity registro_desplazador_4bits is
    Port ( In_s : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Out_s : out STD_LOGIC);
end registro_desplazador_4bits;

architecture Behavioral of registro_desplazador_4bits is
signal shift_register : std_logic_vector (3 downto 0);
begin
process (Clk) begin
    if rising_edge(Clk) then
        for i in 3 downto 1 loop
            shift_register(i)<=shift_register(i-1);
         end loop;
         shift_register(0)<=In_s;
         Out_s<=shift_register(3);
    end if;
end process;
end Behavioral;
