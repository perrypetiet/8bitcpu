library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity progmem is
port(
    clk:     in std_logic;
    clr:     in std_logic;
    memout:  in std_logic;
    memwrite:in std_logic;
	 addrload:in std_logic;
	 addrin:  in std_logic_vector(7 downto 0);
	 memin:   in std_logic_vector(7 downto 0);
    bus_out: out std_logic_vector(7 downto 0));

end progmem;

architecture description of progmem is

component ramip is
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		addressstall_a		: IN STD_LOGIC  := '0';
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
end component;

signal output_sig:   std_logic_vector(7 downto 0);
signal address_load: std_logic;
signal address_stall: std_logic;

begin

    memory: ramip port map(addrin, address_stall, address_load, memin, memwrite, output_sig);
	 
	 address_load <= (addrload or memwrite) and clk;
	 address_stall <= memwrite;
	 bus_out <= output_sig when (memout = '1') else "ZZZZZZZZ";

    --process (clk) is
    --begin
        -- On rising edge, increment count or load from bus.
        --if rising_edge(clk) then
 
        --end if;

    --end process;
	 
	 
	 
    -- Set the pc output value to the pc
    --val_out <= pc_val;
	 -- Set the bus output to the value when output is enabled.
    --bus_out <= pc_val when (oute = '1') else "ZZZZZZZZ";
  
end description;