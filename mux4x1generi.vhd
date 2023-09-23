----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:51:22 05/23/2023 
-- Design Name: 
-- Module Name:    mux4x1generi - Behavioral 
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
entity mux4x1 is
generic(n:integer:=81);
    Port ( i0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           i1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           i2 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           i3 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           y : out  STD_LOGIC_VECTOR (n-1 downto 0));
end mux4x1;

architecture Behavioral of mux4x1 is
component mux8bit2x1 is
generic(n:integer:=8);
    Port ( i0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           i1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           s : in  STD_LOGIC;
           y : out  STD_LOGIC_vector (n-1 downto 0) );
end component;
signal mid0,mid1 :std_logic_vector(n-1 downto 0);
begin

muxa: mux8bit2x1 generic map (n)
port map (i0,i1,s0,mid0);
muxb: mux8bit2x1 generic map (n)
 port map (i2,i3,s0,mid1);
muxc: mux8bit2x1 generic map (n)
 port map (mid0,mid1,s1,y);


end Behavioral;