-- Testbench for registers
library IEEE;
use IEEE.std_logic_1164.all;
 
entity modulestest is
-- empty
end modulestest; 

architecture tb of modulestest is

-- ALL COMPONENTS INIT --

component reg is
port(
    ld:      in std_logic;
    clk:     in std_logic;
    clr:     in std_logic;
    oute:    in std_logic;
    d_out:   out std_logic_vector(7 downto 0);
    bus_out: out std_logic_vector(7 downto 0);
    d_in:    in std_logic_vector(7 downto 0));
end component;

component pc is
port(
    clk:     in std_logic;
    ld:      in std_logic;
    clr:     in std_logic;
    oute:    in std_logic;
    count:   in std_logic;
    val_out: out std_logic_vector(7 downto 0);
    bus_out: out std_logic_vector(7 downto 0);
    val_in:  in std_logic_vector(7 downto 0));
end component;

component progmem is
port(
    clk:     in std_logic;
    clr:     in std_logic;
    memout:  in std_logic;
    memwrite:in std_logic;
	 addrload:in std_logic;
	 addrin:  in std_logic_vector(7 downto 0);
	 memin:   in std_logic_vector(7 downto 0);
    bus_out: out std_logic_vector(7 downto 0));
end component;









signal clock    : std_logic := '0';
signal clear    : std_logic := '0';
signal oea      : std_logic := '0';
signal loada    : std_logic := '0';
signal oeb      : std_logic := '0';
signal loadb    : std_logic := '0';
signal aluo     : std_logic := '0';
signal alus     : std_logic := '0';
signal pcld     : std_logic := '0';
signal pco      : std_logic := '0';
signal pcc      : std_logic := '0';
signal mald     : std_logic := '0';
signal ramo     : std_logic := '0';
signal ramw     : std_logic := '0';
signal iro      : std_logic := '0';
signal irld     : std_logic := '0';
signal mcc      : std_logic := '0';
--signal clear    : std_logic := '0';

signal databus  : std_logic_vector(7 downto 0);



begin

	 -- CONNECT COMPONENTS TO BUS AND CONTROL SIGNALS
	 ram: progmem port map(clock, reset, ramo, ramw, mald, databus, databus, databus);
    
    process
    begin

	 wait;
    end process;	 
    
    --assert(q_out='0') report "Fail 0/0" severity error;
    --assert false report "Test done." severity note;
   
end tb;