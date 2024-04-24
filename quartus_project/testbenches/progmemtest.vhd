-- Testbench for registers
library IEEE;
use IEEE.std_logic_1164.all;
 
entity progmemtest is
-- empty
end progmemtest; 

architecture tb of progmemtest is

component progmem is
port(
    clk:     in std_logic;
    clr:     in std_logic;
    memout:  in std_logic;
    memwrite:in std_logic;
	 addrload:in std_logic;
	 addrin:  in std_logic_vector(7 downto 0);
	 memin:   in std_logic_vector(7 downto 0);
    bus_out: out std_logic_vector(7 downto 0));
end component;

signal clock    : std_logic := '0';
signal reset    : std_logic := '0';
signal ramo     : std_logic := '0';
signal ramw     : std_logic := '0';
signal mald     : std_logic := '0';
signal businaddr: std_logic_vector(7 downto 0) := "00000000";
signal businmem : std_logic_vector(7 downto 0) := "00000000";
signal busout   : std_logic_vector(7 downto 0) := "00000000";


begin

	 -- Connect two registers together
	 DUT: progmem port map(clock, reset, ramo, ramw, mald, businaddr, businmem, busout);
    
    process
    begin
	 clock <= '1';
	 wait for 1 ns;

	 wait for 1 ns;
	 ramo <= '1';
	 clock <= '0';
	 wait for 1 ns;
	 businaddr <="00000001";
	 mald <= '1';
	 wait for 1 ns;
	 clock <= '1';
	 wait for 1 ns;
	 mald <= '0';
	 wait for 1 ns;
	 clock <= '0';
	 wait for 1 ns;
	 businaddr <="00000000";
	 mald <= '1';
	 wait for 1 ns;
	 clock <= '1';
	 
	 wait;
    end process;	 
    
    --assert(q_out='0') report "Fail 0/0" severity error;
    --assert false report "Test done." severity note;
   
end tb;