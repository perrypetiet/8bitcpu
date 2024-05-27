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

-- DATE "05/27/2024 21:03:35"

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
	cpu_out : OUT std_logic_vector(7 DOWNTO 0)
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
SIGNAL \clocker|ctval[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clear_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cpu_out[0]~output_o\ : std_logic;
SIGNAL \cpu_out[1]~output_o\ : std_logic;
SIGNAL \cpu_out[2]~output_o\ : std_logic;
SIGNAL \cpu_out[3]~output_o\ : std_logic;
SIGNAL \cpu_out[4]~output_o\ : std_logic;
SIGNAL \cpu_out[5]~output_o\ : std_logic;
SIGNAL \cpu_out[6]~output_o\ : std_logic;
SIGNAL \cpu_out[7]~output_o\ : std_logic;
SIGNAL \clock_in~input_o\ : std_logic;
SIGNAL \clocker|ctval[0]~0_combout\ : std_logic;
SIGNAL \clocker|ctval[0]~feeder_combout\ : std_logic;
SIGNAL \clocker|ctval[0]~clkctrl_outclk\ : std_logic;
SIGNAL \mc|counter_val[0]~3_combout\ : std_logic;
SIGNAL \clear_in~input_o\ : std_logic;
SIGNAL \clear_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \mc|counter_val[1]~0_combout\ : std_logic;
SIGNAL \mc|counter_val[2]~2_combout\ : std_logic;
SIGNAL \mc|counter_val[3]~1_combout\ : std_logic;
SIGNAL \Mux71~0_combout\ : std_logic;
SIGNAL \program_counter|pc_val[0]~10_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux69~7_combout\ : std_logic;
SIGNAL \Mux68~0_combout\ : std_logic;
SIGNAL \Mux74~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux76~0_combout\ : std_logic;
SIGNAL \Mux82~0_combout\ : std_logic;
SIGNAL \Mux82~1_combout\ : std_logic;
SIGNAL \Mux76~1_combout\ : std_logic;
SIGNAL \Mux74~1_combout\ : std_logic;
SIGNAL \Mux75~0_combout\ : std_logic;
SIGNAL \Mux79~0_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|_~7_combout\ : std_logic;
SIGNAL \Mux73~0_combout\ : std_logic;
SIGNAL \Mux73~1_combout\ : std_logic;
SIGNAL \Mux71~1_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|_~4_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|_~3_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|_~0_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|_~2_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|_~1_combout\ : std_logic;
SIGNAL \a_register|regval[0]~feeder_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \data_bus[3]~9_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|_~8_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \data_bus[7]~21_combout\ : std_logic;
SIGNAL \Mux68~1_combout\ : std_logic;
SIGNAL \Mux68~2_combout\ : std_logic;
SIGNAL \Mux81~0_combout\ : std_logic;
SIGNAL \Mux80~0_combout\ : std_logic;
SIGNAL \program_counter|pc_val[6]~24\ : std_logic;
SIGNAL \program_counter|pc_val[7]~25_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \program_counter|pc_val[0]~8_combout\ : std_logic;
SIGNAL \program_counter|pc_val[0]~12_combout\ : std_logic;
SIGNAL \data_bus[7]~22_combout\ : std_logic;
SIGNAL \data_bus[7]~23_combout\ : std_logic;
SIGNAL \data_bus[3]~10_combout\ : std_logic;
SIGNAL \data_bus[3]~11_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \data_bus[2]~6_combout\ : std_logic;
SIGNAL \data_bus[2]~7_combout\ : std_logic;
SIGNAL \data_bus[2]~8_combout\ : std_logic;
SIGNAL \data_bus[1]~4_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \data_bus[1]~3_combout\ : std_logic;
SIGNAL \data_bus[1]~5_combout\ : std_logic;
SIGNAL \data_bus[5]~16_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|_~6_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|_~5_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \data_bus[5]~15_combout\ : std_logic;
SIGNAL \data_bus[5]~17_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \flags_register|zero~0_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \logic_unit|Add1|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \flags_register|zero~1_combout\ : std_logic;
SIGNAL \flags_register|zero~2_combout\ : std_logic;
SIGNAL \flags_register|zero~3_combout\ : std_logic;
SIGNAL \flags_register|zero~q\ : std_logic;
SIGNAL \mald~0_combout\ : std_logic;
SIGNAL \Mux69~4_combout\ : std_logic;
SIGNAL \Mux69~3_combout\ : std_logic;
SIGNAL \Mux69~5_combout\ : std_logic;
SIGNAL \Mux69~0_combout\ : std_logic;
SIGNAL \Mux69~1_combout\ : std_logic;
SIGNAL \Mux69~2_combout\ : std_logic;
SIGNAL \Mux69~6_combout\ : std_logic;
SIGNAL \Mux69~combout\ : std_logic;
SIGNAL \memory|address_load~combout\ : std_logic;
SIGNAL \memory|address_load~clkctrl_outclk\ : std_logic;
SIGNAL \data_bus[4]~13_combout\ : std_logic;
SIGNAL \data_bus[4]~12_combout\ : std_logic;
SIGNAL \data_bus[4]~14_combout\ : std_logic;
SIGNAL \instruction_register|regval[4]~7_combout\ : std_logic;
SIGNAL \Mux78~0_combout\ : std_logic;
SIGNAL \Mux78~1_combout\ : std_logic;
SIGNAL \program_counter|pc_val[0]~11\ : std_logic;
SIGNAL \program_counter|pc_val[1]~13_combout\ : std_logic;
SIGNAL \program_counter|pc_val[1]~14\ : std_logic;
SIGNAL \program_counter|pc_val[2]~15_combout\ : std_logic;
SIGNAL \program_counter|pc_val[2]~16\ : std_logic;
SIGNAL \program_counter|pc_val[3]~17_combout\ : std_logic;
SIGNAL \program_counter|pc_val[3]~18\ : std_logic;
SIGNAL \program_counter|pc_val[4]~19_combout\ : std_logic;
SIGNAL \program_counter|pc_val[4]~20\ : std_logic;
SIGNAL \program_counter|pc_val[5]~21_combout\ : std_logic;
SIGNAL \program_counter|pc_val[5]~22\ : std_logic;
SIGNAL \program_counter|pc_val[6]~23_combout\ : std_logic;
SIGNAL \data_bus[6]~18_combout\ : std_logic;
SIGNAL \data_bus[6]~19_combout\ : std_logic;
SIGNAL \data_bus[6]~20_combout\ : std_logic;
SIGNAL \instruction_register|regval[6]~8_combout\ : std_logic;
SIGNAL \program_counter|pc_val[0]~9_combout\ : std_logic;
SIGNAL \instruction_register|regval[5]~9_combout\ : std_logic;
SIGNAL \Mux82~2_combout\ : std_logic;
SIGNAL \data_bus[7]~24_combout\ : std_logic;
SIGNAL \instruction_register|regval[7]~6_combout\ : std_logic;
SIGNAL \Mux70~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux70~1_combout\ : std_logic;
SIGNAL \data_bus[0]~1_combout\ : std_logic;
SIGNAL \data_bus[0]~0_combout\ : std_logic;
SIGNAL \data_bus[0]~2_combout\ : std_logic;
SIGNAL \output_register|regval[0]~feeder_combout\ : std_logic;
SIGNAL \output_register|regval[1]~feeder_combout\ : std_logic;
SIGNAL \output_register|regval[2]~feeder_combout\ : std_logic;
SIGNAL \output_register|regval[3]~feeder_combout\ : std_logic;
SIGNAL \output_register|regval[5]~feeder_combout\ : std_logic;
SIGNAL \output_register|regval[6]~feeder_combout\ : std_logic;
SIGNAL \program_counter|pc_val\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \output_register|regval\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \memory|memory|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \a_register|regval\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instruction_register|regval\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mc|counter_val\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clocker|ctval\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \b_register|regval\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clocker|ALT_INV_ctval\ : std_logic_vector(0 DOWNTO 0);

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

\memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \data_bus[7]~23_combout\ & \data_bus[6]~20_combout\ & \data_bus[5]~17_combout\ & \data_bus[4]~14_combout\ & 
\data_bus[3]~11_combout\ & \data_bus[2]~8_combout\ & \data_bus[1]~5_combout\ & \data_bus[0]~2_combout\);

\memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\data_bus[3]~11_combout\ & \data_bus[2]~8_combout\ & \data_bus[1]~5_combout\ & \data_bus[0]~2_combout\);

\memory|memory|altsyncram_component|auto_generated|q_a\(0) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\memory|memory|altsyncram_component|auto_generated|q_a\(1) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\memory|memory|altsyncram_component|auto_generated|q_a\(2) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\memory|memory|altsyncram_component|auto_generated|q_a\(3) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\memory|memory|altsyncram_component|auto_generated|q_a\(4) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\memory|memory|altsyncram_component|auto_generated|q_a\(5) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\memory|memory|altsyncram_component|auto_generated|q_a\(6) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\memory|memory|altsyncram_component|auto_generated|q_a\(7) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\memory|address_load~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \memory|address_load~combout\);

\clocker|ctval[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clocker|ctval\(0));

\clear_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clear_in~input_o\);
\clocker|ALT_INV_ctval\(0) <= NOT \clocker|ctval\(0);
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

-- Location: LCCOMB_X26_Y30_N14
\clocker|ctval[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocker|ctval[0]~0_combout\ = !\clocker|ctval\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clocker|ctval\(0),
	combout => \clocker|ctval[0]~0_combout\);

-- Location: LCCOMB_X26_Y30_N8
\clocker|ctval[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clocker|ctval[0]~feeder_combout\ = \clocker|ctval[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clocker|ctval[0]~0_combout\,
	combout => \clocker|ctval[0]~feeder_combout\);

-- Location: FF_X26_Y30_N9
\clocker|ctval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~input_o\,
	d => \clocker|ctval[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clocker|ctval\(0));

-- Location: CLKCTRL_G12
\clocker|ctval[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clocker|ctval[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clocker|ctval[0]~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y30_N6
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

-- Location: FF_X25_Y30_N11
\mc|counter_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ALT_INV_ctval\(0),
	asdata => \mc|counter_val[0]~3_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc|counter_val\(0));

-- Location: LCCOMB_X24_Y30_N16
\mc|counter_val[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc|counter_val[1]~0_combout\ = \mc|counter_val\(1) $ (\mc|counter_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mc|counter_val\(1),
	datad => \mc|counter_val\(0),
	combout => \mc|counter_val[1]~0_combout\);

-- Location: FF_X25_Y30_N1
\mc|counter_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ALT_INV_ctval\(0),
	asdata => \mc|counter_val[1]~0_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc|counter_val\(1));

-- Location: LCCOMB_X25_Y30_N14
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

-- Location: FF_X25_Y30_N15
\mc|counter_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ALT_INV_ctval\(0),
	d => \mc|counter_val[2]~2_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc|counter_val\(2));

-- Location: LCCOMB_X25_Y30_N4
\mc|counter_val[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc|counter_val[3]~1_combout\ = \mc|counter_val\(3) $ (((\mc|counter_val\(2) & (\mc|counter_val\(1) & \mc|counter_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(2),
	datab => \mc|counter_val\(1),
	datac => \mc|counter_val\(3),
	datad => \mc|counter_val\(0),
	combout => \mc|counter_val[3]~1_combout\);

-- Location: FF_X25_Y30_N5
\mc|counter_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ALT_INV_ctval\(0),
	d => \mc|counter_val[3]~1_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc|counter_val\(3));

-- Location: LCCOMB_X25_Y30_N22
\Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux71~0_combout\ = (!\mc|counter_val\(2) & (!\mc|counter_val\(1) & (\mc|counter_val\(0) & !\mc|counter_val\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(2),
	datab => \mc|counter_val\(1),
	datac => \mc|counter_val\(0),
	datad => \mc|counter_val\(3),
	combout => \Mux71~0_combout\);

-- Location: LCCOMB_X19_Y30_N16
\program_counter|pc_val[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[0]~10_combout\ = \program_counter|pc_val\(0) $ (VCC)
-- \program_counter|pc_val[0]~11\ = CARRY(\program_counter|pc_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \program_counter|pc_val\(0),
	datad => VCC,
	combout => \program_counter|pc_val[0]~10_combout\,
	cout => \program_counter|pc_val[0]~11\);

-- Location: LCCOMB_X25_Y30_N6
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\mc|counter_val\(1) & (\mc|counter_val\(0))) # (!\mc|counter_val\(1) & ((!\mc|counter_val\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(0),
	datab => \mc|counter_val\(1),
	datad => \mc|counter_val\(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X25_Y30_N28
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (!\mc|counter_val\(3) & (!\mc|counter_val\(2) & \Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mc|counter_val\(3),
	datac => \mc|counter_val\(2),
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X26_Y30_N30
\Mux69~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~7_combout\ = (!\instruction_register|regval\(6) & (\Mux6~1_combout\ & (!\instruction_register|regval\(4) & !\instruction_register|regval\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(6),
	datab => \Mux6~1_combout\,
	datac => \instruction_register|regval\(4),
	datad => \instruction_register|regval\(5),
	combout => \Mux69~7_combout\);

-- Location: LCCOMB_X25_Y30_N24
\Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~0_combout\ = (!\mc|counter_val\(0) & (!\mc|counter_val\(1) & (!\mc|counter_val\(2) & !\mc|counter_val\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(0),
	datab => \mc|counter_val\(1),
	datac => \mc|counter_val\(2),
	datad => \mc|counter_val\(3),
	combout => \Mux68~0_combout\);

-- Location: LCCOMB_X26_Y30_N2
\Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux74~0_combout\ = (\instruction_register|regval\(4) & !\instruction_register|regval\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|regval\(4),
	datad => \instruction_register|regval\(7),
	combout => \Mux74~0_combout\);

-- Location: LCCOMB_X25_Y30_N2
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\mc|counter_val\(0) & (!\mc|counter_val\(3) & (!\mc|counter_val\(2) & \mc|counter_val\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(0),
	datab => \mc|counter_val\(3),
	datac => \mc|counter_val\(2),
	datad => \mc|counter_val\(1),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X26_Y30_N24
\Mux76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux76~0_combout\ = (\Mux74~0_combout\ & (\Mux10~0_combout\ & (\instruction_register|regval\(6) $ (\instruction_register|regval\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(6),
	datab => \instruction_register|regval\(5),
	datac => \Mux74~0_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux76~0_combout\);

-- Location: LCCOMB_X25_Y30_N16
\Mux82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux82~0_combout\ = (!\instruction_register|regval\(6) & (\mc|counter_val\(2) & (!\mc|counter_val\(3) & !\mc|counter_val\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(6),
	datab => \mc|counter_val\(2),
	datac => \mc|counter_val\(3),
	datad => \mc|counter_val\(1),
	combout => \Mux82~0_combout\);

-- Location: LCCOMB_X25_Y30_N20
\Mux82~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux82~1_combout\ = (!\mc|counter_val\(0) & \Mux82~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(0),
	datad => \Mux82~0_combout\,
	combout => \Mux82~1_combout\);

-- Location: LCCOMB_X26_Y30_N20
\Mux76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux76~1_combout\ = \instruction_register|regval\(5) $ (\instruction_register|regval\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|regval\(5),
	datad => \instruction_register|regval\(6),
	combout => \Mux76~1_combout\);

-- Location: LCCOMB_X26_Y30_N18
\Mux74~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux74~1_combout\ = (\Mux74~0_combout\ & ((\Mux76~1_combout\ & ((\Mux10~0_combout\))) # (!\Mux76~1_combout\ & (\Mux82~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux82~1_combout\,
	datab => \Mux10~0_combout\,
	datac => \Mux74~0_combout\,
	datad => \Mux76~1_combout\,
	combout => \Mux74~1_combout\);

-- Location: FF_X21_Y30_N19
\a_register|regval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	asdata => \data_bus[6]~20_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux74~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(6));

-- Location: LCCOMB_X26_Y30_N28
\Mux75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux75~0_combout\ = (\Mux82~1_combout\ & (\instruction_register|regval\(5) & (!\instruction_register|regval\(4) & !\instruction_register|regval\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux82~1_combout\,
	datab => \instruction_register|regval\(5),
	datac => \instruction_register|regval\(4),
	datad => \instruction_register|regval\(7),
	combout => \Mux75~0_combout\);

-- Location: FF_X24_Y30_N23
\b_register|regval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	asdata => \data_bus[6]~20_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(6));

-- Location: LCCOMB_X25_Y30_N26
\Mux79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux79~0_combout\ = (\instruction_register|regval\(6) & (!\instruction_register|regval\(5) & (\Mux74~0_combout\ & \Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(6),
	datab => \instruction_register|regval\(5),
	datac => \Mux74~0_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux79~0_combout\);

-- Location: LCCOMB_X24_Y30_N22
\logic_unit|Add1|auto_generated|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|_~7_combout\ = \b_register|regval\(6) $ (\Mux79~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b_register|regval\(6),
	datad => \Mux79~0_combout\,
	combout => \logic_unit|Add1|auto_generated|_~7_combout\);

-- Location: LCCOMB_X19_Y30_N4
\Mux73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux73~0_combout\ = (!\instruction_register|regval\(6) & ((\instruction_register|regval\(5) & (!\instruction_register|regval\(7) & !\instruction_register|regval\(4))) # (!\instruction_register|regval\(5) & (\instruction_register|regval\(7) $ 
-- (\instruction_register|regval\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(5),
	datab => \instruction_register|regval\(6),
	datac => \instruction_register|regval\(7),
	datad => \instruction_register|regval\(4),
	combout => \Mux73~0_combout\);

-- Location: LCCOMB_X25_Y30_N10
\Mux73~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux73~1_combout\ = (\Mux78~1_combout\) # ((\Mux73~0_combout\ & \Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux73~0_combout\,
	datab => \Mux78~1_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux73~1_combout\);

-- Location: LCCOMB_X21_Y30_N0
\Mux71~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux71~1_combout\ = (\Mux71~0_combout\ & !\program_counter|pc_val[0]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux71~0_combout\,
	datad => \program_counter|pc_val[0]~9_combout\,
	combout => \Mux71~1_combout\);

-- Location: FF_X20_Y30_N21
\instruction_register|regval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	asdata => \data_bus[3]~11_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(3));

-- Location: FF_X20_Y30_N19
\b_register|regval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	asdata => \data_bus[3]~11_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(3));

-- Location: LCCOMB_X23_Y30_N26
\logic_unit|Add1|auto_generated|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|_~4_combout\ = \b_register|regval\(3) $ (\Mux79~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b_register|regval\(3),
	datad => \Mux79~0_combout\,
	combout => \logic_unit|Add1|auto_generated|_~4_combout\);

-- Location: FF_X23_Y30_N13
\a_register|regval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	asdata => \data_bus[3]~11_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux74~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(3));

-- Location: FF_X24_Y30_N5
\b_register|regval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	asdata => \data_bus[2]~8_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(2));

-- Location: LCCOMB_X24_Y30_N4
\logic_unit|Add1|auto_generated|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|_~3_combout\ = \b_register|regval\(2) $ (\Mux79~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b_register|regval\(2),
	datad => \Mux79~0_combout\,
	combout => \logic_unit|Add1|auto_generated|_~3_combout\);

-- Location: FF_X21_Y30_N1
\a_register|regval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	asdata => \data_bus[2]~8_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux74~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(2));

-- Location: FF_X21_Y30_N29
\a_register|regval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	asdata => \data_bus[1]~5_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux74~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(1));

-- Location: LCCOMB_X24_Y30_N20
\logic_unit|Add1|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|_~0_combout\ = (\instruction_register|regval\(5)) # (!\instruction_register|regval\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction_register|regval\(6),
	datad => \instruction_register|regval\(5),
	combout => \logic_unit|Add1|auto_generated|_~0_combout\);

-- Location: FF_X24_Y30_N19
\b_register|regval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	asdata => \data_bus[1]~5_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(1));

-- Location: LCCOMB_X24_Y30_N18
\logic_unit|Add1|auto_generated|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|_~2_combout\ = \b_register|regval\(1) $ (((\Mux74~0_combout\ & (!\logic_unit|Add1|auto_generated|_~0_combout\ & \Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux74~0_combout\,
	datab => \logic_unit|Add1|auto_generated|_~0_combout\,
	datac => \b_register|regval\(1),
	datad => \Mux10~0_combout\,
	combout => \logic_unit|Add1|auto_generated|_~2_combout\);

-- Location: FF_X24_Y30_N31
\b_register|regval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	asdata => \data_bus[0]~2_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(0));

-- Location: LCCOMB_X24_Y30_N30
\logic_unit|Add1|auto_generated|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|_~1_combout\ = \b_register|regval\(0) $ (((\Mux74~0_combout\ & (!\logic_unit|Add1|auto_generated|_~0_combout\ & \Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux74~0_combout\,
	datab => \logic_unit|Add1|auto_generated|_~0_combout\,
	datac => \b_register|regval\(0),
	datad => \Mux10~0_combout\,
	combout => \logic_unit|Add1|auto_generated|_~1_combout\);

-- Location: LCCOMB_X23_Y30_N24
\a_register|regval[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_register|regval[0]~feeder_combout\ = \data_bus[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_bus[0]~2_combout\,
	combout => \a_register|regval[0]~feeder_combout\);

-- Location: FF_X23_Y30_N25
\a_register|regval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	d => \a_register|regval[0]~feeder_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux74~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(0));

-- Location: LCCOMB_X23_Y30_N4
\logic_unit|Add1|auto_generated|result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|result_int[0]~1_cout\ = CARRY(\Mux79~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux79~0_combout\,
	datad => VCC,
	cout => \logic_unit|Add1|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X23_Y30_N6
\logic_unit|Add1|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|result_int[1]~2_combout\ = (\logic_unit|Add1|auto_generated|_~1_combout\ & ((\a_register|regval\(0) & (\logic_unit|Add1|auto_generated|result_int[0]~1_cout\ & VCC)) # (!\a_register|regval\(0) & 
-- (!\logic_unit|Add1|auto_generated|result_int[0]~1_cout\)))) # (!\logic_unit|Add1|auto_generated|_~1_combout\ & ((\a_register|regval\(0) & (!\logic_unit|Add1|auto_generated|result_int[0]~1_cout\)) # (!\a_register|regval\(0) & 
-- ((\logic_unit|Add1|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \logic_unit|Add1|auto_generated|result_int[1]~3\ = CARRY((\logic_unit|Add1|auto_generated|_~1_combout\ & (!\a_register|regval\(0) & !\logic_unit|Add1|auto_generated|result_int[0]~1_cout\)) # (!\logic_unit|Add1|auto_generated|_~1_combout\ & 
-- ((!\logic_unit|Add1|auto_generated|result_int[0]~1_cout\) # (!\a_register|regval\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add1|auto_generated|_~1_combout\,
	datab => \a_register|regval\(0),
	datad => VCC,
	cin => \logic_unit|Add1|auto_generated|result_int[0]~1_cout\,
	combout => \logic_unit|Add1|auto_generated|result_int[1]~2_combout\,
	cout => \logic_unit|Add1|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X23_Y30_N8
\logic_unit|Add1|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|result_int[2]~4_combout\ = ((\a_register|regval\(1) $ (\logic_unit|Add1|auto_generated|_~2_combout\ $ (!\logic_unit|Add1|auto_generated|result_int[1]~3\)))) # (GND)
-- \logic_unit|Add1|auto_generated|result_int[2]~5\ = CARRY((\a_register|regval\(1) & ((\logic_unit|Add1|auto_generated|_~2_combout\) # (!\logic_unit|Add1|auto_generated|result_int[1]~3\))) # (!\a_register|regval\(1) & 
-- (\logic_unit|Add1|auto_generated|_~2_combout\ & !\logic_unit|Add1|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_register|regval\(1),
	datab => \logic_unit|Add1|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \logic_unit|Add1|auto_generated|result_int[1]~3\,
	combout => \logic_unit|Add1|auto_generated|result_int[2]~4_combout\,
	cout => \logic_unit|Add1|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X23_Y30_N10
\logic_unit|Add1|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|result_int[3]~6_combout\ = (\logic_unit|Add1|auto_generated|_~3_combout\ & ((\a_register|regval\(2) & (\logic_unit|Add1|auto_generated|result_int[2]~5\ & VCC)) # (!\a_register|regval\(2) & 
-- (!\logic_unit|Add1|auto_generated|result_int[2]~5\)))) # (!\logic_unit|Add1|auto_generated|_~3_combout\ & ((\a_register|regval\(2) & (!\logic_unit|Add1|auto_generated|result_int[2]~5\)) # (!\a_register|regval\(2) & 
-- ((\logic_unit|Add1|auto_generated|result_int[2]~5\) # (GND)))))
-- \logic_unit|Add1|auto_generated|result_int[3]~7\ = CARRY((\logic_unit|Add1|auto_generated|_~3_combout\ & (!\a_register|regval\(2) & !\logic_unit|Add1|auto_generated|result_int[2]~5\)) # (!\logic_unit|Add1|auto_generated|_~3_combout\ & 
-- ((!\logic_unit|Add1|auto_generated|result_int[2]~5\) # (!\a_register|regval\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add1|auto_generated|_~3_combout\,
	datab => \a_register|regval\(2),
	datad => VCC,
	cin => \logic_unit|Add1|auto_generated|result_int[2]~5\,
	combout => \logic_unit|Add1|auto_generated|result_int[3]~6_combout\,
	cout => \logic_unit|Add1|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X23_Y30_N12
\logic_unit|Add1|auto_generated|result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|result_int[4]~8_combout\ = ((\logic_unit|Add1|auto_generated|_~4_combout\ $ (\a_register|regval\(3) $ (!\logic_unit|Add1|auto_generated|result_int[3]~7\)))) # (GND)
-- \logic_unit|Add1|auto_generated|result_int[4]~9\ = CARRY((\logic_unit|Add1|auto_generated|_~4_combout\ & ((\a_register|regval\(3)) # (!\logic_unit|Add1|auto_generated|result_int[3]~7\))) # (!\logic_unit|Add1|auto_generated|_~4_combout\ & 
-- (\a_register|regval\(3) & !\logic_unit|Add1|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add1|auto_generated|_~4_combout\,
	datab => \a_register|regval\(3),
	datad => VCC,
	cin => \logic_unit|Add1|auto_generated|result_int[3]~7\,
	combout => \logic_unit|Add1|auto_generated|result_int[4]~8_combout\,
	cout => \logic_unit|Add1|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X20_Y30_N20
\data_bus[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[3]~9_combout\ = (\Mux76~0_combout\ & ((\logic_unit|Add1|auto_generated|result_int[4]~8_combout\) # ((\Mux73~1_combout\ & \instruction_register|regval\(3))))) # (!\Mux76~0_combout\ & (\Mux73~1_combout\ & (\instruction_register|regval\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux76~0_combout\,
	datab => \Mux73~1_combout\,
	datac => \instruction_register|regval\(3),
	datad => \logic_unit|Add1|auto_generated|result_int[4]~8_combout\,
	combout => \data_bus[3]~9_combout\);

-- Location: FF_X21_Y30_N11
\a_register|regval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	asdata => \data_bus[7]~23_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux74~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(7));

-- Location: FF_X24_Y30_N25
\b_register|regval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	asdata => \data_bus[7]~23_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(7));

-- Location: LCCOMB_X24_Y30_N24
\logic_unit|Add1|auto_generated|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|_~8_combout\ = \b_register|regval\(7) $ (\Mux79~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b_register|regval\(7),
	datad => \Mux79~0_combout\,
	combout => \logic_unit|Add1|auto_generated|_~8_combout\);

-- Location: LCCOMB_X23_Y30_N18
\logic_unit|Add1|auto_generated|result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|result_int[7]~14_combout\ = (\a_register|regval\(6) & ((\logic_unit|Add1|auto_generated|_~7_combout\ & (\logic_unit|Add1|auto_generated|result_int[6]~13\ & VCC)) # (!\logic_unit|Add1|auto_generated|_~7_combout\ & 
-- (!\logic_unit|Add1|auto_generated|result_int[6]~13\)))) # (!\a_register|regval\(6) & ((\logic_unit|Add1|auto_generated|_~7_combout\ & (!\logic_unit|Add1|auto_generated|result_int[6]~13\)) # (!\logic_unit|Add1|auto_generated|_~7_combout\ & 
-- ((\logic_unit|Add1|auto_generated|result_int[6]~13\) # (GND)))))
-- \logic_unit|Add1|auto_generated|result_int[7]~15\ = CARRY((\a_register|regval\(6) & (!\logic_unit|Add1|auto_generated|_~7_combout\ & !\logic_unit|Add1|auto_generated|result_int[6]~13\)) # (!\a_register|regval\(6) & 
-- ((!\logic_unit|Add1|auto_generated|result_int[6]~13\) # (!\logic_unit|Add1|auto_generated|_~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_register|regval\(6),
	datab => \logic_unit|Add1|auto_generated|_~7_combout\,
	datad => VCC,
	cin => \logic_unit|Add1|auto_generated|result_int[6]~13\,
	combout => \logic_unit|Add1|auto_generated|result_int[7]~14_combout\,
	cout => \logic_unit|Add1|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X23_Y30_N20
\logic_unit|Add1|auto_generated|result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|result_int[8]~16_combout\ = ((\a_register|regval\(7) $ (\logic_unit|Add1|auto_generated|_~8_combout\ $ (!\logic_unit|Add1|auto_generated|result_int[7]~15\)))) # (GND)
-- \logic_unit|Add1|auto_generated|result_int[8]~17\ = CARRY((\a_register|regval\(7) & ((\logic_unit|Add1|auto_generated|_~8_combout\) # (!\logic_unit|Add1|auto_generated|result_int[7]~15\))) # (!\a_register|regval\(7) & 
-- (\logic_unit|Add1|auto_generated|_~8_combout\ & !\logic_unit|Add1|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_register|regval\(7),
	datab => \logic_unit|Add1|auto_generated|_~8_combout\,
	datad => VCC,
	cin => \logic_unit|Add1|auto_generated|result_int[7]~15\,
	combout => \logic_unit|Add1|auto_generated|result_int[8]~16_combout\,
	cout => \logic_unit|Add1|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X21_Y30_N14
\data_bus[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[7]~21_combout\ = (\instruction_register|regval\(7) & ((\Mux73~1_combout\) # ((\Mux76~0_combout\ & \logic_unit|Add1|auto_generated|result_int[8]~16_combout\)))) # (!\instruction_register|regval\(7) & (\Mux76~0_combout\ & 
-- ((\logic_unit|Add1|auto_generated|result_int[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(7),
	datab => \Mux76~0_combout\,
	datac => \Mux73~1_combout\,
	datad => \logic_unit|Add1|auto_generated|result_int[8]~16_combout\,
	combout => \data_bus[7]~21_combout\);

-- Location: LCCOMB_X19_Y30_N6
\Mux68~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~1_combout\ = (\instruction_register|regval\(7) & ((\instruction_register|regval\(5)) # ((\instruction_register|regval\(6)) # (\instruction_register|regval\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(5),
	datab => \instruction_register|regval\(6),
	datac => \instruction_register|regval\(7),
	datad => \instruction_register|regval\(4),
	combout => \Mux68~1_combout\);

-- Location: LCCOMB_X20_Y30_N18
\Mux68~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~2_combout\ = (!\Mux68~1_combout\ & \Mux68~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux68~1_combout\,
	datad => \Mux68~0_combout\,
	combout => \Mux68~2_combout\);

-- Location: LCCOMB_X20_Y30_N8
\Mux81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux81~0_combout\ = (\instruction_register|regval\(5) & (\instruction_register|regval\(6) & (\Mux74~0_combout\ & \Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(5),
	datab => \instruction_register|regval\(6),
	datac => \Mux74~0_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux81~0_combout\);

-- Location: LCCOMB_X20_Y30_N26
\Mux80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux80~0_combout\ = (\Mux81~0_combout\) # (\Mux82~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux81~0_combout\,
	datad => \Mux82~2_combout\,
	combout => \Mux80~0_combout\);

-- Location: LCCOMB_X19_Y30_N28
\program_counter|pc_val[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[6]~23_combout\ = (\program_counter|pc_val\(6) & (\program_counter|pc_val[5]~22\ $ (GND))) # (!\program_counter|pc_val\(6) & (!\program_counter|pc_val[5]~22\ & VCC))
-- \program_counter|pc_val[6]~24\ = CARRY((\program_counter|pc_val\(6) & !\program_counter|pc_val[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \program_counter|pc_val\(6),
	datad => VCC,
	cin => \program_counter|pc_val[5]~22\,
	combout => \program_counter|pc_val[6]~23_combout\,
	cout => \program_counter|pc_val[6]~24\);

-- Location: LCCOMB_X19_Y30_N30
\program_counter|pc_val[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[7]~25_combout\ = \program_counter|pc_val\(7) $ (\program_counter|pc_val[6]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|pc_val\(7),
	cin => \program_counter|pc_val[6]~24\,
	combout => \program_counter|pc_val[7]~25_combout\);

-- Location: LCCOMB_X19_Y30_N14
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

-- Location: LCCOMB_X25_Y30_N8
\program_counter|pc_val[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[0]~8_combout\ = (!\mc|counter_val\(2) & (\mc|counter_val\(1) & (!\mc|counter_val\(0) & !\mc|counter_val\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(2),
	datab => \mc|counter_val\(1),
	datac => \mc|counter_val\(0),
	datad => \mc|counter_val\(3),
	combout => \program_counter|pc_val[0]~8_combout\);

-- Location: LCCOMB_X21_Y30_N28
\program_counter|pc_val[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[0]~12_combout\ = (\program_counter|pc_val[0]~8_combout\ & !\program_counter|pc_val[0]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|pc_val[0]~8_combout\,
	datad => \program_counter|pc_val[0]~9_combout\,
	combout => \program_counter|pc_val[0]~12_combout\);

-- Location: FF_X19_Y30_N31
\program_counter|pc_val[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	d => \program_counter|pc_val[7]~25_combout\,
	asdata => \~GND~combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux78~1_combout\,
	ena => \program_counter|pc_val[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(7));

-- Location: LCCOMB_X21_Y30_N4
\data_bus[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[7]~22_combout\ = (\a_register|regval\(7) & ((\Mux80~0_combout\) # ((\Mux68~2_combout\ & \program_counter|pc_val\(7))))) # (!\a_register|regval\(7) & (\Mux68~2_combout\ & ((\program_counter|pc_val\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_register|regval\(7),
	datab => \Mux68~2_combout\,
	datac => \Mux80~0_combout\,
	datad => \program_counter|pc_val\(7),
	combout => \data_bus[7]~22_combout\);

-- Location: LCCOMB_X21_Y30_N6
\data_bus[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[7]~23_combout\ = (\data_bus[7]~21_combout\) # ((\data_bus[7]~22_combout\) # ((\memory|memory|altsyncram_component|auto_generated|q_a\(7) & \Mux70~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|memory|altsyncram_component|auto_generated|q_a\(7),
	datab => \Mux70~1_combout\,
	datac => \data_bus[7]~21_combout\,
	datad => \data_bus[7]~22_combout\,
	combout => \data_bus[7]~23_combout\);

-- Location: M9K_X22_Y30_N0
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
	portawe => \Mux82~2_combout\,
	portare => VCC,
	clk0 => \memory|address_load~clkctrl_outclk\,
	portadatain => \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X20_Y30_N14
\data_bus[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[3]~10_combout\ = (\program_counter|pc_val\(3) & ((\Mux68~2_combout\) # ((\a_register|regval\(3) & \Mux80~0_combout\)))) # (!\program_counter|pc_val\(3) & (\a_register|regval\(3) & (\Mux80~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|pc_val\(3),
	datab => \a_register|regval\(3),
	datac => \Mux80~0_combout\,
	datad => \Mux68~2_combout\,
	combout => \data_bus[3]~10_combout\);

-- Location: LCCOMB_X20_Y30_N24
\data_bus[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[3]~11_combout\ = (\data_bus[3]~9_combout\) # ((\data_bus[3]~10_combout\) # ((\Mux70~1_combout\ & \memory|memory|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux70~1_combout\,
	datab => \data_bus[3]~9_combout\,
	datac => \memory|memory|altsyncram_component|auto_generated|q_a\(3),
	datad => \data_bus[3]~10_combout\,
	combout => \data_bus[3]~11_combout\);

-- Location: FF_X20_Y30_N23
\instruction_register|regval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	asdata => \data_bus[2]~8_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(2));

-- Location: LCCOMB_X20_Y30_N22
\data_bus[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[2]~6_combout\ = (\Mux76~0_combout\ & ((\logic_unit|Add1|auto_generated|result_int[3]~6_combout\) # ((\Mux73~1_combout\ & \instruction_register|regval\(2))))) # (!\Mux76~0_combout\ & (\Mux73~1_combout\ & (\instruction_register|regval\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux76~0_combout\,
	datab => \Mux73~1_combout\,
	datac => \instruction_register|regval\(2),
	datad => \logic_unit|Add1|auto_generated|result_int[3]~6_combout\,
	combout => \data_bus[2]~6_combout\);

-- Location: LCCOMB_X20_Y30_N28
\data_bus[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[2]~7_combout\ = (\a_register|regval\(2) & ((\Mux80~0_combout\) # ((\Mux68~2_combout\ & \program_counter|pc_val\(2))))) # (!\a_register|regval\(2) & (\Mux68~2_combout\ & ((\program_counter|pc_val\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_register|regval\(2),
	datab => \Mux68~2_combout\,
	datac => \Mux80~0_combout\,
	datad => \program_counter|pc_val\(2),
	combout => \data_bus[2]~7_combout\);

-- Location: LCCOMB_X20_Y30_N10
\data_bus[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[2]~8_combout\ = (\data_bus[2]~6_combout\) # ((\data_bus[2]~7_combout\) # ((\Mux70~1_combout\ & \memory|memory|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux70~1_combout\,
	datab => \memory|memory|altsyncram_component|auto_generated|q_a\(2),
	datac => \data_bus[2]~6_combout\,
	datad => \data_bus[2]~7_combout\,
	combout => \data_bus[2]~8_combout\);

-- Location: LCCOMB_X20_Y30_N30
\data_bus[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[1]~4_combout\ = (\program_counter|pc_val\(1) & ((\Mux68~2_combout\) # ((\a_register|regval\(1) & \Mux80~0_combout\)))) # (!\program_counter|pc_val\(1) & (\a_register|regval\(1) & (\Mux80~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|pc_val\(1),
	datab => \a_register|regval\(1),
	datac => \Mux80~0_combout\,
	datad => \Mux68~2_combout\,
	combout => \data_bus[1]~4_combout\);

-- Location: FF_X20_Y30_N1
\instruction_register|regval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	asdata => \data_bus[1]~5_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(1));

-- Location: LCCOMB_X20_Y30_N0
\data_bus[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[1]~3_combout\ = (\Mux76~0_combout\ & ((\logic_unit|Add1|auto_generated|result_int[2]~4_combout\) # ((\Mux73~1_combout\ & \instruction_register|regval\(1))))) # (!\Mux76~0_combout\ & (\Mux73~1_combout\ & (\instruction_register|regval\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux76~0_combout\,
	datab => \Mux73~1_combout\,
	datac => \instruction_register|regval\(1),
	datad => \logic_unit|Add1|auto_generated|result_int[2]~4_combout\,
	combout => \data_bus[1]~3_combout\);

-- Location: LCCOMB_X20_Y30_N12
\data_bus[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[1]~5_combout\ = (\data_bus[1]~4_combout\) # ((\data_bus[1]~3_combout\) # ((\Mux70~1_combout\ & \memory|memory|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux70~1_combout\,
	datab => \memory|memory|altsyncram_component|auto_generated|q_a\(1),
	datac => \data_bus[1]~4_combout\,
	datad => \data_bus[1]~3_combout\,
	combout => \data_bus[1]~5_combout\);

-- Location: LCCOMB_X21_Y30_N22
\data_bus[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[5]~16_combout\ = (\Mux80~0_combout\ & ((\a_register|regval\(5)) # ((\Mux68~2_combout\ & \program_counter|pc_val\(5))))) # (!\Mux80~0_combout\ & (\Mux68~2_combout\ & ((\program_counter|pc_val\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux80~0_combout\,
	datab => \Mux68~2_combout\,
	datac => \a_register|regval\(5),
	datad => \program_counter|pc_val\(5),
	combout => \data_bus[5]~16_combout\);

-- Location: FF_X24_Y30_N1
\b_register|regval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	asdata => \data_bus[5]~17_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(5));

-- Location: LCCOMB_X24_Y30_N0
\logic_unit|Add1|auto_generated|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|_~6_combout\ = \b_register|regval\(5) $ (\Mux79~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b_register|regval\(5),
	datad => \Mux79~0_combout\,
	combout => \logic_unit|Add1|auto_generated|_~6_combout\);

-- Location: FF_X23_Y30_N15
\a_register|regval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	asdata => \data_bus[4]~14_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux74~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(4));

-- Location: FF_X24_Y30_N15
\b_register|regval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	asdata => \data_bus[4]~14_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(4));

-- Location: LCCOMB_X24_Y30_N14
\logic_unit|Add1|auto_generated|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|_~5_combout\ = \b_register|regval\(4) $ (\Mux79~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b_register|regval\(4),
	datad => \Mux79~0_combout\,
	combout => \logic_unit|Add1|auto_generated|_~5_combout\);

-- Location: LCCOMB_X23_Y30_N14
\logic_unit|Add1|auto_generated|result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|result_int[5]~10_combout\ = (\a_register|regval\(4) & ((\logic_unit|Add1|auto_generated|_~5_combout\ & (\logic_unit|Add1|auto_generated|result_int[4]~9\ & VCC)) # (!\logic_unit|Add1|auto_generated|_~5_combout\ & 
-- (!\logic_unit|Add1|auto_generated|result_int[4]~9\)))) # (!\a_register|regval\(4) & ((\logic_unit|Add1|auto_generated|_~5_combout\ & (!\logic_unit|Add1|auto_generated|result_int[4]~9\)) # (!\logic_unit|Add1|auto_generated|_~5_combout\ & 
-- ((\logic_unit|Add1|auto_generated|result_int[4]~9\) # (GND)))))
-- \logic_unit|Add1|auto_generated|result_int[5]~11\ = CARRY((\a_register|regval\(4) & (!\logic_unit|Add1|auto_generated|_~5_combout\ & !\logic_unit|Add1|auto_generated|result_int[4]~9\)) # (!\a_register|regval\(4) & 
-- ((!\logic_unit|Add1|auto_generated|result_int[4]~9\) # (!\logic_unit|Add1|auto_generated|_~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_register|regval\(4),
	datab => \logic_unit|Add1|auto_generated|_~5_combout\,
	datad => VCC,
	cin => \logic_unit|Add1|auto_generated|result_int[4]~9\,
	combout => \logic_unit|Add1|auto_generated|result_int[5]~10_combout\,
	cout => \logic_unit|Add1|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X23_Y30_N16
\logic_unit|Add1|auto_generated|result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|result_int[6]~12_combout\ = ((\a_register|regval\(5) $ (\logic_unit|Add1|auto_generated|_~6_combout\ $ (!\logic_unit|Add1|auto_generated|result_int[5]~11\)))) # (GND)
-- \logic_unit|Add1|auto_generated|result_int[6]~13\ = CARRY((\a_register|regval\(5) & ((\logic_unit|Add1|auto_generated|_~6_combout\) # (!\logic_unit|Add1|auto_generated|result_int[5]~11\))) # (!\a_register|regval\(5) & 
-- (\logic_unit|Add1|auto_generated|_~6_combout\ & !\logic_unit|Add1|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_register|regval\(5),
	datab => \logic_unit|Add1|auto_generated|_~6_combout\,
	datad => VCC,
	cin => \logic_unit|Add1|auto_generated|result_int[5]~11\,
	combout => \logic_unit|Add1|auto_generated|result_int[6]~12_combout\,
	cout => \logic_unit|Add1|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X21_Y30_N8
\data_bus[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[5]~15_combout\ = (\instruction_register|regval\(5) & ((\Mux73~1_combout\) # ((\Mux76~0_combout\ & \logic_unit|Add1|auto_generated|result_int[6]~12_combout\)))) # (!\instruction_register|regval\(5) & (\Mux76~0_combout\ & 
-- ((\logic_unit|Add1|auto_generated|result_int[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(5),
	datab => \Mux76~0_combout\,
	datac => \Mux73~1_combout\,
	datad => \logic_unit|Add1|auto_generated|result_int[6]~12_combout\,
	combout => \data_bus[5]~15_combout\);

-- Location: LCCOMB_X21_Y30_N2
\data_bus[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[5]~17_combout\ = (\data_bus[5]~16_combout\) # ((\data_bus[5]~15_combout\) # ((\Mux70~1_combout\ & \memory|memory|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux70~1_combout\,
	datab => \memory|memory|altsyncram_component|auto_generated|q_a\(5),
	datac => \data_bus[5]~16_combout\,
	datad => \data_bus[5]~15_combout\,
	combout => \data_bus[5]~17_combout\);

-- Location: FF_X21_Y30_N23
\a_register|regval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	asdata => \data_bus[5]~17_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux74~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(5));

-- Location: LCCOMB_X23_Y30_N28
\flags_register|zero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags_register|zero~0_combout\ = (!\logic_unit|Add1|auto_generated|result_int[7]~14_combout\ & (!\logic_unit|Add1|auto_generated|result_int[6]~12_combout\ & (!\logic_unit|Add1|auto_generated|result_int[5]~10_combout\ & 
-- !\logic_unit|Add1|auto_generated|result_int[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add1|auto_generated|result_int[7]~14_combout\,
	datab => \logic_unit|Add1|auto_generated|result_int[6]~12_combout\,
	datac => \logic_unit|Add1|auto_generated|result_int[5]~10_combout\,
	datad => \logic_unit|Add1|auto_generated|result_int[8]~16_combout\,
	combout => \flags_register|zero~0_combout\);

-- Location: LCCOMB_X23_Y30_N22
\logic_unit|Add1|auto_generated|result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1|auto_generated|result_int[9]~18_combout\ = \logic_unit|Add1|auto_generated|result_int[8]~17\ $ (\Mux79~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mux79~0_combout\,
	cin => \logic_unit|Add1|auto_generated|result_int[8]~17\,
	combout => \logic_unit|Add1|auto_generated|result_int[9]~18_combout\);

-- Location: LCCOMB_X23_Y30_N30
\flags_register|zero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags_register|zero~1_combout\ = (\logic_unit|Add1|auto_generated|result_int[2]~4_combout\) # ((\logic_unit|Add1|auto_generated|result_int[9]~18_combout\) # (\logic_unit|Add1|auto_generated|result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \logic_unit|Add1|auto_generated|result_int[2]~4_combout\,
	datac => \logic_unit|Add1|auto_generated|result_int[9]~18_combout\,
	datad => \logic_unit|Add1|auto_generated|result_int[1]~2_combout\,
	combout => \flags_register|zero~1_combout\);

-- Location: LCCOMB_X23_Y30_N2
\flags_register|zero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags_register|zero~2_combout\ = (\logic_unit|Add1|auto_generated|result_int[3]~6_combout\) # ((\flags_register|zero~1_combout\) # (\logic_unit|Add1|auto_generated|result_int[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add1|auto_generated|result_int[3]~6_combout\,
	datac => \flags_register|zero~1_combout\,
	datad => \logic_unit|Add1|auto_generated|result_int[4]~8_combout\,
	combout => \flags_register|zero~2_combout\);

-- Location: LCCOMB_X23_Y30_N0
\flags_register|zero~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \flags_register|zero~3_combout\ = (\Mux76~0_combout\ & (\flags_register|zero~0_combout\ & ((!\flags_register|zero~2_combout\)))) # (!\Mux76~0_combout\ & (((\flags_register|zero~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux76~0_combout\,
	datab => \flags_register|zero~0_combout\,
	datac => \flags_register|zero~q\,
	datad => \flags_register|zero~2_combout\,
	combout => \flags_register|zero~3_combout\);

-- Location: FF_X23_Y30_N1
\flags_register|zero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval\(0),
	d => \flags_register|zero~3_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flags_register|zero~q\);

-- Location: LCCOMB_X25_Y30_N30
\mald~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mald~0_combout\ = (\flags_register|zero~q\ & (!\Mux68~0_combout\)) # (!\flags_register|zero~q\ & ((!\Mux68~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux68~0_combout\,
	datac => \flags_register|zero~q\,
	datad => \Mux68~0_combout\,
	combout => \mald~0_combout\);

-- Location: LCCOMB_X26_Y30_N12
\Mux69~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~4_combout\ = (\instruction_register|regval\(4) & (\Mux68~0_combout\)) # (!\instruction_register|regval\(4) & ((!\mald~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux68~0_combout\,
	datac => \instruction_register|regval\(4),
	datad => \mald~0_combout\,
	combout => \Mux69~4_combout\);

-- Location: LCCOMB_X26_Y30_N22
\Mux69~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~3_combout\ = (\instruction_register|regval\(4) & ((\Mux68~0_combout\))) # (!\instruction_register|regval\(4) & (\Mux68~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux68~0_combout\,
	datac => \instruction_register|regval\(4),
	datad => \Mux68~0_combout\,
	combout => \Mux69~3_combout\);

-- Location: LCCOMB_X26_Y30_N4
\Mux69~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~5_combout\ = (\instruction_register|regval\(5) & (!\Mux69~4_combout\)) # (!\instruction_register|regval\(5) & ((!\Mux69~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~4_combout\,
	datac => \Mux69~3_combout\,
	datad => \instruction_register|regval\(5),
	combout => \Mux69~5_combout\);

-- Location: LCCOMB_X27_Y30_N28
\Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~0_combout\ = (\instruction_register|regval\(4) & (\Mux6~1_combout\)) # (!\instruction_register|regval\(4) & ((\Mux68~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datac => \Mux68~0_combout\,
	datad => \instruction_register|regval\(4),
	combout => \Mux69~0_combout\);

-- Location: LCCOMB_X27_Y30_N18
\Mux69~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~1_combout\ = (\instruction_register|regval\(4) & ((\Mux68~0_combout\))) # (!\instruction_register|regval\(4) & (\Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datac => \Mux68~0_combout\,
	datad => \instruction_register|regval\(4),
	combout => \Mux69~1_combout\);

-- Location: LCCOMB_X27_Y30_N14
\Mux69~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~2_combout\ = (\instruction_register|regval\(5) & ((!\Mux69~1_combout\))) # (!\instruction_register|regval\(5) & (!\Mux69~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux69~0_combout\,
	datac => \instruction_register|regval\(5),
	datad => \Mux69~1_combout\,
	combout => \Mux69~2_combout\);

-- Location: LCCOMB_X26_Y30_N26
\Mux69~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~6_combout\ = (\instruction_register|regval\(6) & (\Mux69~5_combout\)) # (!\instruction_register|regval\(6) & ((\Mux69~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux69~5_combout\,
	datac => \Mux69~2_combout\,
	datad => \instruction_register|regval\(6),
	combout => \Mux69~6_combout\);

-- Location: LCCOMB_X26_Y30_N10
Mux69 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~combout\ = (\instruction_register|regval\(7) & (\Mux69~7_combout\)) # (!\instruction_register|regval\(7) & ((!\Mux69~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~7_combout\,
	datac => \Mux69~6_combout\,
	datad => \instruction_register|regval\(7),
	combout => \Mux69~combout\);

-- Location: LCCOMB_X26_Y30_N0
\memory|address_load\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory|address_load~combout\ = LCELL((\clocker|ctval\(0) & \Mux69~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clocker|ctval\(0),
	datad => \Mux69~combout\,
	combout => \memory|address_load~combout\);

-- Location: CLKCTRL_G11
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

-- Location: LCCOMB_X20_Y30_N2
\data_bus[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[4]~13_combout\ = (\a_register|regval\(4) & ((\Mux80~0_combout\) # ((\program_counter|pc_val\(4) & \Mux68~2_combout\)))) # (!\a_register|regval\(4) & (\program_counter|pc_val\(4) & ((\Mux68~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_register|regval\(4),
	datab => \program_counter|pc_val\(4),
	datac => \Mux80~0_combout\,
	datad => \Mux68~2_combout\,
	combout => \data_bus[4]~13_combout\);

-- Location: LCCOMB_X27_Y30_N10
\data_bus[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[4]~12_combout\ = (\Mux73~1_combout\ & ((\instruction_register|regval\(4)) # ((\Mux76~0_combout\ & \logic_unit|Add1|auto_generated|result_int[5]~10_combout\)))) # (!\Mux73~1_combout\ & (\Mux76~0_combout\ & 
-- ((\logic_unit|Add1|auto_generated|result_int[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux73~1_combout\,
	datab => \Mux76~0_combout\,
	datac => \instruction_register|regval\(4),
	datad => \logic_unit|Add1|auto_generated|result_int[5]~10_combout\,
	combout => \data_bus[4]~12_combout\);

-- Location: LCCOMB_X27_Y30_N16
\data_bus[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[4]~14_combout\ = (\data_bus[4]~13_combout\) # ((\data_bus[4]~12_combout\) # ((\Mux70~1_combout\ & \memory|memory|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux70~1_combout\,
	datab => \memory|memory|altsyncram_component|auto_generated|q_a\(4),
	datac => \data_bus[4]~13_combout\,
	datad => \data_bus[4]~12_combout\,
	combout => \data_bus[4]~14_combout\);

-- Location: LCCOMB_X27_Y30_N12
\instruction_register|regval[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_register|regval[4]~7_combout\ = (\Mux71~0_combout\ & ((\program_counter|pc_val[0]~9_combout\ & (\instruction_register|regval\(4))) # (!\program_counter|pc_val[0]~9_combout\ & ((\data_bus[4]~14_combout\))))) # (!\Mux71~0_combout\ & 
-- (((\instruction_register|regval\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux71~0_combout\,
	datab => \program_counter|pc_val[0]~9_combout\,
	datac => \instruction_register|regval\(4),
	datad => \data_bus[4]~14_combout\,
	combout => \instruction_register|regval[4]~7_combout\);

-- Location: FF_X27_Y30_N13
\instruction_register|regval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval\(0),
	d => \instruction_register|regval[4]~7_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(4));

-- Location: LCCOMB_X26_Y30_N6
\Mux78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux78~0_combout\ = (\instruction_register|regval\(6) & (!\instruction_register|regval\(7) & ((\flags_register|zero~q\) # (!\instruction_register|regval\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(6),
	datab => \instruction_register|regval\(5),
	datac => \flags_register|zero~q\,
	datad => \instruction_register|regval\(7),
	combout => \Mux78~0_combout\);

-- Location: LCCOMB_X25_Y30_N0
\Mux78~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux78~1_combout\ = (!\instruction_register|regval\(4) & (\program_counter|pc_val[0]~8_combout\ & \Mux78~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(4),
	datab => \program_counter|pc_val[0]~8_combout\,
	datad => \Mux78~0_combout\,
	combout => \Mux78~1_combout\);

-- Location: FF_X19_Y30_N17
\program_counter|pc_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	d => \program_counter|pc_val[0]~10_combout\,
	asdata => \data_bus[0]~2_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux78~1_combout\,
	ena => \program_counter|pc_val[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(0));

-- Location: LCCOMB_X19_Y30_N18
\program_counter|pc_val[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[1]~13_combout\ = (\program_counter|pc_val\(1) & (!\program_counter|pc_val[0]~11\)) # (!\program_counter|pc_val\(1) & ((\program_counter|pc_val[0]~11\) # (GND)))
-- \program_counter|pc_val[1]~14\ = CARRY((!\program_counter|pc_val[0]~11\) # (!\program_counter|pc_val\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \program_counter|pc_val\(1),
	datad => VCC,
	cin => \program_counter|pc_val[0]~11\,
	combout => \program_counter|pc_val[1]~13_combout\,
	cout => \program_counter|pc_val[1]~14\);

-- Location: FF_X19_Y30_N19
\program_counter|pc_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	d => \program_counter|pc_val[1]~13_combout\,
	asdata => \data_bus[1]~5_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux78~1_combout\,
	ena => \program_counter|pc_val[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(1));

-- Location: LCCOMB_X19_Y30_N20
\program_counter|pc_val[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[2]~15_combout\ = (\program_counter|pc_val\(2) & (\program_counter|pc_val[1]~14\ $ (GND))) # (!\program_counter|pc_val\(2) & (!\program_counter|pc_val[1]~14\ & VCC))
-- \program_counter|pc_val[2]~16\ = CARRY((\program_counter|pc_val\(2) & !\program_counter|pc_val[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \program_counter|pc_val\(2),
	datad => VCC,
	cin => \program_counter|pc_val[1]~14\,
	combout => \program_counter|pc_val[2]~15_combout\,
	cout => \program_counter|pc_val[2]~16\);

-- Location: FF_X19_Y30_N21
\program_counter|pc_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	d => \program_counter|pc_val[2]~15_combout\,
	asdata => \data_bus[2]~8_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux78~1_combout\,
	ena => \program_counter|pc_val[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(2));

-- Location: LCCOMB_X19_Y30_N22
\program_counter|pc_val[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[3]~17_combout\ = (\program_counter|pc_val\(3) & (!\program_counter|pc_val[2]~16\)) # (!\program_counter|pc_val\(3) & ((\program_counter|pc_val[2]~16\) # (GND)))
-- \program_counter|pc_val[3]~18\ = CARRY((!\program_counter|pc_val[2]~16\) # (!\program_counter|pc_val\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|pc_val\(3),
	datad => VCC,
	cin => \program_counter|pc_val[2]~16\,
	combout => \program_counter|pc_val[3]~17_combout\,
	cout => \program_counter|pc_val[3]~18\);

-- Location: FF_X19_Y30_N23
\program_counter|pc_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	d => \program_counter|pc_val[3]~17_combout\,
	asdata => \data_bus[3]~11_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux78~1_combout\,
	ena => \program_counter|pc_val[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(3));

-- Location: LCCOMB_X19_Y30_N24
\program_counter|pc_val[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[4]~19_combout\ = (\program_counter|pc_val\(4) & (\program_counter|pc_val[3]~18\ $ (GND))) # (!\program_counter|pc_val\(4) & (!\program_counter|pc_val[3]~18\ & VCC))
-- \program_counter|pc_val[4]~20\ = CARRY((\program_counter|pc_val\(4) & !\program_counter|pc_val[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \program_counter|pc_val\(4),
	datad => VCC,
	cin => \program_counter|pc_val[3]~18\,
	combout => \program_counter|pc_val[4]~19_combout\,
	cout => \program_counter|pc_val[4]~20\);

-- Location: FF_X19_Y30_N25
\program_counter|pc_val[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	d => \program_counter|pc_val[4]~19_combout\,
	asdata => \~GND~combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux78~1_combout\,
	ena => \program_counter|pc_val[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(4));

-- Location: LCCOMB_X19_Y30_N26
\program_counter|pc_val[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[5]~21_combout\ = (\program_counter|pc_val\(5) & (!\program_counter|pc_val[4]~20\)) # (!\program_counter|pc_val\(5) & ((\program_counter|pc_val[4]~20\) # (GND)))
-- \program_counter|pc_val[5]~22\ = CARRY((!\program_counter|pc_val[4]~20\) # (!\program_counter|pc_val\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|pc_val\(5),
	datad => VCC,
	cin => \program_counter|pc_val[4]~20\,
	combout => \program_counter|pc_val[5]~21_combout\,
	cout => \program_counter|pc_val[5]~22\);

-- Location: FF_X19_Y30_N27
\program_counter|pc_val[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	d => \program_counter|pc_val[5]~21_combout\,
	asdata => \~GND~combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux78~1_combout\,
	ena => \program_counter|pc_val[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(5));

-- Location: FF_X19_Y30_N29
\program_counter|pc_val[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	d => \program_counter|pc_val[6]~23_combout\,
	asdata => \~GND~combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux78~1_combout\,
	ena => \program_counter|pc_val[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(6));

-- Location: LCCOMB_X21_Y30_N26
\data_bus[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[6]~18_combout\ = (\program_counter|pc_val\(6) & ((\Mux68~2_combout\) # ((\Mux73~1_combout\ & \instruction_register|regval\(6))))) # (!\program_counter|pc_val\(6) & (((\Mux73~1_combout\ & \instruction_register|regval\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|pc_val\(6),
	datab => \Mux68~2_combout\,
	datac => \Mux73~1_combout\,
	datad => \instruction_register|regval\(6),
	combout => \data_bus[6]~18_combout\);

-- Location: LCCOMB_X21_Y30_N18
\data_bus[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[6]~19_combout\ = (\Mux80~0_combout\ & ((\a_register|regval\(6)) # ((\memory|memory|altsyncram_component|auto_generated|q_a\(6) & \Mux70~1_combout\)))) # (!\Mux80~0_combout\ & (\memory|memory|altsyncram_component|auto_generated|q_a\(6) & 
-- ((\Mux70~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux80~0_combout\,
	datab => \memory|memory|altsyncram_component|auto_generated|q_a\(6),
	datac => \a_register|regval\(6),
	datad => \Mux70~1_combout\,
	combout => \data_bus[6]~19_combout\);

-- Location: LCCOMB_X21_Y30_N20
\data_bus[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[6]~20_combout\ = (\data_bus[6]~18_combout\) # ((\data_bus[6]~19_combout\) # ((\Mux76~0_combout\ & \logic_unit|Add1|auto_generated|result_int[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_bus[6]~18_combout\,
	datab => \Mux76~0_combout\,
	datac => \logic_unit|Add1|auto_generated|result_int[7]~14_combout\,
	datad => \data_bus[6]~19_combout\,
	combout => \data_bus[6]~20_combout\);

-- Location: LCCOMB_X21_Y30_N12
\instruction_register|regval[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_register|regval[6]~8_combout\ = (\Mux71~0_combout\ & ((\program_counter|pc_val[0]~9_combout\ & (\instruction_register|regval\(6))) # (!\program_counter|pc_val[0]~9_combout\ & ((\data_bus[6]~20_combout\))))) # (!\Mux71~0_combout\ & 
-- (((\instruction_register|regval\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux71~0_combout\,
	datab => \program_counter|pc_val[0]~9_combout\,
	datac => \instruction_register|regval\(6),
	datad => \data_bus[6]~20_combout\,
	combout => \instruction_register|regval[6]~8_combout\);

-- Location: FF_X21_Y30_N13
\instruction_register|regval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval\(0),
	d => \instruction_register|regval[6]~8_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(6));

-- Location: LCCOMB_X26_Y30_N16
\program_counter|pc_val[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[0]~9_combout\ = (\instruction_register|regval\(7) & ((\instruction_register|regval\(6)) # ((\instruction_register|regval\(5)) # (\instruction_register|regval\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(6),
	datab => \instruction_register|regval\(5),
	datac => \instruction_register|regval\(4),
	datad => \instruction_register|regval\(7),
	combout => \program_counter|pc_val[0]~9_combout\);

-- Location: LCCOMB_X21_Y30_N24
\instruction_register|regval[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_register|regval[5]~9_combout\ = (\Mux71~0_combout\ & ((\program_counter|pc_val[0]~9_combout\ & (\instruction_register|regval\(5))) # (!\program_counter|pc_val[0]~9_combout\ & ((\data_bus[5]~17_combout\))))) # (!\Mux71~0_combout\ & 
-- (((\instruction_register|regval\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux71~0_combout\,
	datab => \program_counter|pc_val[0]~9_combout\,
	datac => \instruction_register|regval\(5),
	datad => \data_bus[5]~17_combout\,
	combout => \instruction_register|regval[5]~9_combout\);

-- Location: FF_X21_Y30_N25
\instruction_register|regval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval\(0),
	d => \instruction_register|regval[5]~9_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(5));

-- Location: LCCOMB_X25_Y30_N12
\Mux82~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux82~2_combout\ = (!\instruction_register|regval\(5) & (\instruction_register|regval\(7) & (!\instruction_register|regval\(4) & \Mux82~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(5),
	datab => \instruction_register|regval\(7),
	datac => \instruction_register|regval\(4),
	datad => \Mux82~1_combout\,
	combout => \Mux82~2_combout\);

-- Location: LCCOMB_X21_Y30_N10
\data_bus[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[7]~24_combout\ = (\data_bus[7]~22_combout\) # ((\memory|memory|altsyncram_component|auto_generated|q_a\(7) & \Mux70~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|memory|altsyncram_component|auto_generated|q_a\(7),
	datab => \Mux70~1_combout\,
	datad => \data_bus[7]~22_combout\,
	combout => \data_bus[7]~24_combout\);

-- Location: LCCOMB_X21_Y30_N16
\instruction_register|regval[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_register|regval[7]~6_combout\ = (\Mux71~1_combout\ & ((\data_bus[7]~24_combout\) # ((\data_bus[7]~21_combout\)))) # (!\Mux71~1_combout\ & (((\instruction_register|regval\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_bus[7]~24_combout\,
	datab => \Mux71~1_combout\,
	datac => \instruction_register|regval\(7),
	datad => \data_bus[7]~21_combout\,
	combout => \instruction_register|regval[7]~6_combout\);

-- Location: FF_X21_Y30_N17
\instruction_register|regval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval\(0),
	d => \instruction_register|regval[7]~6_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(7));

-- Location: LCCOMB_X19_Y30_N12
\Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux70~0_combout\ = (\instruction_register|regval\(6) & (((\instruction_register|regval\(7))))) # (!\instruction_register|regval\(6) & ((\instruction_register|regval\(5) & ((\instruction_register|regval\(7)) # (!\instruction_register|regval\(4)))) # 
-- (!\instruction_register|regval\(5) & ((\instruction_register|regval\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(5),
	datab => \instruction_register|regval\(6),
	datac => \instruction_register|regval\(7),
	datad => \instruction_register|regval\(4),
	combout => \Mux70~0_combout\);

-- Location: LCCOMB_X25_Y30_N18
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\mc|counter_val\(1) & (!\mc|counter_val\(3) & (\mc|counter_val\(0) $ (\mc|counter_val\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(0),
	datab => \mc|counter_val\(1),
	datac => \mc|counter_val\(2),
	datad => \mc|counter_val\(3),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X21_Y30_N30
\Mux70~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux70~1_combout\ = (\Mux70~0_combout\ & (!\instruction_register|regval\(7) & ((\Mux7~0_combout\)))) # (!\Mux70~0_combout\ & (((\Mux71~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(7),
	datab => \Mux70~0_combout\,
	datac => \Mux71~0_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux70~1_combout\);

-- Location: LCCOMB_X20_Y30_N4
\data_bus[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[0]~1_combout\ = (\program_counter|pc_val\(0) & ((\Mux68~2_combout\) # ((\Mux80~0_combout\ & \a_register|regval\(0))))) # (!\program_counter|pc_val\(0) & (((\Mux80~0_combout\ & \a_register|regval\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|pc_val\(0),
	datab => \Mux68~2_combout\,
	datac => \Mux80~0_combout\,
	datad => \a_register|regval\(0),
	combout => \data_bus[0]~1_combout\);

-- Location: FF_X20_Y30_N17
\instruction_register|regval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	asdata => \data_bus[0]~2_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(0));

-- Location: LCCOMB_X20_Y30_N16
\data_bus[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[0]~0_combout\ = (\Mux76~0_combout\ & ((\logic_unit|Add1|auto_generated|result_int[1]~2_combout\) # ((\Mux73~1_combout\ & \instruction_register|regval\(0))))) # (!\Mux76~0_combout\ & (\Mux73~1_combout\ & (\instruction_register|regval\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux76~0_combout\,
	datab => \Mux73~1_combout\,
	datac => \instruction_register|regval\(0),
	datad => \logic_unit|Add1|auto_generated|result_int[1]~2_combout\,
	combout => \data_bus[0]~0_combout\);

-- Location: LCCOMB_X20_Y30_N6
\data_bus[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[0]~2_combout\ = (\data_bus[0]~1_combout\) # ((\data_bus[0]~0_combout\) # ((\Mux70~1_combout\ & \memory|memory|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux70~1_combout\,
	datab => \memory|memory|altsyncram_component|auto_generated|q_a\(0),
	datac => \data_bus[0]~1_combout\,
	datad => \data_bus[0]~0_combout\,
	combout => \data_bus[0]~2_combout\);

-- Location: LCCOMB_X24_Y30_N12
\output_register|regval[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_register|regval[0]~feeder_combout\ = \data_bus[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_bus[0]~2_combout\,
	combout => \output_register|regval[0]~feeder_combout\);

-- Location: FF_X24_Y30_N13
\output_register|regval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	d => \output_register|regval[0]~feeder_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux81~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(0));

-- Location: LCCOMB_X24_Y30_N26
\output_register|regval[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_register|regval[1]~feeder_combout\ = \data_bus[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_bus[1]~5_combout\,
	combout => \output_register|regval[1]~feeder_combout\);

-- Location: FF_X24_Y30_N27
\output_register|regval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	d => \output_register|regval[1]~feeder_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux81~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(1));

-- Location: LCCOMB_X24_Y30_N28
\output_register|regval[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_register|regval[2]~feeder_combout\ = \data_bus[2]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_bus[2]~8_combout\,
	combout => \output_register|regval[2]~feeder_combout\);

-- Location: FF_X24_Y30_N29
\output_register|regval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	d => \output_register|regval[2]~feeder_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux81~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(2));

-- Location: LCCOMB_X24_Y30_N2
\output_register|regval[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_register|regval[3]~feeder_combout\ = \data_bus[3]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[3]~11_combout\,
	combout => \output_register|regval[3]~feeder_combout\);

-- Location: FF_X24_Y30_N3
\output_register|regval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	d => \output_register|regval[3]~feeder_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux81~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(3));

-- Location: FF_X26_Y30_N3
\output_register|regval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	asdata => \data_bus[4]~14_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux81~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(4));

-- Location: LCCOMB_X24_Y30_N8
\output_register|regval[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_register|regval[5]~feeder_combout\ = \data_bus[5]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_bus[5]~17_combout\,
	combout => \output_register|regval[5]~feeder_combout\);

-- Location: FF_X24_Y30_N9
\output_register|regval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	d => \output_register|regval[5]~feeder_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux81~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(5));

-- Location: LCCOMB_X24_Y30_N10
\output_register|regval[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_register|regval[6]~feeder_combout\ = \data_bus[6]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_bus[6]~20_combout\,
	combout => \output_register|regval[6]~feeder_combout\);

-- Location: FF_X24_Y30_N11
\output_register|regval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	d => \output_register|regval[6]~feeder_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux81~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(6));

-- Location: FF_X24_Y30_N17
\output_register|regval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clocker|ctval[0]~clkctrl_outclk\,
	asdata => \data_bus[7]~23_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux81~0_combout\,
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


