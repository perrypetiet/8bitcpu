library IEEE;

use IEEE.std_logic_1164.all;

entity eatercpu is
port(
	clock_in:   in std_logic;
	clear_in:   in std_logic;
	cpu_out:    out std_logic_vector(7 downto 0));
end eatercpu;

architecture description of eatercpu is

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

component flagsreg is
port(
  clock:  in std_logic;
  clr:    in std_logic;
  load:   in std_logic;
  cfin:   in std_logic;
  zfin:   in std_logic;
  cfout:  out std_logic;
  zfout:  out std_logic);
end component;

component microcounter is
port(
  clk:    in std_logic;
  clr1:   in std_logic;
  clr2:   in std_logic;
  output: out std_logic_vector(3 downto 0));
end component;


-- The buttons on the DE0 board are active low, this means
-- the clock input from the buttons is actually the inverted clock
-- and the regular clock needs to be inverted. This is also done
-- for the clear signal
signal clock:      std_logic := '0';
signal clock_inv:  std_logic := '1';
signal clear:      std_logic := '0';

-- Data bus
signal data_bus: std_logic_vector(7 downto 0) := "ZZZZZZZZ";
signal mar_in  : std_logic_vector(7 downto 0);

-- Control signals
signal fld      : std_logic := '0';
signal orld     : std_logic := '0';
signal oea      : std_logic := '0';
signal loada    : std_logic := '0';
signal oeb      : std_logic := '0';
signal loadb    : std_logic := '0';
signal aluout   : std_logic := '0';
signal alusub   : std_logic := '0';
signal pcld     : std_logic := '0';
signal pco      : std_logic := '0';
signal pcc      : std_logic := '0';
signal mald     : std_logic := '0';
signal ramo     : std_logic := '0';
signal ramw     : std_logic := '0';
signal iro      : std_logic := '0';
signal irld     : std_logic := '0';
signal mcc      : std_logic := '0';

-- alu inputs and outputs
signal zflag_in: std_logic;
signal cflag_in: std_logic;
signal alu_in1 : std_logic_vector(7 downto 0);
signal alu_in2 : std_logic_vector(7 downto 0);

-- Control logic inputs
signal zflag_out: std_logic;
signal cflag_out: std_logic;
signal mcout    : std_logic_vector(3 downto 0);
signal ir_out   : std_logic_vector(7 downto 0);
signal ir_logic_in: std_logic_vector(3 downto 0); 


begin

  program_counter     : pc port map(clock, pcld, clear, pco, pcc, open, data_bus, data_bus);
  memory              : progmem port map(clock, clear, ramo, ramw, mald, mar_in, data_bus, data_bus);
  instruction_register: reg port map(irld, clock, clear, iro, ir_out, data_bus, data_bus);
  output_register     : reg port map(orld, clock, clear, '0', cpu_out, open, data_bus);
  a_register          : reg port map(loada, clock, clear, oea, alu_in1, data_bus, data_bus);
  b_register          : reg port map(loadb, clock, clear, oeb, alu_in2, data_bus, data_bus);
  logic_unit          : alu port map(aluout, alusub, cflag_in, zflag_in, alu_in1, alu_in2, open, data_bus);
  flags_register      : flagsreg port map(clock, clear, fld, cflag_in, zflag_in, cflag_out, zflag_out);
  mc                  : microcounter port map(clock_inv, clear, mcc, mcout);
  
  
  -- clock signals
  clock_inv <= clock_in;
  clock     <= not clock_in;
  -- clear signal
  clear     <= not clear_in;
  -- Half of the data bus for the mar input. Only half the instruction register is used 
  -- for addressing. This way we can use a normal register as instruction register and use
  -- only 4 bits for memory addressing.
  mar_in(7 downto 4) <= "0000";
  mar_in(3 downto 0) <= data_bus(3 downto 0);
  ir_logic_in <= ir_out(7 downto 4);
  
  -- The three signals for the logic decoding are::
  -- mcout, ir_logic_in and zflag/cflag out.
  
  process (clock_inv, clear) is
	 if rising_edge(clear) then
		-- clear sets all signals to 0
		fld <= '0';    orld <= '0';
		oea <= '0';    loada <= '0';
		oeb <= '0';    loadb <= '0';
		aluout <= '0'; alusub <= '0';
		pcld <= '0';   pco <= '0';
      pcc <= '0';    mald <= '0';
		ramo <= '0';   ramw <= '0';
		iro <= '0';    irld <= '0';
		mcc <= '0';
	 end if;
	 -- On rising edge of the inverted clock the microcounter gets incremented
	 -- and we need to update the control signals.
    if rising_edge(clock_inv) then
	   -- set all signals to 0
	   fld <= '0';    orld <= '0';
		oea <= '0';    loada <= '0';
		oeb <= '0';    loadb <= '0';
		aluout <= '0'; alusub <= '0';
		pcld <= '0';   pco <= '0';
      pcc <= '0';    mald <= '0';
		ramo <= '0';   ramw <= '0';
		iro <= '0';    irld <= '0';
		mcc <= '0';
		
		-- Then we set correct signals based on logic input
		if ir_logic_in = "0000" then -- NOOP instruction
			
		end if;
		
		
	 end if;
  end process;
  
 
  
end description;