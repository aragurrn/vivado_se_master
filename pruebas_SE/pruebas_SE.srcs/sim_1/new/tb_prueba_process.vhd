----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.01.2025 18:16:51
-- Design Name: 
-- Module Name: tb_prueba_process - Behavioral
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

entity tb_prueba_process is
--  Port ( );
end tb_prueba_process;

architecture Behavioral of tb_prueba_process is

component prueba_process is
    port (A, B, C : in std_logic;
     X, Y, Z : out std_logic);
end component;

signal as, bs, cs, xs, ys, zs : std_logic;

begin

DUT : prueba_process port map (A=>as, B=>bs, C=>cs, X=>xs, Y=>ys, Z=>zs);

process begin

    as<='1';
    bs<='1';
    cs<='1';
    wait for 5 ns;
    as<='0';
    bs<='0';
    cs<='0';
    wait for 5 ns;
    as<='1';
    bs<='1';
    cs<='1';
    wait for 5 ns;
    as<='0';
    bs<='1';
    cs<='1';
    wait for 5 ns;
    as<='0';
    bs<='0';
    cs<='0';
    wait for 5 ns;

end process;

end Behavioral;
