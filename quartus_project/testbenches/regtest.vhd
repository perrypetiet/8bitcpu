-- Testbench for registers
library IEEE;
use IEEE.std_logic_1164.all;
 
entity regtest is
-- empty
end regtest; 

architecture tb of regtest is

component reg is
port(
  ld: in std_logic;
  clk: in std_logic;
  clr: in std_logic;
  oute: in std_logic;
  d_out: out std_logic_vector(7 downto 0);
  d_in: in std_logic_vector(7 downto 0));
end component;

signal load: std_logic;
signal clock: std_logic;
signal clear: std_logic;
signal output: std_logic;
signal regout: std_logic_vector(7 downto 0);
signal regin: std_logic_vector(7 downto 0);

begin

	-- Connect DUT
	DUT: reg port map(load, clock, clear, output, regout, regin);

	process
	begin
	-- Set everything to zero.
	clock <= '0';
   load <= '0';
	clear <= '0';
   output <= '1';
  	regin <= "00000001";
	wait for 1 ns;
	-- Set the load to 1 to indicate we want to load register on next clock
	load <= '1';
	wait for 1 ns;
	-- Rising edge clock.
	clock <= '1';
	wait for 1 ns;
	-- relase load and let's show the output
   load <= '0';
	output <= '1';
   wait for 1 ns;
	clock <= '0';
	wait for 1 ns;
	-- See if clearing works
	clear <= '1';
	wait for 1 ns;
	load <= '1';
	clear <= '0';
	wait for 1 ns;
	clock <= '1';
	wait for 1 ns;
	clock <= '0';
	load <= '0';
	wait for 1 ns;
	output <= '0';
	wait for 1 ns;

    
    --assert(q_out='0') report "Fail 0/0" severity error;
    --assert false report "Test done." severity note;
   wait;
   end process;
end tb;