-- Testbench for alu
library IEEE;
use IEEE.std_logic_1164.all;
 
entity alutest is
-- empty
end alutest; 

architecture tb of alutest is

component alu is
port(
    aluo:    in std_logic;
    alus:    in std_logic;
    cf:      out std_logic;
    zf:      out std_logic;
    ain:     in std_logic_vector(7 downto 0);
    bin:     in std_logic_vector(7 downto 0);
    val_out: out std_logic_vector(7 downto 0);
    bus_out: out std_logic_vector(7 downto 0));
end component;

signal aluoutput: std_logic := '0';
signal alusub:    std_logic := '0';
signal cf:        std_logic;
signal zf:        std_logic;
signal ain:       std_logic_vector(7 downto 0) := "00000000";
signal bin:       std_logic_vector(7 downto 0) := "00000000";
signal aluval:    std_logic_vector(7 downto 0);
signal alubusout: std_logic_vector(7 downto 0);


begin

	DUT: alu port map(aluoutput, alusub, cf, zf, ain, bin, aluval, alubusout);
 
	process
	begin
	
	wait for 1 ns;
	ain <= "11111110";
	bin <= "00000010";
	wait for 1 ns;
	aluoutput <= '1';
	wait for 1 ns;
	alusub <= '1';
	wait;
	end process;	 
   
   
end tb;