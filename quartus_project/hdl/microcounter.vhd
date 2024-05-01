library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity microcounter is
port(
    clk:    in std_logic;
    clr1:   in std_logic;
	 clr2:   in std_logic;
    output: out std_logic_vector(3 downto 0));

end microcounter;

architecture description of microcounter is

signal counter_val:   std_logic_vector(3 downto 0) := "0000";

begin

    output <= counter_val;

    process (clk,clr1,clr2) is
    begin
        -- On rising edge, increment count or load from bus.
        if rising_edge(clk) then
            counter_val <= std_logic_vector( unsigned(counter_val) + 1 );
        end if;
		  if clr1 = '1' then
		      counter_val <= "0000";
		  end if;
		 if clr2 = '1' then
		      counter_val <= "0000";
		  end if;

    end process;
	 
    
	 
  
end description;