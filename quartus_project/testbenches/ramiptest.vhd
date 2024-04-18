-- Testbench for registers
library IEEE;
use IEEE.std_logic_1164.all;
 
entity ramiptest is
-- empty
end ramiptest; 

architecture tb of ramiptest is

component ramip is
port(
		address	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC;
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wren		: IN STD_LOGIC;
		q			: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
end component;

signal address: std_logic_vector(7 downto 0) := "00000000";
signal clock  : std_logic := '0';
signal din    : std_logic_vector(7 downto 0) := "00000000";
signal we     : std_logic := '0';
signal dout   : std_logic_vector(7 downto 0);


begin

	 -- Connect two registers together
	 ram: ramip port map(address, clock, din, we, dout);
    
    process
    begin
    
	 wait for 1 ns;

	 wait for 1 ns;
	 clock <= '1';
	 wait for 1 ns;

	 wait for 1 ns;

	 clock <= '0';
	 wait for 1 ns;

	 wait for 1 ns;
	 clock <= '1';
	 
	 wait;
    end process;	 
    
    --assert(q_out='0') report "Fail 0/0" severity error;
    --assert false report "Test done." severity note;
   
end tb;