library IEEE;
use IEEE.std_logic_1164.all;

entity reg is
port(
  ld:      in std_logic;
  clk:     in std_logic;
  clr:     in std_logic;
  oute:    in std_logic;
  d_out:   out std_logic_vector(7 downto 0);
  bus_out: out std_logic_vector(7 downto 0);
  d_in:    in std_logic_vector(7 downto 0));
end reg;

architecture description of reg is

signal regval: std_logic_vector(7 downto 0) := "00000000";

begin
  
  process (clk, ld, clr) is
  begin
  	if rising_edge(clk) then
   	  if ld = '0' then
      	regval <= d_in;
      end if;  
    end if;
    if clr = '1' then
      regval <= "00000000";
    end if;
  end process;
   	
  
  bus_out <= regval when (oute = '0') else "ZZZZZZZZ";
  d_out <= regval;
  
  
end description;