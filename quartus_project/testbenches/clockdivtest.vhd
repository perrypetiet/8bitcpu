-- Testbench for alu
library IEEE;
use IEEE.std_logic_1164.all;
 
entity clockdivtest is
-- empty
end clockdivtest; 

architecture tb of clockdivtest is

component clockdiv is
port(
  clk50in:      in std_logic;   
  clkdivout:    out std_logic);
end component;

signal clock_in:  std_logic := '0';
signal clock_out: std_logic;


begin

	DUT: clockdiv port map(clock_in, clock_out);
 
	process
	begin
	
	loop
	   wait for 1 ns;
	   clock_in <= '0';
	   wait for 1 ns;
	   clock_in <= '1';
	end loop; 
   end process;
   
end tb;