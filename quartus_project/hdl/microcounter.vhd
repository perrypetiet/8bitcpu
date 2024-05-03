library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity microcounter is
port(
    clk_cnt:      in std_logic;
    clr_global:   in std_logic;
    output:       out std_logic_vector(3 downto 0));
end microcounter;

architecture description of microcounter is

signal counter_val:  std_logic_vector(3 downto 0) := "0000";

begin

    output <= counter_val;

    process (clk_cnt, clr_global) is
    begin
        -- On rising edge, increment count or load from bus.
        if rising_edge(clk_cnt) then
			 counter_val <= std_logic_vector( unsigned(counter_val) + 1 );
        end if;
	
		  if clr_global = '1' then
		    counter_val <= "0000";
		  end if;
    end process;
	 
    
	 
  
end description;