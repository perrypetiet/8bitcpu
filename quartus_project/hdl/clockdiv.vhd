library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity clockdiv is
port(
  clk50in:      in std_logic;   
  clkdivout:    out std_logic);
end clockdiv;

architecture description of clockdiv is

signal ctval: std_logic_vector(20 downto 0) := "000000000000000000000";

begin
  
  process (clk50in) is
  begin
    if rising_edge(clk50in) then
	   ctval <= std_logic_vector( unsigned(ctval) + 1 );
	 end if;
  end process;
   	
  clkdivout <= ctval(18);
  
end description;