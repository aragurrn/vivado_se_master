----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2025 18:12:34
-- Design Name: 
-- Module Name: prueba_process - Behavioral
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

entity prueba_process is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           X : out STD_LOGIC;
           Y : out STD_LOGIC;
           Z : out STD_LOGIC);
end prueba_process;

architecture Behavioral of prueba_process is

begin

    process begin
        wait for 20 ns;
        X<=A;
    end process;
    
    process (A, B, C) begin
        Y<=A and B and C;
    end process;
    
    process begin
        wait until A='0';
        Z<=B or C;
    end process;

end Behavioral;
