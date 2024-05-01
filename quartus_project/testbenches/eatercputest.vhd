-- Testbench for registers
library IEEE;
use IEEE.std_logic_1164.all;
 
entity eatercputest is
-- empty
end eatercputest; 

architecture tb of eatercputest is

component eatercpu is
port(
	clock_in:   in std_logic;
	clear_in:   in std_logic;
	cpu_out:    out std_logic_vector(7 downto 0));
end component;

-- Inverted clock and reset signals
signal clock    : std_logic := '0';
signal reset    : std_logic := '1';
signal output   : std_logic_vector(7 downto 0);

begin

	 -- Connect two registers together
	 DUT: eatercpu port map(clock, reset, output);
    
    process
    begin
	 
	 loop
	   wait for 1 ns;
	   clock <= '0';
	   wait for 1 ns;
	   clock <= '1';
	 end loop;

	 wait;
    end process;	 
end tb;