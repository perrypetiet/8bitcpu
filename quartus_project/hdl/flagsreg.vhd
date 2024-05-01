library IEEE;
use IEEE.std_logic_1164.all;

entity flagsreg is
port(
	clk:  in std_logic;
	clr:    in std_logic;
	load:   in std_logic;
	cfin:   in std_logic;
	zfin:   in std_logic;
	cfout:  out std_logic;
	zfout:  out std_logic);
end flagsreg;

architecture description of flagsreg is

signal carry: std_logic := '0';
signal zero:  std_logic := '0';

begin
  
  process (clk, clr) is
  begin
    if rising_edge(clk) then
	   if load = '1' then
		  carry <= cfin;
		  zero <= zfin;
		end if;
    end if;
    if clr = '1' then
		carry <= '0';
		zero <= '0';
    end if;
  end process;
   	
  cfout <= carry;
  zfout <= zero;
  
end description;