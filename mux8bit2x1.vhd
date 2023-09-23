----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:07:03 04/07/2023 
-- Design Name: 
-- Module Name:    mux8bit2x1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux8bit2x1 is
generic(n:integer:=8);
    Port ( i0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           i1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           s : in  STD_LOGIC;
           y : out  STD_LOGIC_vector (n-1 downto 0) );
end mux8bit2x1;

architecture Behavioral of mux8bit2x1 is

begin
process (s,i0,i1)
begin
if s='1' then
	y <= i1;
else
	y <= i0;
end if;
end process;


end Behavioral;

