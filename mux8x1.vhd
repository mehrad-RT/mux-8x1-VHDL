----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:16:35 05/29/2023 
-- Design Name: 
-- Module Name:    mux8x1 - Behavioral 
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

entity mux8x1 is
generic(n:integer:=8);
    Port ( a0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           a1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
			  a2 : in  STD_LOGIC_VECTOR (n-1 downto 0);
			a3 : in  STD_LOGIC_VECTOR (n-1 downto 0);			  
			a4 : in  STD_LOGIC_VECTOR (n-1 downto 0);
			a5 : in  STD_LOGIC_VECTOR (n-1 downto 0);
			a6 : in  STD_LOGIC_VECTOR (n-1 downto 0);
			a7 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           s2 : in  STD_LOGIC;
           Y : OUT  STD_LOGIC_VECTOR (n-1 downto 0));
end mux8x1;

architecture Behavioral of mux8x1 is
component mux4x1 is
generic(n:integer:=8);
    Port ( i0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           i1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           i2 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           i3 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (n-1 downto 0));
end component;
component mux8bit2x1 is
generic(n:integer:=8);
    Port ( i0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           i1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           s : in  STD_LOGIC;
           y : out  STD_LOGIC_vector (n-1 downto 0) );
end component;	
signal m0,m1 :std_logic_vector (n-1 downto 0);		  
begin

muxa: mux4x1 generic map (n)
port map (a0,a1,a2,a3,s0,s1,m0);

muxb: mux4x1 generic map (n)
port map (a4,a5,a6,a7,s0,s1,m1);

muxc: mux8bit2x1 generic map (n)
port map (m0,m1,s2,Y);

end Behavioral;

