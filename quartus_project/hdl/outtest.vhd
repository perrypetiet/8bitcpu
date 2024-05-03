library IEEE;
use IEEE.std_logic_1164.all;

entity outtest is
port(

  clk:     in std_logic;

  d_out:   out std_logic_vector(3 downto 0));

end outtest;

architecture description of outtest is

signal regval: std_logic_vector(3 downto 0) := "0000";

begin
  
  process (clk) is
  begin
  	 if rising_edge(clk) then
      	regval <= "1100";  
    end if;

  end process;
   	
  d_out <= regval;
end description;