-- Testbench for registers
library IEEE;
use IEEE.std_logic_1164.all;
 
entity microcountertest is
-- empty
end microcountertest; 

architecture tb of microcountertest is

component microcounter is
port(
    clk:    in std_logic;
    clr1:   in std_logic;
	 clr2:   in std_logic;
    output: out std_logic_vector(3 downto 0));
end component;

signal clock:    std_logic := '0';
signal clear1:   std_logic := '0';
signal clear2:   std_logic := '0';
signal countout: std_logic_vector(3 downto 0);


begin

	 -- Connect two registers together
	 DUT: microcounter port map(clock, clear1, clear2, countout);
    
    process
    begin
	 wait for 1 ns;
	 clock <= '0';
	 wait for 1 ns;
	 clock <= '1';
	 wait for 1 ns;
	 clock <= '0';
	 wait for 1 ns;
	 clock <= '1';
	 wait for 1 ns;
	 clock <= '0';
	 wait for 1 ns;
	 clock <= '1';
	 wait for 1 ns;
	 clock <= '0';
	 wait for 1 ns;
	 clock <= '1';
	 wait for 1 ns;
	 clock <= '0';
	 wait for 1 ns;
	 clock <= '1';
	 wait for 1 ns;
	 clock <= '0';
	 wait for 1 ns;
	 clock <= '1';
	 wait for 1 ns;
	 clock <= '0';
	 wait for 1 ns;
	 clock <= '1';
	 wait for 1 ns;
	 clock <= '0';
	 wait for 1 ns;
	 clock <= '1';
	 wait for 1 ns;
	 clock <= '0';
	 wait for 1 ns;
	 clock <= '1';
	 wait for 1 ns;
	 clock <= '0';
	 wait for 1 ns;
	 clock <= '1';
	 wait for 1 ns;
	 clock <= '0';
	 wait for 1 ns;
	 clock <= '1';
	 wait for 1 ns;
	 clock <= '0';
	 wait for 1 ns;
	 clock <= '1';
	 wait for 1 ns;
	 clock <= '0';
	 wait for 1 ns;
	 clock <= '1';
	 wait for 1 ns;
	 clock <= '0';
	 wait for 1 ns;
	 clock <= '1';
	 wait for 1 ns;
	 clock <= '0';
	 wait for 1 ns;
	 clock <= '1';
	 wait for 1 ns;
	 clock <= '0';
	 wait for 1 ns;
	 clock <= '1';
	 wait for 1 ns;
	 clock <= '0';
	 wait for 1 ns;
	 clock <= '1';
	 wait for 1 ns;
	 clock <= '0';
	 wait for 1 ns;
	 clock <= '1';
	 clear1 <= '1';
	 wait for 1 ns;
	 clear1 <= '0';
	 wait for 1 ns;
	 clock <= '0';
	 wait for 1 ns;
	 clock <= '1';

	 wait for 1 ns;
	 clear2 <= '1';
	 clock <= '0';
	 wait for 1 ns;
	 clock <= '1';
	 
	 wait;
    end process;	 
    
    --assert(q_out='0') report "Fail 0/0" severity error;
    --assert false report "Test done." severity note;
   
end tb;