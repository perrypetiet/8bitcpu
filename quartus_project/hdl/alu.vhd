library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity alu is
port(
    aluo:    in std_logic;
    alus:    in std_logic;
    cf:      out std_logic;
    zf:      out std_logic;
    ain:     in std_logic_vector(7 downto 0);
    bin:     in std_logic_vector(7 downto 0);
    val_out: out std_logic_vector(7 downto 0);
    bus_out: out std_logic_vector(7 downto 0));
end alu;

architecture description of alu is

signal result: std_logic_vector(7 downto 0) := "00000000";
signal temp:   std_logic_vector(8 downto 0) := "000000000";

begin

	process (ain, bin, alus) is
	begin
		if alus = '1' then
			temp <= ('0' & ain) - ('0' & bin);
		else
			temp <= ('0' & ain) + ('0' & bin);
		end if;
		
	
	end process;
   
	zf <= '1' when (temp = "000000000") else '0';
	cf <= '1' when (temp(8) = '1') else '0';
	
	val_out <= temp(7 downto 0);
	-- Set the bus output to the value when output is enabled.
	bus_out <= temp(7 downto 0) when (aluo = '1') else "ZZZZZZZZ";
  
end description;