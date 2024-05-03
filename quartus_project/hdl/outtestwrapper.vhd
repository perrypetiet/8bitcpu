library IEEE;
use IEEE.std_logic_1164.all;

entity outtestwrapper is
port(

  clk:     in std_logic;

  d_out:   out std_logic_vector(7 downto 0));

end outtestwrapper;

architecture description of outtestwrapper is

component outtest is
port(

  clk:     in std_logic;

  d_out:   out std_logic_vector(3 downto 0));
end component;

begin

dut : outtest port map(clk, d_out(7 downto 4));
dutt : outtest port map(clk, d_out(3 downto 0));
   	
end description;