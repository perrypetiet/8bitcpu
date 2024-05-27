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
  clk:  in std_logic;
  clr:    in std_logic;
  load:   in std_logic;
  cfin:   in std_logic;
  zfin:   in std_logic;
  cfout:  out std_logic;
  zfout:  out std_logic);
end component;

component microcounter is
port(
  clk_cnt:      in std_logic;
  clr_global:   in std_logic;
  output:       out std_logic_vector(3 downto 0));
end component;

component outreg is
port(
  ld:      in std_logic;
  clk:     in std_logic;
  clr:     in std_logic;
  d_in:    in std_logic_vector(7 downto 0);
  d_out:   out std_logic_vector(7 downto 0));
end component;

component clockdiv is
port(
  clk50in:      in std_logic;   
  clkdivout:    out std_logic);
end component;

-- The buttons on the DE0 board are active low, this means
-- the clock input from the buttons is actually the inverted clock
-- and the regular clock needs to be inverted. This is also done
-- for the clear signal
signal clock:      std_logic;
signal clock_inv:  std_logic;
signal clear:      std_logic;

-- Data bus
signal data_bus: std_logic_vector(7 downto 0);
signal mar_in  : std_logic_vector(7 downto 0);

-- Control signals
signal orld     : std_logic;
signal fld      : std_logic;
signal oea      : std_logic;
signal loada    : std_logic;
signal oeb      : std_logic;
signal loadb    : std_logic;
signal aluout   : std_logic;
signal alusub   : std_logic;
signal pcld     : std_logic;
signal pco      : std_logic;
signal pcc      : std_logic;
signal mald     : std_logic;
signal ramo     : std_logic;
signal ramw     : std_logic;
signal iro      : std_logic;
signal irld     : std_logic;

-- alu inputs and outputs
signal zflag_in: std_logic;
signal cflag_in: std_logic;
signal alu_in1 : std_logic_vector(7 downto 0);
signal alu_in2 : std_logic_vector(7 downto 0);

signal pc_in   : std_logic_vector(7 downto 0);

-- Control logic inputs
signal zflag_out: std_logic;
signal cflag_out: std_logic;
signal mcout    : std_logic_vector(3 downto 0);
signal ir_out   : std_logic_vector(7 downto 0);

begin

  clock_inv <= not clock;
  -- clear signal
  clear <= not clear_in;
  -- Half of the data bus for the mar input. Only half the instruction register is used 
  -- for addressing. This way we can use a normal register as instruction register and use
  -- only 4 bits for memory addressing.
  mar_in(7 downto 4) <= "0000";
  mar_in(3 downto 0) <= data_bus(3 downto 0);
  
  pc_in(7 downto 4) <= "0000";
  pc_in(3 downto 0) <= data_bus(3 downto 0);
  
  program_counter     : pc port map(clock, pcld, clear, pco, pcc, open, data_bus, pc_in);
  memory              : progmem port map(clock, clear, ramo, ramw, mald, mar_in, data_bus, data_bus);
  instruction_register: reg port map(irld, clock, clear, iro, ir_out, data_bus, data_bus);
  a_register          : reg port map(loada, clock, clear, oea, alu_in1, data_bus, data_bus);
  b_register          : reg port map(loadb, clock, clear, oeb, alu_in2, data_bus, data_bus);
  logic_unit          : alu port map(aluout, alusub, cflag_in, zflag_in, alu_in1, alu_in2, open, data_bus);
  flags_register      : flagsreg port map(clock, clear, fld, cflag_in, zflag_in, cflag_out, zflag_out);
  mc                  : microcounter port map(clock_inv, clear, mcout);
  output_register     : outreg port map(orld, clock, clear, data_bus, cpu_out);
  clocker             : clockdiv port map(clock_in, clock); 
  -- The three signals for the logic decoding are::
  -- mcout, ir_logic_in and zflag/cflag out.
  process (ir_out, mcout, zflag_out, cflag_out) is 
  begin
	 
	 
	 -- set all signals to 0
	 fld <= '0';    orld <= '0';
    oea <= '0';    loada <= '0';
	 oeb <= '0';    loadb <= '0';
	 aluout <= '0'; alusub <= '0';
	 pcld <= '0';   pco <= '0';
    pcc <= '0';    mald <= '0';
	 ramo <= '0';   ramw <= '0';
	 iro <= '0';    irld <= '0';
  	 
	 case	ir_out(7 downto 4) is
	 
	   when "0000" => -- NOOP 
		  case mcout is
		    when "0000" => pco <= '1'; mald <= '1';
			 when "0001" => ramo <= '1'; irld <= '1';
			 when "0010" => pcc <= '1';
			 when others => null;
		  end case;
		  
		  when "0001" => -- lda 
		  case mcout is
		    when "0000" => pco <= '1'; mald <= '1';
			 when "0001" => ramo <= '1'; irld <= '1';
			 when "0010" => pcc <= '1';
			 when "0011" => iro <= '1'; mald <= '1';
			 when "0100" => ramo <= '1'; loada <= '1';
			 when others => null;
		  end case;
		  
		  when "0010" => -- ldb 
		  case mcout is
		    when "0000" => pco <= '1'; mald <= '1';
			 when "0001" => ramo <= '1'; irld <= '1';
			 when "0010" => pcc <= '1';
			 when "0011" => iro <= '1'; mald <= '1';
			 when "0100" => ramo <= '1'; loadb <= '1';
			 when others => null;
		  end case;
		  
		  when "0011" => -- add 
		  case mcout is
		    when "0000" => pco <= '1'; mald <= '1';
			 when "0001" => ramo <= '1'; irld <= '1';
			 when "0010" => pcc <= '1';
			 when "0011" => aluout <= '1'; fld <= '1'; loada <= '1';
			 when others => null;
		  end case;
		  
		  when "0100" => -- jmp 
		  case mcout is
		    when "0000" => pco <= '1'; mald <= '1';
			 when "0001" => ramo <= '1'; irld <= '1';
			 when "0010" => iro <= '1'; pcld <= '1';
			 when others => null;
		  end case;
		  
		  when "0101" => -- sub 
		  case mcout is
		    when "0000" => pco <= '1'; mald <= '1';
			 when "0001" => ramo <= '1'; irld <= '1';
			 when "0010" => pcc <= '1';
			 when "0011" => alusub <= '1'; aluout <= '1'; fld <= '1'; loada <= '1';
			 when others => null;
		  end case;
		  
		  when "0110" => -- jmpz 
		  case zflag_out is
			 when '1' => -- z flag on, jump
			   case mcout is
			     when "0000" => pco <= '1'; mald <= '1';
			     when "0001" => ramo <= '1'; irld <= '1';
			     when "0010" => iro <= '1'; pcld <= '1';
				  when others => null;
				end case;
		    when '0' => -- z flag off, noop
			   case mcout is
				  when "0000" => pco <= '1'; mald <= '1';
			     when "0001" => ramo <= '1'; irld <= '1';
			     when "0010" => pcc <= '1';
				  when others => null;
				end case;
		  when others => null;
		  end case;		
		  
		  when "0111" => -- orlda 
		  case mcout is
		    when "0000" => pco <= '1'; mald <= '1';
			 when "0001" => ramo <= '1'; irld <= '1';
			 when "0010" => pcc <= '1';
			 when "0011" => oea <= '1'; orld <= '1';
			 when others => null;
		  end case;
		  
		  when "1000" => -- ramlda 
		  case mcout is
		    when "0000" => pco <= '1'; mald <= '1';
			 when "0001" => ramo <= '1'; irld <= '1';
			 when "0010" => pcc <= '1';
			 when "0011" => iro <= '1'; mald <= '1';
			 when "0100" => oea <= '1'; ramw <= '1'; 
			 --when "0101" => 
			 when others => null;
		  end case;
		  
	   when others => null;
	 end case;	
	 
	
  end process;
end description;