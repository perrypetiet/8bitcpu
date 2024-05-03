-- Testbench for registers
library IEEE;
use IEEE.std_logic_1164.all;
 
entity microcountertest is
-- empty
end microcountertest; 

architecture tb of microcountertest is

component microcounter is
port(
    clk_cnt:      in std_logic;
    clr_global:   in std_logic;
    output:       out std_logic_vector(3 downto 0));
end component;

signal clock:        std_logic := '0';
signal clear_global: std_logic := '0';
signal countout:     std_logic_vector(3 downto 0);


begin


	 -- Connect two registers together
	 DUT: microcounter port map(clock, clear_global, countout);
    
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
	 clear_global <= '1';
	 wait for 1 ns;
	 clear_global <= '0';
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
	 wait for 1 ns;
	 clock <= '0';
	 
		

	 
	 wait;
    end process;	 
    
    --assert(q_out='0') report "Fail 0/0" severity error;
    --assert false report "Test done." severity note;
   
end tb;