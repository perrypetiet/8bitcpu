library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pc is
port(
    clk:     in std_logic;
    ld:      in std_logic;
    clr:     in std_logic;
    oute:    in std_logic;
    count:   in std_logic;
    val_out: out std_logic_vector(7 downto 0);
    bus_out: out std_logic_vector(7 downto 0);
    val_in:  in std_logic_vector(7 downto 0));
end pc;

architecture description of pc is

signal pc_val: std_logic_vector(7 downto 0) := "00000000";

begin

    process (clk, clr) is
    begin
        -- On rising edge, increment count or load from bus.
        if rising_edge(clk) then
            if count = '1' then
   	  	       pc_val <= std_logic_vector( unsigned(pc_val) + 1 );
            end if;
            if ld = '1' then
   	          pc_val <= val_in;
            end if;
        end if;
        -- On clear, set pc to 0.
        if clr = '1' then
  	         pc_val <= "00000000";
        end if;

    end process;
    -- Set the pc output value to the pc
    val_out <= pc_val;
	 -- Set the bus output to the value when output is enabled.
    bus_out <= pc_val when (oute = '1') else "ZZZZZZZZ";
  
end description;