-- Testbench for registers
library IEEE;
use IEEE.std_logic_1164.all;
 
entity pctest is
-- empty
end pctest; 

architecture tb of pctest is

component pc is
port(
    clk:     in std_logic;
    ld:      in std_logic;
    clr:     in std_logic;
    oute:    in std_logic;
    count:   in std_logic;
    val_out: out std_logic_vector(7 downto 0);
    bus_out: out std_logic_vector(7 downto 0);
    val_in:  in std_logic_vector(7 downto 0));
end component;

signal clock:   std_logic := '0';
signal loadpc:  std_logic := '0';
signal reset:   std_logic := '0';
signal pcout:   std_logic := '0';
signal count:   std_logic := '0';
signal tBus:    std_logic_vector(7 downto 0);
signal pcVal:   std_logic_vector(7 downto 0);
signal pcIn:    std_logic_vector(7 downto 0);

begin

	 -- Connect two registers together
	 program_count: pc port map(clock, loadpc, reset, pcout, count, pcVal, tBus, pcIn);
    
    process
    begin
    pcIn <= "01010101";
	 wait for 1 ns;
	 count <= '1';
	 wait for 1 ns;
	 clock <= '1';
	 wait for 1 ns;
	 count <= '0';
	 reset <= '1';
	 wait for 1 ns;
	 reset <= '0';
	 clock <= '0';
	 wait for 1 ns;
	 pcout <= '1';
	 loadpc <= '1';
	 wait for 1 ns;
	 clock <= '1';
	 
	 wait;
    end process;	 
    
    --assert(q_out='0') report "Fail 0/0" severity error;
    --assert false report "Test done." severity note;
   
end tb;