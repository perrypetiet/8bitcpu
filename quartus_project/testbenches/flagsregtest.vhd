-- Testbench for flagsreg
library IEEE;
use IEEE.std_logic_1164.all;
 
entity flagsregtest is
-- empty
end flagsregtest; 

architecture tb of flagsregtest is

component flagsreg is
port(
	clock:  in std_logic;
	clr:    in std_logic;
	cfin:   in std_logic;
	zfin:   in std_logic;
	cfout:  out std_logic;
	zfout:  out std_logic);
end component;

signal clk:   std_logic := '0';
signal clear: std_logic := '0';
signal cfin:  std_logic := '0';
signal zfin:  std_logic := '0';
signal carryout: std_logic;
signal zeroout: std_logic;

begin

	-- Connect two registers together
	DUT: flagsreg port map(clk, clear, cfin, zfin, carryout, zeroout);
 
	process
	begin
	clk <= '0';
	wait for 1 ns;
	clk <= '1';
	wait for 1 ns;
	clk <= '0';
	cfin <= '1';
	wait for 1 ns;
	clk <= '1';
	wait for 1 ns;
	clk <= '0';
	cfin <= '0';
	zfin <= '1';
	wait for 1 ns;
	clk <= '1';
	wait for 1 ns;
	clear <= '1';

	wait;
	end process;	 
    
    --assert(q_out='0') report "Fail 0/0" severity error;
    --assert false report "Test done." severity note;
   
end tb;