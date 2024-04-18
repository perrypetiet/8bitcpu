-- Testbench for registers
library IEEE;
use IEEE.std_logic_1164.all;
 
entity multipleregtest is
-- empty
end multipleregtest; 

architecture tb of multipleregtest is

component reg is
port(
  ld: in std_logic;
  clk: in std_logic;
  clr: in std_logic;
  oute: in std_logic;
  d_out: out std_logic_vector(7 downto 0);
  bus_out: out std_logic_vector(7 downto 0);
  d_in: in std_logic_vector(7 downto 0));
end component;

signal clock:    std_logic := '0';
signal reset:    std_logic := '0';
signal loadreg1: std_logic := '0';
signal loadreg2: std_logic := '0';
signal reg1out:  std_logic := '0';
signal reg2out:  std_logic := '0';
signal tBus:     std_logic_vector(7 downto 0);
signal reg1val:  std_logic_vector(7 downto 0);
signal reg2val:  std_logic_vector(7 downto 0);
signal reg1in:   std_logic_vector(7 downto 0) := "01010101";

begin

	-- Connect two registers together
	reg1: reg port map(loadreg1, clock, reset, reg1out, reg1val, tBus, reg1in);
    reg2: reg port map(loadreg2, clock, reset, reg2out, reg2val, tBus, tBus);

	process
	begin
	wait for 1 ns;
    loadreg1 <= '1';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    loadreg1 <= '0';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    reset <= '1';
    reg1out  <= '1';
    loadreg2 <= '1';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    reg1out  <= '0';
    loadreg2 <= '0';
    wait for 1 ns;
    clock <= '0';
    reset <= '1';
    wait for 1 ns;
    reset <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    wait for 1 ns;
    clock <= '0';

    
    --assert(q_out='0') report "Fail 0/0" severity error;
    --assert false report "Test done." severity note;
   wait;
   end process;
end tb;