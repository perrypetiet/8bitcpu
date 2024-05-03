-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "05/03/2024 21:24:51"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	eatercpu IS
    PORT (
	clock_in : IN std_logic;
	clear_in : IN std_logic;
	cpu_out : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END eatercpu;

-- Design Ports Information
-- cpu_out[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_out[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_out[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_out[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_out[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_out[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_out[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpu_out[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_in	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_in	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF eatercpu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_in : std_logic;
SIGNAL ww_clear_in : std_logic;
SIGNAL ww_cpu_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \memory|address_load~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clocker|ctval[16]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clear_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cpu_out[0]~output_o\ : std_logic;
SIGNAL \cpu_out[1]~output_o\ : std_logic;
SIGNAL \cpu_out[2]~output_o\ : std_logic;
SIGNAL \cpu_out[3]~output_o\ : std_logic;
SIGNAL \cpu_out[4]~output_o\ : std_logic;
SIGNAL \cpu_out[5]~output_o\ : std_logic;
SIGNAL \cpu_out[6]~output_o\ : std_logic;
SIGNAL \cpu_out[7]~output_o\ : std_logic;
SIGNAL \clock_in~input_o\ : std_logic;
SIGNAL \clock_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \clocker|ctval[0]~48_combout\ : std_logic;
SIGNAL \clocker|ctval[1]~16_combout\ : std_logic;
SIGNAL \clocker|ctval[1]~17\ : std_logic;
SIGNAL \clocker|ctval[2]~18_combout\ : std_logic;
SIGNAL \clocker|ctval[2]~19\ : std_logic;
SIGNAL \clocker|ctval[3]~20_combout\ : std_logic;
SIGNAL \clocker|ctval[3]~21\ : std_logic;
SIGNAL \clocker|ctval[4]~22_combout\ : std_logic;
SIGNAL \clocker|ctval[4]~23\ : std_logic;
SIGNAL \clocker|ctval[5]~24_combout\ : std_logic;
SIGNAL \clocker|ctval[5]~25\ : std_logic;
SIGNAL \clocker|ctval[6]~26_combout\ : std_logic;
SIGNAL \clocker|ctval[6]~27\ : std_logic;
SIGNAL \clocker|ctval[7]~28_combout\ : std_logic;
SIGNAL \clocker|ctval[7]~29\ : std_logic;
SIGNAL \clocker|ctval[8]~30_combout\ : std_logic;
SIGNAL \clocker|ctval[8]~31\ : std_logic;
SIGNAL \clocker|ctval[9]~32_combout\ : std_logic;
SIGNAL \clocker|ctval[9]~33\ : std_logic;
SIGNAL \clocker|ctval[10]~34_combout\ : std_logic;
SIGNAL \clocker|ctval[10]~35\ : std_logic;
SIGNAL \clocker|ctval[11]~36_combout\ : std_logic;
SIGNAL \clocker|ctval[11]~37\ : std_logic;
SIGNAL \clocker|ctval[12]~38_combout\ : std_logic;
SIGNAL \clocker|ctval[12]~39\ : std_logic;
SIGNAL \clocker|ctval[13]~40_combout\ : std_logic;
SIGNAL \clocker|ctval[13]~41\ : std_logic;
SIGNAL \clocker|ctval[14]~42_combout\ : std_logic;
SIGNAL \clocker|ctval[14]~43\ : std_logic;
SIGNAL \clocker|ctval[15]~44_combout\ : std_logic;
SIGNAL \clocker|ctval[15]~45\ : std_logic;
SIGNAL \clocker|ctval[16]~46_combout\ : std_logic;
SIGNAL \clocker|ctval[16]~clkctrl_outclk\ : std_logic;
SIGNAL \program_counter|pc_val[0]~9_combout\ : std_logic;
SIGNAL \clear_in~input_o\ : std_logic;
SIGNAL \clear_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \mc|counter_val[0]~3_combout\ : std_logic;
SIGNAL \mc|counter_val[1]~0_combout\ : std_logic;
SIGNAL \mc|counter_val[2]~2_combout\ : std_logic;
SIGNAL \mc|counter_val[3]~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux71~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \program_counter|pc_val[1]~12\ : std_logic;
SIGNAL \program_counter|pc_val[2]~13_combout\ : std_logic;
SIGNAL \program_counter|pc_val[1]~8_combout\ : std_logic;
SIGNAL \program_counter|pc_val[2]~14\ : std_logic;
SIGNAL \program_counter|pc_val[3]~15_combout\ : std_logic;
SIGNAL \program_counter|pc_val[3]~16\ : std_logic;
SIGNAL \program_counter|pc_val[4]~17_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \program_counter|pc_val[4]~18\ : std_logic;
SIGNAL \program_counter|pc_val[5]~19_combout\ : std_logic;
SIGNAL \program_counter|pc_val[5]~20\ : std_logic;
SIGNAL \program_counter|pc_val[6]~21_combout\ : std_logic;
SIGNAL \program_counter|pc_val[6]~22\ : std_logic;
SIGNAL \program_counter|pc_val[7]~23_combout\ : std_logic;
SIGNAL \data_bus[7]~25_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \instruction_register|regval[7]~0_combout\ : std_logic;
SIGNAL \Mux67~0_combout\ : std_logic;
SIGNAL \Mux67~1_combout\ : std_logic;
SIGNAL \Mux67~2_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|_~7_combout\ : std_logic;
SIGNAL \Mux66~1_combout\ : std_logic;
SIGNAL \Mux66~2_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|_~6_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|_~5_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|_~4_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|_~3_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|_~2_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|_~1_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|_~0_combout\ : std_logic;
SIGNAL \Mux71~1_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \Mux72~0_combout\ : std_logic;
SIGNAL \data_bus[7]~26_combout\ : std_logic;
SIGNAL \data_bus[7]~27_combout\ : std_logic;
SIGNAL \data_bus[7]~28_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \data_bus[3]~14_combout\ : std_logic;
SIGNAL \Mux65~1_combout\ : std_logic;
SIGNAL \Mux62~2_combout\ : std_logic;
SIGNAL \data_bus[3]~13_combout\ : std_logic;
SIGNAL \data_bus[3]~15_combout\ : std_logic;
SIGNAL \data_bus[2]~10_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \data_bus[2]~11_combout\ : std_logic;
SIGNAL \data_bus[2]~12_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \data_bus[4]~17_combout\ : std_logic;
SIGNAL \data_bus[4]~16_combout\ : std_logic;
SIGNAL \data_bus[4]~18_combout\ : std_logic;
SIGNAL \Mux66~0_combout\ : std_logic;
SIGNAL \Mux68~0_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \flags_register|zero~0_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \flags_register|zero~1_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \flags_register|zero~2_combout\ : std_logic;
SIGNAL \flags_register|zero~3_combout\ : std_logic;
SIGNAL \flags_register|zero~q\ : std_logic;
SIGNAL \Mux70~0_combout\ : std_logic;
SIGNAL \Mux70~1_combout\ : std_logic;
SIGNAL \program_counter|pc_val[0]~10\ : std_logic;
SIGNAL \program_counter|pc_val[1]~11_combout\ : std_logic;
SIGNAL \data_bus[1]~8_combout\ : std_logic;
SIGNAL \data_bus[1]~7_combout\ : std_logic;
SIGNAL \data_bus[1]~9_combout\ : std_logic;
SIGNAL \data_bus[6]~22_combout\ : std_logic;
SIGNAL \data_bus[6]~23_combout\ : std_logic;
SIGNAL \data_bus[6]~24_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \Mux61~2_combout\ : std_logic;
SIGNAL \Mux61~3_combout\ : std_logic;
SIGNAL \mald~0_combout\ : std_logic;
SIGNAL \Mux61~4_combout\ : std_logic;
SIGNAL \Mux61~5_combout\ : std_logic;
SIGNAL \Mux61~6_combout\ : std_logic;
SIGNAL \memory|address_load~combout\ : std_logic;
SIGNAL \memory|address_load~clkctrl_outclk\ : std_logic;
SIGNAL \data_bus[5]~19_combout\ : std_logic;
SIGNAL \data_bus[5]~20_combout\ : std_logic;
SIGNAL \data_bus[5]~21_combout\ : std_logic;
SIGNAL \Mux65~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux62~1_combout\ : std_logic;
SIGNAL \data_bus[0]~5_combout\ : std_logic;
SIGNAL \data_bus[0]~4_combout\ : std_logic;
SIGNAL \data_bus[0]~6_combout\ : std_logic;
SIGNAL \output_register|regval[0]~feeder_combout\ : std_logic;
SIGNAL \output_register|regval[1]~feeder_combout\ : std_logic;
SIGNAL \output_register|regval[2]~feeder_combout\ : std_logic;
SIGNAL \output_register|regval[3]~feeder_combout\ : std_logic;
SIGNAL \output_register|regval[4]~feeder_combout\ : std_logic;
SIGNAL \program_counter|pc_val\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \output_register|regval\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \memory|memory|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clocker|ctval\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \instruction_register|regval\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \a_register|regval\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mc|counter_val\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b_register|regval\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clocker|ALT_INV_ctval\ : std_logic_vector(16 DOWNTO 16);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock_in <= clock_in;
ww_clear_in <= clear_in;
cpu_out <= ww_cpu_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \data_bus[7]~28_combout\ & \data_bus[6]~24_combout\ & \data_bus[5]~21_combout\ & \data_bus[4]~18_combout\ & 
\data_bus[3]~15_combout\ & \data_bus[2]~12_combout\ & \data_bus[1]~9_combout\ & \data_bus[0]~6_combout\);

\memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\data_bus[3]~15_combout\ & \data_bus[2]~12_combout\ & \data_bus[1]~9_combout\ & \data_bus[0]~6_combout\);

\memory|memory|altsyncram_component|auto_generated|q_a\(0) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\memory|memory|altsyncram_component|auto_generated|q_a\(1) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\memory|memory|altsyncram_component|auto_generated|q_a\(2) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\memory|memory|altsyncram_component|auto_generated|q_a\(3) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\memory|memory|altsyncram_component|auto_generated|q_a\(4) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\memory|memory|altsyncram_component|auto_generated|q_a\(5) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\memory|memory|altsyncram_component|auto_generated|q_a\(6) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\memory|memory|altsyncram_component|auto_generated|q_a\(7) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\memory|address_load~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \memory|address_load~combout\);

\clocker|ctval[16]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clocker|ctval\(16));

\clear_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clear_in~input_o\);

\clock_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_in~input_o\);
\clocker|ALT_INV_ctval\(16) <= NOT \clocker|ctval\(16);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X38_Y34_N16
\cpu_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_register|regval\(0),
	devoe => ww_devoe,
	o => \cpu_out[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\cpu_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_register|regval\(1),
	devoe => ww_devoe,
	o => \cpu_out[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\cpu_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_register|regval\(2),
	devoe => ww_devoe,
	o => \cpu_out[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\cpu_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_register|regval\(3),
	devoe => ww_devoe,
	o => \cpu_out[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\cpu_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_register|regval\(4),
	devoe => ww_devoe,
	o => \cpu_out[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\cpu_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_register|regval\(5),
	devoe => ww_devoe,
	o => \cpu_out[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\cpu_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_register|regval\(6),
	devoe => ww_devoe,
	o => \cpu_out[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\cpu_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_register|regval\(7),
	devoe => ww_devoe,
	o => \cpu_out[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clock_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_in,
	o => \clock_in~input_o\);

-- Location: CLKCTRL_G18
\clock_in~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_in~inputclkctrl_outclk\);

-- Location: LCCOMB_X18_Y20_N4
\clocker|ctval[0]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocker|ctval[0]~48_combout\ = !\clocker|ctval\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clocker|ctval\(0),
	combout => \clocker|ctval[0]~48_combout\);

-- Location: FF_X18_Y20_N5
\clocker|ctval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clocker|ctval[0]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocker|ctval\(0));

-- Location: LCCOMB_X17_Y20_N0
\clocker|ctval[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocker|ctval[1]~16_combout\ = (\clocker|ctval\(0) & (\clocker|ctval\(1) $ (VCC))) # (!\clocker|ctval\(0) & (\clocker|ctval\(1) & VCC))
-- \clocker|ctval[1]~17\ = CARRY((\clocker|ctval\(0) & \clocker|ctval\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clocker|ctval\(0),
	datab => \clocker|ctval\(1),
	datad => VCC,
	combout => \clocker|ctval[1]~16_combout\,
	cout => \clocker|ctval[1]~17\);

-- Location: FF_X17_Y20_N1
\clocker|ctval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clocker|ctval[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocker|ctval\(1));

-- Location: LCCOMB_X17_Y20_N2
\clocker|ctval[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocker|ctval[2]~18_combout\ = (\clocker|ctval\(2) & (!\clocker|ctval[1]~17\)) # (!\clocker|ctval\(2) & ((\clocker|ctval[1]~17\) # (GND)))
-- \clocker|ctval[2]~19\ = CARRY((!\clocker|ctval[1]~17\) # (!\clocker|ctval\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocker|ctval\(2),
	datad => VCC,
	cin => \clocker|ctval[1]~17\,
	combout => \clocker|ctval[2]~18_combout\,
	cout => \clocker|ctval[2]~19\);

-- Location: FF_X17_Y20_N3
\clocker|ctval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clocker|ctval[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocker|ctval\(2));

-- Location: LCCOMB_X17_Y20_N4
\clocker|ctval[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocker|ctval[3]~20_combout\ = (\clocker|ctval\(3) & (\clocker|ctval[2]~19\ $ (GND))) # (!\clocker|ctval\(3) & (!\clocker|ctval[2]~19\ & VCC))
-- \clocker|ctval[3]~21\ = CARRY((\clocker|ctval\(3) & !\clocker|ctval[2]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocker|ctval\(3),
	datad => VCC,
	cin => \clocker|ctval[2]~19\,
	combout => \clocker|ctval[3]~20_combout\,
	cout => \clocker|ctval[3]~21\);

-- Location: FF_X17_Y20_N5
\clocker|ctval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clocker|ctval[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocker|ctval\(3));

-- Location: LCCOMB_X17_Y20_N6
\clocker|ctval[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocker|ctval[4]~22_combout\ = (\clocker|ctval\(4) & (!\clocker|ctval[3]~21\)) # (!\clocker|ctval\(4) & ((\clocker|ctval[3]~21\) # (GND)))
-- \clocker|ctval[4]~23\ = CARRY((!\clocker|ctval[3]~21\) # (!\clocker|ctval\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocker|ctval\(4),
	datad => VCC,
	cin => \clocker|ctval[3]~21\,
	combout => \clocker|ctval[4]~22_combout\,
	cout => \clocker|ctval[4]~23\);

-- Location: FF_X17_Y20_N7
\clocker|ctval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clocker|ctval[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocker|ctval\(4));

-- Location: LCCOMB_X17_Y20_N8
\clocker|ctval[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocker|ctval[5]~24_combout\ = (\clocker|ctval\(5) & (\clocker|ctval[4]~23\ $ (GND))) # (!\clocker|ctval\(5) & (!\clocker|ctval[4]~23\ & VCC))
-- \clocker|ctval[5]~25\ = CARRY((\clocker|ctval\(5) & !\clocker|ctval[4]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocker|ctval\(5),
	datad => VCC,
	cin => \clocker|ctval[4]~23\,
	combout => \clocker|ctval[5]~24_combout\,
	cout => \clocker|ctval[5]~25\);

-- Location: FF_X17_Y20_N9
\clocker|ctval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clocker|ctval[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocker|ctval\(5));

-- Location: LCCOMB_X17_Y20_N10
\clocker|ctval[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocker|ctval[6]~26_combout\ = (\clocker|ctval\(6) & (!\clocker|ctval[5]~25\)) # (!\clocker|ctval\(6) & ((\clocker|ctval[5]~25\) # (GND)))
-- \clocker|ctval[6]~27\ = CARRY((!\clocker|ctval[5]~25\) # (!\clocker|ctval\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocker|ctval\(6),
	datad => VCC,
	cin => \clocker|ctval[5]~25\,
	combout => \clocker|ctval[6]~26_combout\,
	cout => \clocker|ctval[6]~27\);

-- Location: FF_X17_Y20_N11
\clocker|ctval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clocker|ctval[6]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocker|ctval\(6));

-- Location: LCCOMB_X17_Y20_N12
\clocker|ctval[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocker|ctval[7]~28_combout\ = (\clocker|ctval\(7) & (\clocker|ctval[6]~27\ $ (GND))) # (!\clocker|ctval\(7) & (!\clocker|ctval[6]~27\ & VCC))
-- \clocker|ctval[7]~29\ = CARRY((\clocker|ctval\(7) & !\clocker|ctval[6]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocker|ctval\(7),
	datad => VCC,
	cin => \clocker|ctval[6]~27\,
	combout => \clocker|ctval[7]~28_combout\,
	cout => \clocker|ctval[7]~29\);

-- Location: FF_X17_Y20_N13
\clocker|ctval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clocker|ctval[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocker|ctval\(7));

-- Location: LCCOMB_X17_Y20_N14
\clocker|ctval[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocker|ctval[8]~30_combout\ = (\clocker|ctval\(8) & (!\clocker|ctval[7]~29\)) # (!\clocker|ctval\(8) & ((\clocker|ctval[7]~29\) # (GND)))
-- \clocker|ctval[8]~31\ = CARRY((!\clocker|ctval[7]~29\) # (!\clocker|ctval\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocker|ctval\(8),
	datad => VCC,
	cin => \clocker|ctval[7]~29\,
	combout => \clocker|ctval[8]~30_combout\,
	cout => \clocker|ctval[8]~31\);

-- Location: FF_X17_Y20_N15
\clocker|ctval[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clocker|ctval[8]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocker|ctval\(8));

-- Location: LCCOMB_X17_Y20_N16
\clocker|ctval[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocker|ctval[9]~32_combout\ = (\clocker|ctval\(9) & (\clocker|ctval[8]~31\ $ (GND))) # (!\clocker|ctval\(9) & (!\clocker|ctval[8]~31\ & VCC))
-- \clocker|ctval[9]~33\ = CARRY((\clocker|ctval\(9) & !\clocker|ctval[8]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocker|ctval\(9),
	datad => VCC,
	cin => \clocker|ctval[8]~31\,
	combout => \clocker|ctval[9]~32_combout\,
	cout => \clocker|ctval[9]~33\);

-- Location: FF_X17_Y20_N17
\clocker|ctval[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clocker|ctval[9]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocker|ctval\(9));

-- Location: LCCOMB_X17_Y20_N18
\clocker|ctval[10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocker|ctval[10]~34_combout\ = (\clocker|ctval\(10) & (!\clocker|ctval[9]~33\)) # (!\clocker|ctval\(10) & ((\clocker|ctval[9]~33\) # (GND)))
-- \clocker|ctval[10]~35\ = CARRY((!\clocker|ctval[9]~33\) # (!\clocker|ctval\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocker|ctval\(10),
	datad => VCC,
	cin => \clocker|ctval[9]~33\,
	combout => \clocker|ctval[10]~34_combout\,
	cout => \clocker|ctval[10]~35\);

-- Location: FF_X17_Y20_N19
\clocker|ctval[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clocker|ctval[10]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocker|ctval\(10));

-- Location: LCCOMB_X17_Y20_N20
\clocker|ctval[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocker|ctval[11]~36_combout\ = (\clocker|ctval\(11) & (\clocker|ctval[10]~35\ $ (GND))) # (!\clocker|ctval\(11) & (!\clocker|ctval[10]~35\ & VCC))
-- \clocker|ctval[11]~37\ = CARRY((\clocker|ctval\(11) & !\clocker|ctval[10]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocker|ctval\(11),
	datad => VCC,
	cin => \clocker|ctval[10]~35\,
	combout => \clocker|ctval[11]~36_combout\,
	cout => \clocker|ctval[11]~37\);

-- Location: FF_X17_Y20_N21
\clocker|ctval[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clocker|ctval[11]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocker|ctval\(11));

-- Location: LCCOMB_X17_Y20_N22
\clocker|ctval[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocker|ctval[12]~38_combout\ = (\clocker|ctval\(12) & (!\clocker|ctval[11]~37\)) # (!\clocker|ctval\(12) & ((\clocker|ctval[11]~37\) # (GND)))
-- \clocker|ctval[12]~39\ = CARRY((!\clocker|ctval[11]~37\) # (!\clocker|ctval\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocker|ctval\(12),
	datad => VCC,
	cin => \clocker|ctval[11]~37\,
	combout => \clocker|ctval[12]~38_combout\,
	cout => \clocker|ctval[12]~39\);

-- Location: FF_X17_Y20_N23
\clocker|ctval[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clocker|ctval[12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocker|ctval\(12));

-- Location: LCCOMB_X17_Y20_N24
\clocker|ctval[13]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocker|ctval[13]~40_combout\ = (\clocker|ctval\(13) & (\clocker|ctval[12]~39\ $ (GND))) # (!\clocker|ctval\(13) & (!\clocker|ctval[12]~39\ & VCC))
-- \clocker|ctval[13]~41\ = CARRY((\clocker|ctval\(13) & !\clocker|ctval[12]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocker|ctval\(13),
	datad => VCC,
	cin => \clocker|ctval[12]~39\,
	combout => \clocker|ctval[13]~40_combout\,
	cout => \clocker|ctval[13]~41\);

-- Location: FF_X17_Y20_N25
\clocker|ctval[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clocker|ctval[13]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocker|ctval\(13));

-- Location: LCCOMB_X17_Y20_N26
\clocker|ctval[14]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocker|ctval[14]~42_combout\ = (\clocker|ctval\(14) & (!\clocker|ctval[13]~41\)) # (!\clocker|ctval\(14) & ((\clocker|ctval[13]~41\) # (GND)))
-- \clocker|ctval[14]~43\ = CARRY((!\clocker|ctval[13]~41\) # (!\clocker|ctval\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clocker|ctval\(14),
	datad => VCC,
	cin => \clocker|ctval[13]~41\,
	combout => \clocker|ctval[14]~42_combout\,
	cout => \clocker|ctval[14]~43\);

-- Location: FF_X17_Y20_N27
\clocker|ctval[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clocker|ctval[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocker|ctval\(14));

-- Location: LCCOMB_X17_Y20_N28
\clocker|ctval[15]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocker|ctval[15]~44_combout\ = (\clocker|ctval\(15) & (\clocker|ctval[14]~43\ $ (GND))) # (!\clocker|ctval\(15) & (!\clocker|ctval[14]~43\ & VCC))
-- \clocker|ctval[15]~45\ = CARRY((\clocker|ctval\(15) & !\clocker|ctval[14]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clocker|ctval\(15),
	datad => VCC,
	cin => \clocker|ctval[14]~43\,
	combout => \clocker|ctval[15]~44_combout\,
	cout => \clocker|ctval[15]~45\);

-- Location: FF_X17_Y20_N29
\clocker|ctval[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clocker|ctval[15]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocker|ctval\(15));

-- Location: LCCOMB_X17_Y20_N30
\clocker|ctval[16]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocker|ctval[16]~46_combout\ = \clocker|ctval[15]~45\ $ (\clocker|ctval\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clocker|ctval\(16),
	cin => \clocker|ctval[15]~45\,
	combout => \clocker|ctval[16]~46_combout\);

-- Location: FF_X17_Y20_N31
\clocker|ctval[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clocker|ctval[16]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocker|ctval\(16));

-- Location: CLKCTRL_G11
\clocker|ctval[16]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clocker|ctval[16]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clocker|ctval[16]~clkctrl_outclk\);

-- Location: LCCOMB_X20_Y24_N12
\program_counter|pc_val[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[0]~9_combout\ = \program_counter|pc_val\(0) $ (VCC)
-- \program_counter|pc_val[0]~10\ = CARRY(\program_counter|pc_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|pc_val\(0),
	datad => VCC,
	combout => \program_counter|pc_val[0]~9_combout\,
	cout => \program_counter|pc_val[0]~10\);

-- Location: IOIBUF_X0_Y16_N8
\clear_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_in,
	o => \clear_in~input_o\);

-- Location: CLKCTRL_G2
\clear_in~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clear_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clear_in~inputclkctrl_outclk\);

-- Location: LCCOMB_X20_Y24_N8
\mc|counter_val[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc|counter_val[0]~3_combout\ = !\mc|counter_val\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mc|counter_val\(0),
	combout => \mc|counter_val[0]~3_combout\);

-- Location: FF_X16_Y24_N23
\mc|counter_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ALT_INV_ctval\(16),
	asdata => \mc|counter_val[0]~3_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc|counter_val\(0));

-- Location: LCCOMB_X20_Y24_N30
\mc|counter_val[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc|counter_val[1]~0_combout\ = \mc|counter_val\(1) $ (\mc|counter_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mc|counter_val\(1),
	datad => \mc|counter_val\(0),
	combout => \mc|counter_val[1]~0_combout\);

-- Location: FF_X16_Y24_N27
\mc|counter_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ALT_INV_ctval\(16),
	asdata => \mc|counter_val[1]~0_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc|counter_val\(1));

-- Location: LCCOMB_X16_Y24_N24
\mc|counter_val[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc|counter_val[2]~2_combout\ = \mc|counter_val\(2) $ (((\mc|counter_val\(0) & \mc|counter_val\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(0),
	datac => \mc|counter_val\(2),
	datad => \mc|counter_val\(1),
	combout => \mc|counter_val[2]~2_combout\);

-- Location: FF_X16_Y24_N25
\mc|counter_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ALT_INV_ctval\(16),
	d => \mc|counter_val[2]~2_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc|counter_val\(2));

-- Location: LCCOMB_X16_Y24_N10
\mc|counter_val[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc|counter_val[3]~1_combout\ = \mc|counter_val\(3) $ (((\mc|counter_val\(0) & (\mc|counter_val\(2) & \mc|counter_val\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(0),
	datab => \mc|counter_val\(2),
	datac => \mc|counter_val\(3),
	datad => \mc|counter_val\(1),
	combout => \mc|counter_val[3]~1_combout\);

-- Location: FF_X16_Y24_N11
\mc|counter_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ALT_INV_ctval\(16),
	d => \mc|counter_val[3]~1_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc|counter_val\(3));

-- Location: LCCOMB_X16_Y24_N18
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\mc|counter_val\(3) & (\mc|counter_val\(0) & (\mc|counter_val\(1) & !\mc|counter_val\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(3),
	datab => \mc|counter_val\(0),
	datac => \mc|counter_val\(1),
	datad => \mc|counter_val\(2),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X15_Y24_N14
\Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux71~0_combout\ = (!\instruction_register|regval\(5) & \instruction_register|regval\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction_register|regval\(5),
	datad => \instruction_register|regval\(6),
	combout => \Mux71~0_combout\);

-- Location: LCCOMB_X16_Y24_N0
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (!\mc|counter_val\(3) & !\mc|counter_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(3),
	datad => \mc|counter_val\(2),
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X19_Y24_N16
\Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (!\instruction_register|regval\(7) & (!\mc|counter_val\(0) & (!\mc|counter_val\(1) & \Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(7),
	datab => \mc|counter_val\(0),
	datac => \mc|counter_val\(1),
	datad => \Mux10~1_combout\,
	combout => \Mux60~0_combout\);

-- Location: LCCOMB_X20_Y24_N14
\program_counter|pc_val[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[1]~11_combout\ = (\program_counter|pc_val\(1) & (!\program_counter|pc_val[0]~10\)) # (!\program_counter|pc_val\(1) & ((\program_counter|pc_val[0]~10\) # (GND)))
-- \program_counter|pc_val[1]~12\ = CARRY((!\program_counter|pc_val[0]~10\) # (!\program_counter|pc_val\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \program_counter|pc_val\(1),
	datad => VCC,
	cin => \program_counter|pc_val[0]~10\,
	combout => \program_counter|pc_val[1]~11_combout\,
	cout => \program_counter|pc_val[1]~12\);

-- Location: LCCOMB_X20_Y24_N16
\program_counter|pc_val[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[2]~13_combout\ = (\program_counter|pc_val\(2) & (\program_counter|pc_val[1]~12\ $ (GND))) # (!\program_counter|pc_val\(2) & (!\program_counter|pc_val[1]~12\ & VCC))
-- \program_counter|pc_val[2]~14\ = CARRY((\program_counter|pc_val\(2) & !\program_counter|pc_val[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \program_counter|pc_val\(2),
	datad => VCC,
	cin => \program_counter|pc_val[1]~12\,
	combout => \program_counter|pc_val[2]~13_combout\,
	cout => \program_counter|pc_val[2]~14\);

-- Location: LCCOMB_X20_Y24_N10
\program_counter|pc_val[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[1]~8_combout\ = (\mc|counter_val\(1) & (!\instruction_register|regval\(7) & (\Mux10~1_combout\ & !\mc|counter_val\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(1),
	datab => \instruction_register|regval\(7),
	datac => \Mux10~1_combout\,
	datad => \mc|counter_val\(0),
	combout => \program_counter|pc_val[1]~8_combout\);

-- Location: FF_X20_Y24_N17
\program_counter|pc_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	d => \program_counter|pc_val[2]~13_combout\,
	asdata => \data_bus[2]~12_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux70~1_combout\,
	ena => \program_counter|pc_val[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(2));

-- Location: LCCOMB_X20_Y24_N18
\program_counter|pc_val[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[3]~15_combout\ = (\program_counter|pc_val\(3) & (!\program_counter|pc_val[2]~14\)) # (!\program_counter|pc_val\(3) & ((\program_counter|pc_val[2]~14\) # (GND)))
-- \program_counter|pc_val[3]~16\ = CARRY((!\program_counter|pc_val[2]~14\) # (!\program_counter|pc_val\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \program_counter|pc_val\(3),
	datad => VCC,
	cin => \program_counter|pc_val[2]~14\,
	combout => \program_counter|pc_val[3]~15_combout\,
	cout => \program_counter|pc_val[3]~16\);

-- Location: FF_X20_Y24_N19
\program_counter|pc_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	d => \program_counter|pc_val[3]~15_combout\,
	asdata => \data_bus[3]~15_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux70~1_combout\,
	ena => \program_counter|pc_val[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(3));

-- Location: LCCOMB_X20_Y24_N20
\program_counter|pc_val[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[4]~17_combout\ = (\program_counter|pc_val\(4) & (\program_counter|pc_val[3]~16\ $ (GND))) # (!\program_counter|pc_val\(4) & (!\program_counter|pc_val[3]~16\ & VCC))
-- \program_counter|pc_val[4]~18\ = CARRY((\program_counter|pc_val\(4) & !\program_counter|pc_val[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \program_counter|pc_val\(4),
	datad => VCC,
	cin => \program_counter|pc_val[3]~16\,
	combout => \program_counter|pc_val[4]~17_combout\,
	cout => \program_counter|pc_val[4]~18\);

-- Location: LCCOMB_X20_Y24_N2
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X20_Y24_N21
\program_counter|pc_val[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	d => \program_counter|pc_val[4]~17_combout\,
	asdata => \~GND~combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux70~1_combout\,
	ena => \program_counter|pc_val[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(4));

-- Location: LCCOMB_X20_Y24_N22
\program_counter|pc_val[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[5]~19_combout\ = (\program_counter|pc_val\(5) & (!\program_counter|pc_val[4]~18\)) # (!\program_counter|pc_val\(5) & ((\program_counter|pc_val[4]~18\) # (GND)))
-- \program_counter|pc_val[5]~20\ = CARRY((!\program_counter|pc_val[4]~18\) # (!\program_counter|pc_val\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|pc_val\(5),
	datad => VCC,
	cin => \program_counter|pc_val[4]~18\,
	combout => \program_counter|pc_val[5]~19_combout\,
	cout => \program_counter|pc_val[5]~20\);

-- Location: FF_X20_Y24_N23
\program_counter|pc_val[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	d => \program_counter|pc_val[5]~19_combout\,
	asdata => \~GND~combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux70~1_combout\,
	ena => \program_counter|pc_val[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(5));

-- Location: LCCOMB_X20_Y24_N24
\program_counter|pc_val[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[6]~21_combout\ = (\program_counter|pc_val\(6) & (\program_counter|pc_val[5]~20\ $ (GND))) # (!\program_counter|pc_val\(6) & (!\program_counter|pc_val[5]~20\ & VCC))
-- \program_counter|pc_val[6]~22\ = CARRY((\program_counter|pc_val\(6) & !\program_counter|pc_val[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \program_counter|pc_val\(6),
	datad => VCC,
	cin => \program_counter|pc_val[5]~20\,
	combout => \program_counter|pc_val[6]~21_combout\,
	cout => \program_counter|pc_val[6]~22\);

-- Location: FF_X20_Y24_N25
\program_counter|pc_val[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	d => \program_counter|pc_val[6]~21_combout\,
	asdata => \~GND~combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux70~1_combout\,
	ena => \program_counter|pc_val[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(6));

-- Location: LCCOMB_X20_Y24_N26
\program_counter|pc_val[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[7]~23_combout\ = \program_counter|pc_val\(7) $ (\program_counter|pc_val[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|pc_val\(7),
	cin => \program_counter|pc_val[6]~22\,
	combout => \program_counter|pc_val[7]~23_combout\);

-- Location: FF_X20_Y24_N27
\program_counter|pc_val[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	d => \program_counter|pc_val[7]~23_combout\,
	asdata => \~GND~combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux70~1_combout\,
	ena => \program_counter|pc_val[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(7));

-- Location: LCCOMB_X20_Y24_N4
\data_bus[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[7]~25_combout\ = (\Mux60~0_combout\ & \program_counter|pc_val\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~0_combout\,
	datac => \program_counter|pc_val\(7),
	combout => \data_bus[7]~25_combout\);

-- Location: LCCOMB_X16_Y24_N26
\Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (!\mc|counter_val\(3) & (\mc|counter_val\(0) & (!\mc|counter_val\(1) & !\mc|counter_val\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(3),
	datab => \mc|counter_val\(0),
	datac => \mc|counter_val\(1),
	datad => \mc|counter_val\(2),
	combout => \Mux62~0_combout\);

-- Location: LCCOMB_X19_Y24_N20
\instruction_register|regval[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_register|regval[7]~0_combout\ = (\instruction_register|regval\(7)) # ((\Mux62~0_combout\ & ((\data_bus[7]~25_combout\) # (\data_bus[7]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_bus[7]~25_combout\,
	datab => \Mux62~0_combout\,
	datac => \instruction_register|regval\(7),
	datad => \data_bus[7]~27_combout\,
	combout => \instruction_register|regval[7]~0_combout\);

-- Location: FF_X19_Y24_N21
\instruction_register|regval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval\(16),
	d => \instruction_register|regval[7]~0_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(7));

-- Location: LCCOMB_X18_Y24_N24
\Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux67~0_combout\ = (!\mc|counter_val\(1) & (!\mc|counter_val\(3) & (!\instruction_register|regval\(6) & !\mc|counter_val\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(1),
	datab => \mc|counter_val\(3),
	datac => \instruction_register|regval\(6),
	datad => \mc|counter_val\(0),
	combout => \Mux67~0_combout\);

-- Location: LCCOMB_X18_Y24_N20
\Mux67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux67~1_combout\ = (\mc|counter_val\(2) & \Mux67~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mc|counter_val\(2),
	datad => \Mux67~0_combout\,
	combout => \Mux67~1_combout\);

-- Location: LCCOMB_X15_Y24_N10
\Mux67~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux67~2_combout\ = (!\instruction_register|regval\(7) & (!\instruction_register|regval\(4) & (\instruction_register|regval\(5) & \Mux67~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(7),
	datab => \instruction_register|regval\(4),
	datac => \instruction_register|regval\(5),
	datad => \Mux67~1_combout\,
	combout => \Mux67~2_combout\);

-- Location: FF_X16_Y24_N9
\b_register|regval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[7]~28_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux67~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(7));

-- Location: LCCOMB_X16_Y24_N8
\logic_unit|Add1|auto_generated|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|_~7_combout\ = \b_register|regval\(7) $ (((\Mux71~0_combout\ & (\Mux66~0_combout\ & \Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux71~0_combout\,
	datab => \Mux66~0_combout\,
	datac => \b_register|regval\(7),
	datad => \Mux10~0_combout\,
	combout => \logic_unit|Add1|auto_generated|_~7_combout\);

-- Location: LCCOMB_X18_Y24_N28
\Mux66~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux66~1_combout\ = (\instruction_register|regval\(5) & (\Mux10~0_combout\)) # (!\instruction_register|regval\(5) & ((\Mux67~1_combout\) # ((\Mux10~0_combout\ & \instruction_register|regval\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \instruction_register|regval\(6),
	datac => \instruction_register|regval\(5),
	datad => \Mux67~1_combout\,
	combout => \Mux66~1_combout\);

-- Location: LCCOMB_X17_Y24_N0
\Mux66~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux66~2_combout\ = (\Mux66~0_combout\ & (\Mux66~1_combout\ & ((!\instruction_register|regval\(6)) # (!\instruction_register|regval\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(5),
	datab => \Mux66~0_combout\,
	datac => \instruction_register|regval\(6),
	datad => \Mux66~1_combout\,
	combout => \Mux66~2_combout\);

-- Location: FF_X17_Y24_N29
\a_register|regval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[7]~28_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(7));

-- Location: FF_X17_Y24_N27
\a_register|regval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[6]~24_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(6));

-- Location: FF_X16_Y24_N29
\b_register|regval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[6]~24_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux67~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(6));

-- Location: LCCOMB_X16_Y24_N28
\logic_unit|Add1|auto_generated|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|_~6_combout\ = \b_register|regval\(6) $ (((\Mux71~0_combout\ & (\Mux66~0_combout\ & \Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux71~0_combout\,
	datab => \Mux66~0_combout\,
	datac => \b_register|regval\(6),
	datad => \Mux10~0_combout\,
	combout => \logic_unit|Add1|auto_generated|_~6_combout\);

-- Location: FF_X16_Y24_N3
\b_register|regval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[5]~21_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux67~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(5));

-- Location: LCCOMB_X16_Y24_N2
\logic_unit|Add1|auto_generated|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|_~5_combout\ = \b_register|regval\(5) $ (((\Mux71~0_combout\ & (\Mux66~0_combout\ & \Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux71~0_combout\,
	datab => \Mux66~0_combout\,
	datac => \b_register|regval\(5),
	datad => \Mux10~0_combout\,
	combout => \logic_unit|Add1|auto_generated|_~5_combout\);

-- Location: FF_X17_Y24_N25
\a_register|regval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[5]~21_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(5));

-- Location: FF_X17_Y24_N23
\a_register|regval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[4]~18_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(4));

-- Location: FF_X16_Y24_N21
\b_register|regval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[4]~18_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux67~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(4));

-- Location: LCCOMB_X16_Y24_N20
\logic_unit|Add1|auto_generated|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|_~4_combout\ = \b_register|regval\(4) $ (((\Mux71~0_combout\ & (\Mux66~0_combout\ & \Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux71~0_combout\,
	datab => \Mux66~0_combout\,
	datac => \b_register|regval\(4),
	datad => \Mux10~0_combout\,
	combout => \logic_unit|Add1|auto_generated|_~4_combout\);

-- Location: FF_X16_Y24_N13
\b_register|regval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[3]~15_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux67~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(3));

-- Location: LCCOMB_X16_Y24_N12
\logic_unit|Add1|auto_generated|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|_~3_combout\ = \b_register|regval\(3) $ (((\Mux71~0_combout\ & (\Mux66~0_combout\ & \Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux71~0_combout\,
	datab => \Mux66~0_combout\,
	datac => \b_register|regval\(3),
	datad => \Mux10~0_combout\,
	combout => \logic_unit|Add1|auto_generated|_~3_combout\);

-- Location: FF_X17_Y24_N21
\a_register|regval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[3]~15_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(3));

-- Location: FF_X17_Y24_N19
\a_register|regval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[2]~12_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(2));

-- Location: FF_X16_Y24_N5
\b_register|regval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[2]~12_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux67~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(2));

-- Location: LCCOMB_X16_Y24_N4
\logic_unit|Add1|auto_generated|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|_~2_combout\ = \b_register|regval\(2) $ (((\Mux71~0_combout\ & (\Mux66~0_combout\ & \Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux71~0_combout\,
	datab => \Mux66~0_combout\,
	datac => \b_register|regval\(2),
	datad => \Mux10~0_combout\,
	combout => \logic_unit|Add1|auto_generated|_~2_combout\);

-- Location: FF_X17_Y24_N17
\a_register|regval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[1]~9_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(1));

-- Location: FF_X16_Y24_N7
\b_register|regval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[1]~9_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux67~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(1));

-- Location: LCCOMB_X16_Y24_N6
\logic_unit|Add1|auto_generated|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|_~1_combout\ = \b_register|regval\(1) $ (((\Mux71~0_combout\ & (\Mux66~0_combout\ & \Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux71~0_combout\,
	datab => \Mux66~0_combout\,
	datac => \b_register|regval\(1),
	datad => \Mux10~0_combout\,
	combout => \logic_unit|Add1|auto_generated|_~1_combout\);

-- Location: FF_X16_Y24_N17
\b_register|regval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[0]~6_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux67~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(0));

-- Location: LCCOMB_X16_Y24_N16
\logic_unit|Add1|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|_~0_combout\ = \b_register|regval\(0) $ (((\Mux71~0_combout\ & (\Mux66~0_combout\ & \Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux71~0_combout\,
	datab => \Mux66~0_combout\,
	datac => \b_register|regval\(0),
	datad => \Mux10~0_combout\,
	combout => \logic_unit|Add1|auto_generated|_~0_combout\);

-- Location: FF_X17_Y24_N7
\a_register|regval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[0]~6_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux66~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(0));

-- Location: LCCOMB_X17_Y24_N10
\Mux71~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux71~1_combout\ = (!\instruction_register|regval\(5) & (\instruction_register|regval\(6) & (\Mux66~0_combout\ & \Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(5),
	datab => \instruction_register|regval\(6),
	datac => \Mux66~0_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux71~1_combout\);

-- Location: LCCOMB_X17_Y24_N12
\logic_unit|Add1|auto_generated|result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|result_int[0]~1_cout\ = CARRY(\Mux71~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux71~1_combout\,
	datad => VCC,
	cout => \logic_unit|Add1|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X17_Y24_N14
\logic_unit|Add1|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|result_int[1]~2_combout\ = (\logic_unit|Add1|auto_generated|_~0_combout\ & ((\a_register|regval\(0) & (\logic_unit|Add1|auto_generated|result_int[0]~1_cout\ & VCC)) # (!\a_register|regval\(0) & 
-- (!\logic_unit|Add1|auto_generated|result_int[0]~1_cout\)))) # (!\logic_unit|Add1|auto_generated|_~0_combout\ & ((\a_register|regval\(0) & (!\logic_unit|Add1|auto_generated|result_int[0]~1_cout\)) # (!\a_register|regval\(0) & 
-- ((\logic_unit|Add1|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \logic_unit|Add1|auto_generated|result_int[1]~3\ = CARRY((\logic_unit|Add1|auto_generated|_~0_combout\ & (!\a_register|regval\(0) & !\logic_unit|Add1|auto_generated|result_int[0]~1_cout\)) # (!\logic_unit|Add1|auto_generated|_~0_combout\ & 
-- ((!\logic_unit|Add1|auto_generated|result_int[0]~1_cout\) # (!\a_register|regval\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add1|auto_generated|_~0_combout\,
	datab => \a_register|regval\(0),
	datad => VCC,
	cin => \logic_unit|Add1|auto_generated|result_int[0]~1_cout\,
	combout => \logic_unit|Add1|auto_generated|result_int[1]~2_combout\,
	cout => \logic_unit|Add1|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X17_Y24_N16
\logic_unit|Add1|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|result_int[2]~4_combout\ = ((\a_register|regval\(1) $ (\logic_unit|Add1|auto_generated|_~1_combout\ $ (!\logic_unit|Add1|auto_generated|result_int[1]~3\)))) # (GND)
-- \logic_unit|Add1|auto_generated|result_int[2]~5\ = CARRY((\a_register|regval\(1) & ((\logic_unit|Add1|auto_generated|_~1_combout\) # (!\logic_unit|Add1|auto_generated|result_int[1]~3\))) # (!\a_register|regval\(1) & 
-- (\logic_unit|Add1|auto_generated|_~1_combout\ & !\logic_unit|Add1|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_register|regval\(1),
	datab => \logic_unit|Add1|auto_generated|_~1_combout\,
	datad => VCC,
	cin => \logic_unit|Add1|auto_generated|result_int[1]~3\,
	combout => \logic_unit|Add1|auto_generated|result_int[2]~4_combout\,
	cout => \logic_unit|Add1|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X17_Y24_N18
\logic_unit|Add1|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|result_int[3]~6_combout\ = (\a_register|regval\(2) & ((\logic_unit|Add1|auto_generated|_~2_combout\ & (\logic_unit|Add1|auto_generated|result_int[2]~5\ & VCC)) # (!\logic_unit|Add1|auto_generated|_~2_combout\ & 
-- (!\logic_unit|Add1|auto_generated|result_int[2]~5\)))) # (!\a_register|regval\(2) & ((\logic_unit|Add1|auto_generated|_~2_combout\ & (!\logic_unit|Add1|auto_generated|result_int[2]~5\)) # (!\logic_unit|Add1|auto_generated|_~2_combout\ & 
-- ((\logic_unit|Add1|auto_generated|result_int[2]~5\) # (GND)))))
-- \logic_unit|Add1|auto_generated|result_int[3]~7\ = CARRY((\a_register|regval\(2) & (!\logic_unit|Add1|auto_generated|_~2_combout\ & !\logic_unit|Add1|auto_generated|result_int[2]~5\)) # (!\a_register|regval\(2) & 
-- ((!\logic_unit|Add1|auto_generated|result_int[2]~5\) # (!\logic_unit|Add1|auto_generated|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_register|regval\(2),
	datab => \logic_unit|Add1|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \logic_unit|Add1|auto_generated|result_int[2]~5\,
	combout => \logic_unit|Add1|auto_generated|result_int[3]~6_combout\,
	cout => \logic_unit|Add1|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X17_Y24_N20
\logic_unit|Add1|auto_generated|result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|result_int[4]~8_combout\ = ((\logic_unit|Add1|auto_generated|_~3_combout\ $ (\a_register|regval\(3) $ (!\logic_unit|Add1|auto_generated|result_int[3]~7\)))) # (GND)
-- \logic_unit|Add1|auto_generated|result_int[4]~9\ = CARRY((\logic_unit|Add1|auto_generated|_~3_combout\ & ((\a_register|regval\(3)) # (!\logic_unit|Add1|auto_generated|result_int[3]~7\))) # (!\logic_unit|Add1|auto_generated|_~3_combout\ & 
-- (\a_register|regval\(3) & !\logic_unit|Add1|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add1|auto_generated|_~3_combout\,
	datab => \a_register|regval\(3),
	datad => VCC,
	cin => \logic_unit|Add1|auto_generated|result_int[3]~7\,
	combout => \logic_unit|Add1|auto_generated|result_int[4]~8_combout\,
	cout => \logic_unit|Add1|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X17_Y24_N22
\logic_unit|Add1|auto_generated|result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|result_int[5]~10_combout\ = (\a_register|regval\(4) & ((\logic_unit|Add1|auto_generated|_~4_combout\ & (\logic_unit|Add1|auto_generated|result_int[4]~9\ & VCC)) # (!\logic_unit|Add1|auto_generated|_~4_combout\ & 
-- (!\logic_unit|Add1|auto_generated|result_int[4]~9\)))) # (!\a_register|regval\(4) & ((\logic_unit|Add1|auto_generated|_~4_combout\ & (!\logic_unit|Add1|auto_generated|result_int[4]~9\)) # (!\logic_unit|Add1|auto_generated|_~4_combout\ & 
-- ((\logic_unit|Add1|auto_generated|result_int[4]~9\) # (GND)))))
-- \logic_unit|Add1|auto_generated|result_int[5]~11\ = CARRY((\a_register|regval\(4) & (!\logic_unit|Add1|auto_generated|_~4_combout\ & !\logic_unit|Add1|auto_generated|result_int[4]~9\)) # (!\a_register|regval\(4) & 
-- ((!\logic_unit|Add1|auto_generated|result_int[4]~9\) # (!\logic_unit|Add1|auto_generated|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_register|regval\(4),
	datab => \logic_unit|Add1|auto_generated|_~4_combout\,
	datad => VCC,
	cin => \logic_unit|Add1|auto_generated|result_int[4]~9\,
	combout => \logic_unit|Add1|auto_generated|result_int[5]~10_combout\,
	cout => \logic_unit|Add1|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X17_Y24_N24
\logic_unit|Add1|auto_generated|result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|result_int[6]~12_combout\ = ((\logic_unit|Add1|auto_generated|_~5_combout\ $ (\a_register|regval\(5) $ (!\logic_unit|Add1|auto_generated|result_int[5]~11\)))) # (GND)
-- \logic_unit|Add1|auto_generated|result_int[6]~13\ = CARRY((\logic_unit|Add1|auto_generated|_~5_combout\ & ((\a_register|regval\(5)) # (!\logic_unit|Add1|auto_generated|result_int[5]~11\))) # (!\logic_unit|Add1|auto_generated|_~5_combout\ & 
-- (\a_register|regval\(5) & !\logic_unit|Add1|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add1|auto_generated|_~5_combout\,
	datab => \a_register|regval\(5),
	datad => VCC,
	cin => \logic_unit|Add1|auto_generated|result_int[5]~11\,
	combout => \logic_unit|Add1|auto_generated|result_int[6]~12_combout\,
	cout => \logic_unit|Add1|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X17_Y24_N26
\logic_unit|Add1|auto_generated|result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|result_int[7]~14_combout\ = (\a_register|regval\(6) & ((\logic_unit|Add1|auto_generated|_~6_combout\ & (\logic_unit|Add1|auto_generated|result_int[6]~13\ & VCC)) # (!\logic_unit|Add1|auto_generated|_~6_combout\ & 
-- (!\logic_unit|Add1|auto_generated|result_int[6]~13\)))) # (!\a_register|regval\(6) & ((\logic_unit|Add1|auto_generated|_~6_combout\ & (!\logic_unit|Add1|auto_generated|result_int[6]~13\)) # (!\logic_unit|Add1|auto_generated|_~6_combout\ & 
-- ((\logic_unit|Add1|auto_generated|result_int[6]~13\) # (GND)))))
-- \logic_unit|Add1|auto_generated|result_int[7]~15\ = CARRY((\a_register|regval\(6) & (!\logic_unit|Add1|auto_generated|_~6_combout\ & !\logic_unit|Add1|auto_generated|result_int[6]~13\)) # (!\a_register|regval\(6) & 
-- ((!\logic_unit|Add1|auto_generated|result_int[6]~13\) # (!\logic_unit|Add1|auto_generated|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_register|regval\(6),
	datab => \logic_unit|Add1|auto_generated|_~6_combout\,
	datad => VCC,
	cin => \logic_unit|Add1|auto_generated|result_int[6]~13\,
	combout => \logic_unit|Add1|auto_generated|result_int[7]~14_combout\,
	cout => \logic_unit|Add1|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X17_Y24_N28
\logic_unit|Add1|auto_generated|result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|result_int[8]~16_combout\ = ((\logic_unit|Add1|auto_generated|_~7_combout\ $ (\a_register|regval\(7) $ (!\logic_unit|Add1|auto_generated|result_int[7]~15\)))) # (GND)
-- \logic_unit|Add1|auto_generated|result_int[8]~17\ = CARRY((\logic_unit|Add1|auto_generated|_~7_combout\ & ((\a_register|regval\(7)) # (!\logic_unit|Add1|auto_generated|result_int[7]~15\))) # (!\logic_unit|Add1|auto_generated|_~7_combout\ & 
-- (\a_register|regval\(7) & !\logic_unit|Add1|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add1|auto_generated|_~7_combout\,
	datab => \a_register|regval\(7),
	datad => VCC,
	cin => \logic_unit|Add1|auto_generated|result_int[7]~15\,
	combout => \logic_unit|Add1|auto_generated|result_int[8]~16_combout\,
	cout => \logic_unit|Add1|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X18_Y24_N4
\Mux72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux72~0_combout\ = (\Mux10~0_combout\ & (\Mux66~0_combout\ & (\instruction_register|regval\(5) & \instruction_register|regval\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \Mux66~0_combout\,
	datac => \instruction_register|regval\(5),
	datad => \instruction_register|regval\(6),
	combout => \Mux72~0_combout\);

-- Location: M9K_X22_Y24_N0
\memory|memory|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000040010000000000000000000000000000000000000001080061001C0005000078002F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../meminit.hex",
	init_file_layout => "port_a",
	logical_ram_name => "progmem:memory|ramip:memory|altsyncram:altsyncram_component|altsyncram_59s3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \memory|address_load~clkctrl_outclk\,
	portadatain => \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y24_N12
\data_bus[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[7]~26_combout\ = (\a_register|regval\(7) & ((\Mux72~0_combout\) # ((\memory|memory|altsyncram_component|auto_generated|q_a\(7) & \Mux62~1_combout\)))) # (!\a_register|regval\(7) & (((\memory|memory|altsyncram_component|auto_generated|q_a\(7) & 
-- \Mux62~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_register|regval\(7),
	datab => \Mux72~0_combout\,
	datac => \memory|memory|altsyncram_component|auto_generated|q_a\(7),
	datad => \Mux62~1_combout\,
	combout => \data_bus[7]~26_combout\);

-- Location: LCCOMB_X18_Y24_N10
\data_bus[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[7]~27_combout\ = (\data_bus[7]~26_combout\) # ((\Mux68~0_combout\ & \logic_unit|Add1|auto_generated|result_int[8]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux68~0_combout\,
	datab => \logic_unit|Add1|auto_generated|result_int[8]~16_combout\,
	datad => \data_bus[7]~26_combout\,
	combout => \data_bus[7]~27_combout\);

-- Location: LCCOMB_X18_Y24_N16
\data_bus[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[7]~28_combout\ = (\data_bus[7]~27_combout\) # ((\Mux60~0_combout\ & \program_counter|pc_val\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_bus[7]~27_combout\,
	datab => \Mux60~0_combout\,
	datad => \program_counter|pc_val\(7),
	combout => \data_bus[7]~28_combout\);

-- Location: LCCOMB_X21_Y24_N28
\data_bus[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[3]~14_combout\ = (\program_counter|pc_val\(3) & ((\Mux60~0_combout\) # ((\Mux68~0_combout\ & \logic_unit|Add1|auto_generated|result_int[4]~8_combout\)))) # (!\program_counter|pc_val\(3) & (\Mux68~0_combout\ & 
-- ((\logic_unit|Add1|auto_generated|result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|pc_val\(3),
	datab => \Mux68~0_combout\,
	datac => \Mux60~0_combout\,
	datad => \logic_unit|Add1|auto_generated|result_int[4]~8_combout\,
	combout => \data_bus[3]~14_combout\);

-- Location: LCCOMB_X20_Y24_N6
\Mux65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux65~1_combout\ = (\Mux70~1_combout\) # ((\Mux65~0_combout\ & (!\instruction_register|regval\(7) & \Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux65~0_combout\,
	datab => \instruction_register|regval\(7),
	datac => \Mux10~0_combout\,
	datad => \Mux70~1_combout\,
	combout => \Mux65~1_combout\);

-- Location: LCCOMB_X15_Y24_N20
\Mux62~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~2_combout\ = (!\instruction_register|regval\(7) & \Mux62~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction_register|regval\(7),
	datad => \Mux62~0_combout\,
	combout => \Mux62~2_combout\);

-- Location: FF_X21_Y24_N15
\instruction_register|regval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[3]~15_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux62~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(3));

-- Location: LCCOMB_X21_Y24_N14
\data_bus[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[3]~13_combout\ = (\Mux72~0_combout\ & ((\a_register|regval\(3)) # ((\Mux65~1_combout\ & \instruction_register|regval\(3))))) # (!\Mux72~0_combout\ & (\Mux65~1_combout\ & (\instruction_register|regval\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux72~0_combout\,
	datab => \Mux65~1_combout\,
	datac => \instruction_register|regval\(3),
	datad => \a_register|regval\(3),
	combout => \data_bus[3]~13_combout\);

-- Location: LCCOMB_X21_Y24_N26
\data_bus[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[3]~15_combout\ = (\data_bus[3]~14_combout\) # ((\data_bus[3]~13_combout\) # ((\Mux62~1_combout\ & \memory|memory|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux62~1_combout\,
	datab => \memory|memory|altsyncram_component|auto_generated|q_a\(3),
	datac => \data_bus[3]~14_combout\,
	datad => \data_bus[3]~13_combout\,
	combout => \data_bus[3]~15_combout\);

-- Location: FF_X21_Y24_N17
\instruction_register|regval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[2]~12_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux62~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(2));

-- Location: LCCOMB_X21_Y24_N16
\data_bus[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[2]~10_combout\ = (\Mux72~0_combout\ & ((\a_register|regval\(2)) # ((\Mux65~1_combout\ & \instruction_register|regval\(2))))) # (!\Mux72~0_combout\ & (\Mux65~1_combout\ & (\instruction_register|regval\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux72~0_combout\,
	datab => \Mux65~1_combout\,
	datac => \instruction_register|regval\(2),
	datad => \a_register|regval\(2),
	combout => \data_bus[2]~10_combout\);

-- Location: LCCOMB_X21_Y24_N30
\data_bus[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[2]~11_combout\ = (\program_counter|pc_val\(2) & ((\Mux60~0_combout\) # ((\Mux68~0_combout\ & \logic_unit|Add1|auto_generated|result_int[3]~6_combout\)))) # (!\program_counter|pc_val\(2) & (((\Mux68~0_combout\ & 
-- \logic_unit|Add1|auto_generated|result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|pc_val\(2),
	datab => \Mux60~0_combout\,
	datac => \Mux68~0_combout\,
	datad => \logic_unit|Add1|auto_generated|result_int[3]~6_combout\,
	combout => \data_bus[2]~11_combout\);

-- Location: LCCOMB_X21_Y24_N0
\data_bus[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[2]~12_combout\ = (\data_bus[2]~10_combout\) # ((\data_bus[2]~11_combout\) # ((\Mux62~1_combout\ & \memory|memory|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux62~1_combout\,
	datab => \memory|memory|altsyncram_component|auto_generated|q_a\(2),
	datac => \data_bus[2]~10_combout\,
	datad => \data_bus[2]~11_combout\,
	combout => \data_bus[2]~12_combout\);

-- Location: LCCOMB_X19_Y24_N4
\data_bus[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[4]~17_combout\ = (\Mux60~0_combout\ & ((\program_counter|pc_val\(4)) # ((\Mux68~0_combout\ & \logic_unit|Add1|auto_generated|result_int[5]~10_combout\)))) # (!\Mux60~0_combout\ & (\Mux68~0_combout\ & 
-- ((\logic_unit|Add1|auto_generated|result_int[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~0_combout\,
	datab => \Mux68~0_combout\,
	datac => \program_counter|pc_val\(4),
	datad => \logic_unit|Add1|auto_generated|result_int[5]~10_combout\,
	combout => \data_bus[4]~17_combout\);

-- Location: LCCOMB_X19_Y24_N22
\data_bus[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[4]~16_combout\ = (\Mux65~1_combout\ & ((\instruction_register|regval\(4)) # ((\a_register|regval\(4) & \Mux72~0_combout\)))) # (!\Mux65~1_combout\ & (\a_register|regval\(4) & (\Mux72~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux65~1_combout\,
	datab => \a_register|regval\(4),
	datac => \Mux72~0_combout\,
	datad => \instruction_register|regval\(4),
	combout => \data_bus[4]~16_combout\);

-- Location: LCCOMB_X19_Y24_N12
\data_bus[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[4]~18_combout\ = (\data_bus[4]~17_combout\) # ((\data_bus[4]~16_combout\) # ((\memory|memory|altsyncram_component|auto_generated|q_a\(4) & \Mux62~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|memory|altsyncram_component|auto_generated|q_a\(4),
	datab => \Mux62~1_combout\,
	datac => \data_bus[4]~17_combout\,
	datad => \data_bus[4]~16_combout\,
	combout => \data_bus[4]~18_combout\);

-- Location: FF_X19_Y24_N25
\instruction_register|regval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval\(16),
	asdata => \data_bus[4]~18_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux62~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(4));

-- Location: LCCOMB_X16_Y24_N22
\Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux66~0_combout\ = (\instruction_register|regval\(4) & !\instruction_register|regval\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|regval\(4),
	datad => \instruction_register|regval\(7),
	combout => \Mux66~0_combout\);

-- Location: LCCOMB_X18_Y24_N14
\Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~0_combout\ = (\Mux10~0_combout\ & (\Mux66~0_combout\ & (\instruction_register|regval\(5) $ (\instruction_register|regval\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \Mux66~0_combout\,
	datac => \instruction_register|regval\(5),
	datad => \instruction_register|regval\(6),
	combout => \Mux68~0_combout\);

-- Location: LCCOMB_X17_Y24_N4
\flags_register|zero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags_register|zero~0_combout\ = (!\logic_unit|Add1|auto_generated|result_int[4]~8_combout\ & (!\logic_unit|Add1|auto_generated|result_int[2]~4_combout\ & (!\logic_unit|Add1|auto_generated|result_int[1]~2_combout\ & 
-- !\logic_unit|Add1|auto_generated|result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add1|auto_generated|result_int[4]~8_combout\,
	datab => \logic_unit|Add1|auto_generated|result_int[2]~4_combout\,
	datac => \logic_unit|Add1|auto_generated|result_int[1]~2_combout\,
	datad => \logic_unit|Add1|auto_generated|result_int[3]~6_combout\,
	combout => \flags_register|zero~0_combout\);

-- Location: LCCOMB_X17_Y24_N6
\flags_register|zero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags_register|zero~1_combout\ = (!\logic_unit|Add1|auto_generated|result_int[6]~12_combout\ & !\logic_unit|Add1|auto_generated|result_int[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \logic_unit|Add1|auto_generated|result_int[6]~12_combout\,
	datad => \logic_unit|Add1|auto_generated|result_int[5]~10_combout\,
	combout => \flags_register|zero~1_combout\);

-- Location: LCCOMB_X17_Y24_N30
\logic_unit|Add1|auto_generated|result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|result_int[9]~18_combout\ = \logic_unit|Add1|auto_generated|result_int[8]~17\ $ (\Mux71~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mux71~1_combout\,
	cin => \logic_unit|Add1|auto_generated|result_int[8]~17\,
	combout => \logic_unit|Add1|auto_generated|result_int[9]~18_combout\);

-- Location: LCCOMB_X17_Y24_N2
\flags_register|zero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags_register|zero~2_combout\ = (\flags_register|zero~1_combout\ & (!\logic_unit|Add1|auto_generated|result_int[8]~16_combout\ & (!\logic_unit|Add1|auto_generated|result_int[9]~18_combout\ & !\logic_unit|Add1|auto_generated|result_int[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flags_register|zero~1_combout\,
	datab => \logic_unit|Add1|auto_generated|result_int[8]~16_combout\,
	datac => \logic_unit|Add1|auto_generated|result_int[9]~18_combout\,
	datad => \logic_unit|Add1|auto_generated|result_int[7]~14_combout\,
	combout => \flags_register|zero~2_combout\);

-- Location: LCCOMB_X17_Y24_N8
\flags_register|zero~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags_register|zero~3_combout\ = (\Mux68~0_combout\ & (\flags_register|zero~0_combout\ & ((\flags_register|zero~2_combout\)))) # (!\Mux68~0_combout\ & (((\flags_register|zero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux68~0_combout\,
	datab => \flags_register|zero~0_combout\,
	datac => \flags_register|zero~q\,
	datad => \flags_register|zero~2_combout\,
	combout => \flags_register|zero~3_combout\);

-- Location: FF_X17_Y24_N9
\flags_register|zero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval\(16),
	d => \flags_register|zero~3_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flags_register|zero~q\);

-- Location: LCCOMB_X19_Y24_N24
\Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux70~0_combout\ = (!\instruction_register|regval\(4) & (\instruction_register|regval\(6) & ((\flags_register|zero~q\) # (!\instruction_register|regval\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flags_register|zero~q\,
	datab => \instruction_register|regval\(5),
	datac => \instruction_register|regval\(4),
	datad => \instruction_register|regval\(6),
	combout => \Mux70~0_combout\);

-- Location: LCCOMB_X20_Y24_N0
\Mux70~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux70~1_combout\ = (\Mux70~0_combout\ & \program_counter|pc_val[1]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux70~0_combout\,
	datad => \program_counter|pc_val[1]~8_combout\,
	combout => \Mux70~1_combout\);

-- Location: FF_X20_Y24_N13
\program_counter|pc_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	d => \program_counter|pc_val[0]~9_combout\,
	asdata => \data_bus[0]~6_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux70~1_combout\,
	ena => \program_counter|pc_val[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(0));

-- Location: FF_X20_Y24_N15
\program_counter|pc_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	d => \program_counter|pc_val[1]~11_combout\,
	asdata => \data_bus[1]~9_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux70~1_combout\,
	ena => \program_counter|pc_val[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(1));

-- Location: LCCOMB_X21_Y24_N12
\data_bus[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[1]~8_combout\ = (\program_counter|pc_val\(1) & ((\Mux60~0_combout\) # ((\Mux68~0_combout\ & \logic_unit|Add1|auto_generated|result_int[2]~4_combout\)))) # (!\program_counter|pc_val\(1) & (((\Mux68~0_combout\ & 
-- \logic_unit|Add1|auto_generated|result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|pc_val\(1),
	datab => \Mux60~0_combout\,
	datac => \Mux68~0_combout\,
	datad => \logic_unit|Add1|auto_generated|result_int[2]~4_combout\,
	combout => \data_bus[1]~8_combout\);

-- Location: FF_X21_Y24_N23
\instruction_register|regval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[1]~9_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux62~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(1));

-- Location: LCCOMB_X21_Y24_N22
\data_bus[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[1]~7_combout\ = (\Mux72~0_combout\ & ((\a_register|regval\(1)) # ((\Mux65~1_combout\ & \instruction_register|regval\(1))))) # (!\Mux72~0_combout\ & (\Mux65~1_combout\ & (\instruction_register|regval\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux72~0_combout\,
	datab => \Mux65~1_combout\,
	datac => \instruction_register|regval\(1),
	datad => \a_register|regval\(1),
	combout => \data_bus[1]~7_combout\);

-- Location: LCCOMB_X21_Y24_N10
\data_bus[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[1]~9_combout\ = (\data_bus[1]~8_combout\) # ((\data_bus[1]~7_combout\) # ((\memory|memory|altsyncram_component|auto_generated|q_a\(1) & \Mux62~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_bus[1]~8_combout\,
	datab => \memory|memory|altsyncram_component|auto_generated|q_a\(1),
	datac => \Mux62~1_combout\,
	datad => \data_bus[1]~7_combout\,
	combout => \data_bus[1]~9_combout\);

-- Location: LCCOMB_X18_Y24_N30
\data_bus[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[6]~22_combout\ = (\instruction_register|regval\(6) & ((\Mux65~1_combout\) # ((\a_register|regval\(6) & \Mux72~0_combout\)))) # (!\instruction_register|regval\(6) & (\a_register|regval\(6) & (\Mux72~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(6),
	datab => \a_register|regval\(6),
	datac => \Mux72~0_combout\,
	datad => \Mux65~1_combout\,
	combout => \data_bus[6]~22_combout\);

-- Location: LCCOMB_X18_Y24_N18
\data_bus[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[6]~23_combout\ = (\Mux60~0_combout\ & ((\program_counter|pc_val\(6)) # ((\Mux68~0_combout\ & \logic_unit|Add1|auto_generated|result_int[7]~14_combout\)))) # (!\Mux60~0_combout\ & (\Mux68~0_combout\ & 
-- (\logic_unit|Add1|auto_generated|result_int[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~0_combout\,
	datab => \Mux68~0_combout\,
	datac => \logic_unit|Add1|auto_generated|result_int[7]~14_combout\,
	datad => \program_counter|pc_val\(6),
	combout => \data_bus[6]~23_combout\);

-- Location: LCCOMB_X18_Y24_N22
\data_bus[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[6]~24_combout\ = (\data_bus[6]~22_combout\) # ((\data_bus[6]~23_combout\) # ((\memory|memory|altsyncram_component|auto_generated|q_a\(6) & \Mux62~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|memory|altsyncram_component|auto_generated|q_a\(6),
	datab => \Mux62~1_combout\,
	datac => \data_bus[6]~22_combout\,
	datad => \data_bus[6]~23_combout\,
	combout => \data_bus[6]~24_combout\);

-- Location: FF_X18_Y24_N25
\instruction_register|regval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval\(16),
	asdata => \data_bus[6]~24_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux62~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(6));

-- Location: LCCOMB_X19_Y24_N0
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\mc|counter_val\(1) & ((\mc|counter_val\(0)))) # (!\mc|counter_val\(1) & (!\mc|counter_val\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(0),
	datac => \mc|counter_val\(1),
	datad => \mc|counter_val\(0),
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X19_Y24_N6
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (!\mc|counter_val\(2) & (!\mc|counter_val\(3) & \Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(2),
	datac => \mc|counter_val\(3),
	datad => \Mux6~2_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X19_Y24_N26
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\mc|counter_val\(2)) # ((\mc|counter_val\(3)) # ((\mc|counter_val\(1)) # (\mc|counter_val\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(2),
	datab => \mc|counter_val\(3),
	datac => \mc|counter_val\(1),
	datad => \mc|counter_val\(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X19_Y24_N28
\Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (\instruction_register|regval\(4) & (!\Mux6~3_combout\)) # (!\instruction_register|regval\(4) & ((\Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datac => \Mux1~0_combout\,
	datad => \instruction_register|regval\(4),
	combout => \Mux61~0_combout\);

-- Location: LCCOMB_X19_Y24_N30
\Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = (\instruction_register|regval\(4) & ((\Mux1~0_combout\))) # (!\instruction_register|regval\(4) & (!\Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datac => \Mux1~0_combout\,
	datad => \instruction_register|regval\(4),
	combout => \Mux61~1_combout\);

-- Location: LCCOMB_X19_Y24_N10
\Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~2_combout\ = (\instruction_register|regval\(5) & ((\Mux61~1_combout\))) # (!\instruction_register|regval\(5) & (\Mux61~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux61~0_combout\,
	datac => \Mux61~1_combout\,
	datad => \instruction_register|regval\(5),
	combout => \Mux61~2_combout\);

-- Location: LCCOMB_X19_Y24_N2
\Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~3_combout\ = (\instruction_register|regval\(4) & (\Mux1~0_combout\)) # (!\instruction_register|regval\(4) & ((\Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \instruction_register|regval\(4),
	datac => \Mux1~0_combout\,
	combout => \Mux61~3_combout\);

-- Location: LCCOMB_X19_Y24_N14
\mald~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mald~0_combout\ = (\flags_register|zero~q\ & ((!\Mux1~0_combout\))) # (!\flags_register|zero~q\ & (!\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \flags_register|zero~q\,
	datac => \Mux1~0_combout\,
	combout => \mald~0_combout\);

-- Location: LCCOMB_X19_Y24_N8
\Mux61~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~4_combout\ = (\instruction_register|regval\(4) & (\Mux1~0_combout\)) # (!\instruction_register|regval\(4) & ((!\mald~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datac => \mald~0_combout\,
	datad => \instruction_register|regval\(4),
	combout => \Mux61~4_combout\);

-- Location: LCCOMB_X19_Y24_N18
\Mux61~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~5_combout\ = (\instruction_register|regval\(5) & ((\Mux61~4_combout\))) # (!\instruction_register|regval\(5) & (\Mux61~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux61~3_combout\,
	datac => \Mux61~4_combout\,
	datad => \instruction_register|regval\(5),
	combout => \Mux61~5_combout\);

-- Location: LCCOMB_X18_Y24_N6
\Mux61~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~6_combout\ = (\instruction_register|regval\(6) & ((!\Mux61~5_combout\))) # (!\instruction_register|regval\(6) & (!\Mux61~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|regval\(6),
	datac => \Mux61~2_combout\,
	datad => \Mux61~5_combout\,
	combout => \Mux61~6_combout\);

-- Location: LCCOMB_X18_Y24_N0
\memory|address_load\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory|address_load~combout\ = LCELL((\Mux61~6_combout\ & (!\instruction_register|regval\(7) & \clocker|ctval\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~6_combout\,
	datac => \instruction_register|regval\(7),
	datad => \clocker|ctval\(16),
	combout => \memory|address_load~combout\);

-- Location: CLKCTRL_G13
\memory|address_load~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \memory|address_load~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \memory|address_load~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y24_N8
\data_bus[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[5]~19_combout\ = (\instruction_register|regval\(5) & ((\Mux65~1_combout\) # ((\a_register|regval\(5) & \Mux72~0_combout\)))) # (!\instruction_register|regval\(5) & (\a_register|regval\(5) & (\Mux72~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(5),
	datab => \a_register|regval\(5),
	datac => \Mux72~0_combout\,
	datad => \Mux65~1_combout\,
	combout => \data_bus[5]~19_combout\);

-- Location: LCCOMB_X18_Y24_N2
\data_bus[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[5]~20_combout\ = (\Mux60~0_combout\ & ((\program_counter|pc_val\(5)) # ((\Mux68~0_combout\ & \logic_unit|Add1|auto_generated|result_int[6]~12_combout\)))) # (!\Mux60~0_combout\ & (\Mux68~0_combout\ & 
-- ((\logic_unit|Add1|auto_generated|result_int[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~0_combout\,
	datab => \Mux68~0_combout\,
	datac => \program_counter|pc_val\(5),
	datad => \logic_unit|Add1|auto_generated|result_int[6]~12_combout\,
	combout => \data_bus[5]~20_combout\);

-- Location: LCCOMB_X18_Y24_N26
\data_bus[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[5]~21_combout\ = (\data_bus[5]~19_combout\) # ((\data_bus[5]~20_combout\) # ((\memory|memory|altsyncram_component|auto_generated|q_a\(5) & \Mux62~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|memory|altsyncram_component|auto_generated|q_a\(5),
	datab => \Mux62~1_combout\,
	datac => \data_bus[5]~19_combout\,
	datad => \data_bus[5]~20_combout\,
	combout => \data_bus[5]~21_combout\);

-- Location: FF_X18_Y24_N29
\instruction_register|regval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval\(16),
	asdata => \data_bus[5]~21_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux62~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(5));

-- Location: LCCOMB_X15_Y24_N12
\Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux65~0_combout\ = (!\instruction_register|regval\(6) & (\instruction_register|regval\(5) $ (\instruction_register|regval\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(5),
	datab => \instruction_register|regval\(4),
	datad => \instruction_register|regval\(6),
	combout => \Mux65~0_combout\);

-- Location: LCCOMB_X16_Y24_N14
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\mc|counter_val\(1) & (!\mc|counter_val\(3) & (\mc|counter_val\(2) $ (\mc|counter_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(1),
	datab => \mc|counter_val\(2),
	datac => \mc|counter_val\(0),
	datad => \mc|counter_val\(3),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X16_Y24_N30
\Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~1_combout\ = (!\instruction_register|regval\(7) & ((\Mux65~0_combout\ & (\Mux7~0_combout\)) # (!\Mux65~0_combout\ & ((\Mux62~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux65~0_combout\,
	datab => \Mux7~0_combout\,
	datac => \Mux62~0_combout\,
	datad => \instruction_register|regval\(7),
	combout => \Mux62~1_combout\);

-- Location: LCCOMB_X21_Y24_N2
\data_bus[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[0]~5_combout\ = (\logic_unit|Add1|auto_generated|result_int[1]~2_combout\ & ((\Mux68~0_combout\) # ((\Mux60~0_combout\ & \program_counter|pc_val\(0))))) # (!\logic_unit|Add1|auto_generated|result_int[1]~2_combout\ & (\Mux60~0_combout\ & 
-- ((\program_counter|pc_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add1|auto_generated|result_int[1]~2_combout\,
	datab => \Mux60~0_combout\,
	datac => \Mux68~0_combout\,
	datad => \program_counter|pc_val\(0),
	combout => \data_bus[0]~5_combout\);

-- Location: FF_X21_Y24_N5
\instruction_register|regval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[0]~6_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux62~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(0));

-- Location: LCCOMB_X21_Y24_N4
\data_bus[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[0]~4_combout\ = (\Mux72~0_combout\ & ((\a_register|regval\(0)) # ((\Mux65~1_combout\ & \instruction_register|regval\(0))))) # (!\Mux72~0_combout\ & (\Mux65~1_combout\ & (\instruction_register|regval\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux72~0_combout\,
	datab => \Mux65~1_combout\,
	datac => \instruction_register|regval\(0),
	datad => \a_register|regval\(0),
	combout => \data_bus[0]~4_combout\);

-- Location: LCCOMB_X21_Y24_N8
\data_bus[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[0]~6_combout\ = (\data_bus[0]~5_combout\) # ((\data_bus[0]~4_combout\) # ((\Mux62~1_combout\ & \memory|memory|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux62~1_combout\,
	datab => \data_bus[0]~5_combout\,
	datac => \data_bus[0]~4_combout\,
	datad => \memory|memory|altsyncram_component|auto_generated|q_a\(0),
	combout => \data_bus[0]~6_combout\);

-- Location: LCCOMB_X21_Y24_N20
\output_register|regval[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_register|regval[0]~feeder_combout\ = \data_bus[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_bus[0]~6_combout\,
	combout => \output_register|regval[0]~feeder_combout\);

-- Location: FF_X21_Y24_N21
\output_register|regval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	d => \output_register|regval[0]~feeder_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux72~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(0));

-- Location: LCCOMB_X21_Y24_N18
\output_register|regval[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_register|regval[1]~feeder_combout\ = \data_bus[1]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[1]~9_combout\,
	combout => \output_register|regval[1]~feeder_combout\);

-- Location: FF_X21_Y24_N19
\output_register|regval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	d => \output_register|regval[1]~feeder_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux72~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(1));

-- Location: LCCOMB_X21_Y24_N24
\output_register|regval[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_register|regval[2]~feeder_combout\ = \data_bus[2]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[2]~12_combout\,
	combout => \output_register|regval[2]~feeder_combout\);

-- Location: FF_X21_Y24_N25
\output_register|regval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	d => \output_register|regval[2]~feeder_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux72~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(2));

-- Location: LCCOMB_X21_Y24_N6
\output_register|regval[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_register|regval[3]~feeder_combout\ = \data_bus[3]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_bus[3]~15_combout\,
	combout => \output_register|regval[3]~feeder_combout\);

-- Location: FF_X21_Y24_N7
\output_register|regval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	d => \output_register|regval[3]~feeder_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux72~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(3));

-- Location: LCCOMB_X20_Y24_N28
\output_register|regval[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_register|regval[4]~feeder_combout\ = \data_bus[4]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[4]~18_combout\,
	combout => \output_register|regval[4]~feeder_combout\);

-- Location: FF_X20_Y24_N29
\output_register|regval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	d => \output_register|regval[4]~feeder_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux72~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(4));

-- Location: FF_X18_Y24_N11
\output_register|regval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[5]~21_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux72~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(5));

-- Location: FF_X18_Y24_N17
\output_register|regval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[6]~24_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux72~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(6));

-- Location: FF_X18_Y24_N21
\output_register|regval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[16]~clkctrl_outclk\,
	asdata => \data_bus[7]~28_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux72~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(7));

ww_cpu_out(0) <= \cpu_out[0]~output_o\;

ww_cpu_out(1) <= \cpu_out[1]~output_o\;

ww_cpu_out(2) <= \cpu_out[2]~output_o\;

ww_cpu_out(3) <= \cpu_out[3]~output_o\;

ww_cpu_out(4) <= \cpu_out[4]~output_o\;

ww_cpu_out(5) <= \cpu_out[5]~output_o\;

ww_cpu_out(6) <= \cpu_out[6]~output_o\;

ww_cpu_out(7) <= \cpu_out[7]~output_o\;
END structure;


