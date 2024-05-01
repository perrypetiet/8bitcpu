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

-- DATE "05/01/2024 01:13:00"

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
-- clock_in	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_in	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \program_counter|pc_val[0]~9_combout\ : std_logic;
SIGNAL \clear_in~input_o\ : std_logic;
SIGNAL \clear_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \mc|counter_val[0]~7_combout\ : std_logic;
SIGNAL \mc|counter_val[2]~6_combout\ : std_logic;
SIGNAL \mc|counter_val[3]~5_combout\ : std_logic;
SIGNAL \a_register|regval[5]~feeder_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \Mux63~1_combout\ : std_logic;
SIGNAL \Mux56~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL \Mux57~2_combout\ : std_logic;
SIGNAL \Mux57~4_combout\ : std_logic;
SIGNAL \Mux57~3_combout\ : std_logic;
SIGNAL \Mux57~5_combout\ : std_logic;
SIGNAL \Mux57~6_combout\ : std_logic;
SIGNAL \memory|address_load~combout\ : std_logic;
SIGNAL \memory|address_load~clkctrl_outclk\ : std_logic;
SIGNAL \Mux64~0_combout\ : std_logic;
SIGNAL \Mux64~1_combout\ : std_logic;
SIGNAL \a_register|regval[1]~feeder_combout\ : std_logic;
SIGNAL \a_register|regval[0]~feeder_combout\ : std_logic;
SIGNAL \logic_unit|Add1~1\ : std_logic;
SIGNAL \logic_unit|Add1~2_combout\ : std_logic;
SIGNAL \Mux69~0_combout\ : std_logic;
SIGNAL \data_bus[4]~2_combout\ : std_logic;
SIGNAL \program_counter|pc_val[0]~10\ : std_logic;
SIGNAL \program_counter|pc_val[1]~12_combout\ : std_logic;
SIGNAL \program_counter|pc_val[0]~8_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \program_counter|pc_val[0]~11_combout\ : std_logic;
SIGNAL \Mux56~2_combout\ : std_logic;
SIGNAL \Mux56~3_combout\ : std_logic;
SIGNAL \data_bus[1]~7_combout\ : std_logic;
SIGNAL \logic_unit|Add0~1\ : std_logic;
SIGNAL \logic_unit|Add0~2_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Mux62~1_combout\ : std_logic;
SIGNAL \Mux68~0_combout\ : std_logic;
SIGNAL \Mux68~1_combout\ : std_logic;
SIGNAL \data_bus[1]~6_combout\ : std_logic;
SIGNAL \a_register|regval[2]~feeder_combout\ : std_logic;
SIGNAL \logic_unit|Add1~3\ : std_logic;
SIGNAL \logic_unit|Add1~4_combout\ : std_logic;
SIGNAL \program_counter|pc_val[1]~13\ : std_logic;
SIGNAL \program_counter|pc_val[2]~14_combout\ : std_logic;
SIGNAL \data_bus[2]~11_combout\ : std_logic;
SIGNAL \logic_unit|Add0~3\ : std_logic;
SIGNAL \logic_unit|Add0~4_combout\ : std_logic;
SIGNAL \data_bus[2]~10_combout\ : std_logic;
SIGNAL \a_register|regval[3]~feeder_combout\ : std_logic;
SIGNAL \logic_unit|Add1~5\ : std_logic;
SIGNAL \logic_unit|Add1~6_combout\ : std_logic;
SIGNAL \program_counter|pc_val[2]~15\ : std_logic;
SIGNAL \program_counter|pc_val[3]~16_combout\ : std_logic;
SIGNAL \data_bus[3]~15_combout\ : std_logic;
SIGNAL \logic_unit|Add0~5\ : std_logic;
SIGNAL \logic_unit|Add0~6_combout\ : std_logic;
SIGNAL \data_bus[3]~14_combout\ : std_logic;
SIGNAL \program_counter|pc_val[3]~17\ : std_logic;
SIGNAL \program_counter|pc_val[4]~18_combout\ : std_logic;
SIGNAL \program_counter|pc_val[4]~19\ : std_logic;
SIGNAL \program_counter|pc_val[5]~20_combout\ : std_logic;
SIGNAL \program_counter|pc_val[5]~21\ : std_logic;
SIGNAL \program_counter|pc_val[6]~22_combout\ : std_logic;
SIGNAL \data_bus[6]~29_combout\ : std_logic;
SIGNAL \a_register|regval[4]~feeder_combout\ : std_logic;
SIGNAL \logic_unit|Add1~7\ : std_logic;
SIGNAL \logic_unit|Add1~9\ : std_logic;
SIGNAL \logic_unit|Add1~11\ : std_logic;
SIGNAL \logic_unit|Add1~12_combout\ : std_logic;
SIGNAL \logic_unit|Add0~7\ : std_logic;
SIGNAL \logic_unit|Add0~9\ : std_logic;
SIGNAL \logic_unit|Add0~11\ : std_logic;
SIGNAL \logic_unit|Add0~12_combout\ : std_logic;
SIGNAL \data_bus[6]~28_combout\ : std_logic;
SIGNAL \data_bus[6]~30_combout\ : std_logic;
SIGNAL \data_bus[6]~31_combout\ : std_logic;
SIGNAL \logic_unit|Add0~13\ : std_logic;
SIGNAL \logic_unit|Add0~14_combout\ : std_logic;
SIGNAL \logic_unit|Add1~13\ : std_logic;
SIGNAL \logic_unit|Add1~14_combout\ : std_logic;
SIGNAL \program_counter|pc_val[6]~23\ : std_logic;
SIGNAL \program_counter|pc_val[7]~24_combout\ : std_logic;
SIGNAL \data_bus[7]~33_combout\ : std_logic;
SIGNAL \data_bus[7]~32_combout\ : std_logic;
SIGNAL \data_bus[7]~34_combout\ : std_logic;
SIGNAL \data_bus[3]~13_combout\ : std_logic;
SIGNAL \data_bus[3]~16_combout\ : std_logic;
SIGNAL \data_bus[2]~9_combout\ : std_logic;
SIGNAL \data_bus[2]~12_combout\ : std_logic;
SIGNAL \data_bus[1]~5_combout\ : std_logic;
SIGNAL \data_bus[1]~8_combout\ : std_logic;
SIGNAL \data_bus[5]~22_combout\ : std_logic;
SIGNAL \data_bus[5]~26_combout\ : std_logic;
SIGNAL \logic_unit|Add1~10_combout\ : std_logic;
SIGNAL \logic_unit|Add0~10_combout\ : std_logic;
SIGNAL \data_bus[5]~23_combout\ : std_logic;
SIGNAL \data_bus[5]~24_combout\ : std_logic;
SIGNAL \data_bus[5]~25_combout\ : std_logic;
SIGNAL \instruction_register|regval[5]~1_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \Mux58~1_combout\ : std_logic;
SIGNAL \Mux58~2_combout\ : std_logic;
SIGNAL \Mux58~3_combout\ : std_logic;
SIGNAL \data_bus[6]~27_combout\ : std_logic;
SIGNAL \instruction_register|regval[6]~0_combout\ : std_logic;
SIGNAL \Mux69~1_combout\ : std_logic;
SIGNAL \data_bus[4]~17_combout\ : std_logic;
SIGNAL \data_bus[4]~21_combout\ : std_logic;
SIGNAL \logic_unit|Add1~8_combout\ : std_logic;
SIGNAL \logic_unit|Add0~8_combout\ : std_logic;
SIGNAL \data_bus[4]~18_combout\ : std_logic;
SIGNAL \data_bus[4]~19_combout\ : std_logic;
SIGNAL \data_bus[4]~20_combout\ : std_logic;
SIGNAL \instruction_register|regval[4]~2_combout\ : std_logic;
SIGNAL \mc|counter_val[3]~2_combout\ : std_logic;
SIGNAL \mc|counter_val[3]~1_combout\ : std_logic;
SIGNAL \mc|counter_val[3]~3_combout\ : std_logic;
SIGNAL \mc|counter_val[3]~4_combout\ : std_logic;
SIGNAL \mc|counter_val[1]~0_combout\ : std_logic;
SIGNAL \Mux59~1_combout\ : std_logic;
SIGNAL \instruction_register|regval[7]~3_combout\ : std_logic;
SIGNAL \Mux67~0_combout\ : std_logic;
SIGNAL \Mux67~1_combout\ : std_logic;
SIGNAL \logic_unit|Add1~0_combout\ : std_logic;
SIGNAL \data_bus[0]~3_combout\ : std_logic;
SIGNAL \logic_unit|Add0~0_combout\ : std_logic;
SIGNAL \data_bus[0]~1_combout\ : std_logic;
SIGNAL \data_bus[0]~0_combout\ : std_logic;
SIGNAL \data_bus[0]~4_combout\ : std_logic;
SIGNAL \output_register|regval[7]~feeder_combout\ : std_logic;
SIGNAL \mc|counter_val\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \memory|memory|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \a_register|regval\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \program_counter|pc_val\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \output_register|regval\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instruction_register|regval\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b_register|regval\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clock_in~input_o\ : std_logic;
SIGNAL \mc|ALT_INV_counter_val[3]~4_combout\ : std_logic;

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

\memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \data_bus[7]~34_combout\ & \data_bus[6]~31_combout\ & \data_bus[5]~26_combout\ & \data_bus[4]~21_combout\ & 
\data_bus[3]~16_combout\ & \data_bus[2]~12_combout\ & \data_bus[1]~8_combout\ & \data_bus[0]~4_combout\);

\memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\data_bus[3]~16_combout\ & \data_bus[2]~12_combout\ & \data_bus[1]~8_combout\ & \data_bus[0]~4_combout\);

\memory|memory|altsyncram_component|auto_generated|q_a\(0) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\memory|memory|altsyncram_component|auto_generated|q_a\(1) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\memory|memory|altsyncram_component|auto_generated|q_a\(2) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\memory|memory|altsyncram_component|auto_generated|q_a\(3) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\memory|memory|altsyncram_component|auto_generated|q_a\(4) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\memory|memory|altsyncram_component|auto_generated|q_a\(5) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\memory|memory|altsyncram_component|auto_generated|q_a\(6) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\memory|memory|altsyncram_component|auto_generated|q_a\(7) <= \memory|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\memory|address_load~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \memory|address_load~combout\);

\clear_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clear_in~input_o\);
\ALT_INV_clock_in~input_o\ <= NOT \clock_in~input_o\;
\mc|ALT_INV_counter_val[3]~4_combout\ <= NOT \mc|counter_val[3]~4_combout\;
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

-- Location: IOIBUF_X53_Y14_N1
\clock_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_in,
	o => \clock_in~input_o\);

-- Location: LCCOMB_X51_Y16_N6
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

-- Location: LCCOMB_X49_Y16_N30
\mc|counter_val[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc|counter_val[0]~7_combout\ = !\mc|counter_val\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mc|counter_val\(0),
	combout => \mc|counter_val[0]~7_combout\);

-- Location: LCCOMB_X46_Y16_N6
\mc|counter_val[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc|counter_val[2]~6_combout\ = \mc|counter_val\(2) $ (((\mc|counter_val\(0) & \mc|counter_val\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(0),
	datab => \mc|counter_val\(2),
	datad => \mc|counter_val\(1),
	combout => \mc|counter_val[2]~6_combout\);

-- Location: FF_X47_Y16_N9
\mc|counter_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~input_o\,
	asdata => \mc|counter_val[2]~6_combout\,
	clrn => \mc|ALT_INV_counter_val[3]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc|counter_val\(2));

-- Location: LCCOMB_X46_Y16_N24
\mc|counter_val[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc|counter_val[3]~5_combout\ = \mc|counter_val\(3) $ (((\mc|counter_val\(1) & (\mc|counter_val\(2) & \mc|counter_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(3),
	datab => \mc|counter_val\(1),
	datac => \mc|counter_val\(2),
	datad => \mc|counter_val\(0),
	combout => \mc|counter_val[3]~5_combout\);

-- Location: FF_X47_Y16_N21
\mc|counter_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~input_o\,
	asdata => \mc|counter_val[3]~5_combout\,
	clrn => \mc|ALT_INV_counter_val[3]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc|counter_val\(3));

-- Location: LCCOMB_X45_Y16_N26
\a_register|regval[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_register|regval[5]~feeder_combout\ = \data_bus[5]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[5]~26_combout\,
	combout => \a_register|regval[5]~feeder_combout\);

-- Location: LCCOMB_X47_Y16_N28
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!\mc|counter_val\(3) & (!\mc|counter_val\(2) & (\mc|counter_val\(1) & \mc|counter_val\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(3),
	datab => \mc|counter_val\(2),
	datac => \mc|counter_val\(1),
	datad => \mc|counter_val\(0),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X49_Y16_N18
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (!\mc|counter_val\(3) & (!\mc|counter_val\(0) & (!\mc|counter_val\(1) & \mc|counter_val\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(3),
	datab => \mc|counter_val\(0),
	datac => \mc|counter_val\(1),
	datad => \mc|counter_val\(2),
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X49_Y16_N28
\Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (\instruction_register|regval\(5) & (\Mux11~0_combout\ & ((!\instruction_register|regval\(6))))) # (!\instruction_register|regval\(5) & ((\instruction_register|regval\(6) & (\Mux11~0_combout\)) # (!\instruction_register|regval\(6) & 
-- ((\Mux30~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Mux30~0_combout\,
	datac => \instruction_register|regval\(5),
	datad => \instruction_register|regval\(6),
	combout => \Mux63~0_combout\);

-- Location: LCCOMB_X49_Y16_N26
\Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~1_combout\ = (\instruction_register|regval\(4) & (!\instruction_register|regval\(7) & \Mux63~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|regval\(4),
	datac => \instruction_register|regval\(7),
	datad => \Mux63~0_combout\,
	combout => \Mux63~1_combout\);

-- Location: FF_X45_Y16_N27
\a_register|regval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \a_register|regval[5]~feeder_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux63~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(5));

-- Location: LCCOMB_X46_Y16_N12
\Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~1_combout\ = (!\mc|counter_val\(3) & (!\mc|counter_val\(1) & (!\mc|counter_val\(2) & !\mc|counter_val\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(3),
	datab => \mc|counter_val\(1),
	datac => \mc|counter_val\(2),
	datad => \mc|counter_val\(0),
	combout => \Mux56~1_combout\);

-- Location: LCCOMB_X47_Y16_N8
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\mc|counter_val\(1) & (\mc|counter_val\(0))) # (!\mc|counter_val\(1) & ((!\mc|counter_val\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(0),
	datab => \mc|counter_val\(1),
	datad => \mc|counter_val\(0),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X47_Y16_N22
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & (!\mc|counter_val\(3) & !\mc|counter_val\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \mc|counter_val\(3),
	datad => \mc|counter_val\(2),
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X47_Y17_N8
\Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\instruction_register|regval\(4) & ((!\Mux7~1_combout\))) # (!\instruction_register|regval\(4) & (!\Mux56~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|regval\(4),
	datac => \Mux56~1_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X47_Y17_N28
\Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = (\instruction_register|regval\(4) & (!\Mux56~1_combout\)) # (!\instruction_register|regval\(4) & ((!\Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux56~1_combout\,
	datac => \instruction_register|regval\(4),
	datad => \Mux7~1_combout\,
	combout => \Mux57~1_combout\);

-- Location: LCCOMB_X47_Y17_N4
\Mux57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~2_combout\ = (\instruction_register|regval\(5) & ((\Mux57~1_combout\))) # (!\instruction_register|regval\(5) & (\Mux57~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(5),
	datac => \Mux57~0_combout\,
	datad => \Mux57~1_combout\,
	combout => \Mux57~2_combout\);

-- Location: LCCOMB_X47_Y17_N26
\Mux57~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~4_combout\ = (!\instruction_register|regval\(4)) # (!\Mux56~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux56~1_combout\,
	datad => \instruction_register|regval\(4),
	combout => \Mux57~4_combout\);

-- Location: LCCOMB_X47_Y17_N18
\Mux57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~3_combout\ = (\instruction_register|regval\(4) & (!\Mux56~1_combout\)) # (!\instruction_register|regval\(4) & ((!\Mux56~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux56~1_combout\,
	datac => \Mux56~1_combout\,
	datad => \instruction_register|regval\(4),
	combout => \Mux57~3_combout\);

-- Location: LCCOMB_X47_Y17_N22
\Mux57~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~5_combout\ = (\instruction_register|regval\(5) & (\Mux57~4_combout\)) # (!\instruction_register|regval\(5) & ((\Mux57~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(5),
	datac => \Mux57~4_combout\,
	datad => \Mux57~3_combout\,
	combout => \Mux57~5_combout\);

-- Location: LCCOMB_X47_Y17_N30
\Mux57~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~6_combout\ = (\instruction_register|regval\(6) & ((!\Mux57~5_combout\))) # (!\instruction_register|regval\(6) & (!\Mux57~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(6),
	datac => \Mux57~2_combout\,
	datad => \Mux57~5_combout\,
	combout => \Mux57~6_combout\);

-- Location: LCCOMB_X47_Y17_N24
\memory|address_load\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory|address_load~combout\ = LCELL((!\clock_in~input_o\ & (!\instruction_register|regval\(7) & \Mux57~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_in~input_o\,
	datab => \instruction_register|regval\(7),
	datac => \Mux57~6_combout\,
	combout => \memory|address_load~combout\);

-- Location: CLKCTRL_G8
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

-- Location: LCCOMB_X49_Y16_N4
\Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~0_combout\ = (!\instruction_register|regval\(6) & (\instruction_register|regval\(5) & (!\instruction_register|regval\(7) & !\instruction_register|regval\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(6),
	datab => \instruction_register|regval\(5),
	datac => \instruction_register|regval\(7),
	datad => \instruction_register|regval\(4),
	combout => \Mux64~0_combout\);

-- Location: LCCOMB_X49_Y16_N6
\Mux64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~1_combout\ = (\Mux64~0_combout\ & \Mux30~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux64~0_combout\,
	datad => \Mux30~0_combout\,
	combout => \Mux64~1_combout\);

-- Location: FF_X46_Y16_N7
\b_register|regval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	asdata => \data_bus[1]~8_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(1));

-- Location: LCCOMB_X45_Y16_N22
\a_register|regval[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_register|regval[1]~feeder_combout\ = \data_bus[1]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[1]~8_combout\,
	combout => \a_register|regval[1]~feeder_combout\);

-- Location: FF_X45_Y16_N23
\a_register|regval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \a_register|regval[1]~feeder_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux63~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(1));

-- Location: FF_X46_Y16_N23
\b_register|regval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \data_bus[0]~4_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(0));

-- Location: LCCOMB_X45_Y16_N24
\a_register|regval[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_register|regval[0]~feeder_combout\ = \data_bus[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_bus[0]~4_combout\,
	combout => \a_register|regval[0]~feeder_combout\);

-- Location: FF_X45_Y16_N25
\a_register|regval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \a_register|regval[0]~feeder_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux63~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(0));

-- Location: LCCOMB_X50_Y16_N16
\logic_unit|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1~0_combout\ = (\b_register|regval\(0) & (\a_register|regval\(0) $ (VCC))) # (!\b_register|regval\(0) & (\a_register|regval\(0) & VCC))
-- \logic_unit|Add1~1\ = CARRY((\b_register|regval\(0) & \a_register|regval\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_register|regval\(0),
	datab => \a_register|regval\(0),
	datad => VCC,
	combout => \logic_unit|Add1~0_combout\,
	cout => \logic_unit|Add1~1\);

-- Location: LCCOMB_X50_Y16_N18
\logic_unit|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1~2_combout\ = (\b_register|regval\(1) & ((\a_register|regval\(1) & (\logic_unit|Add1~1\ & VCC)) # (!\a_register|regval\(1) & (!\logic_unit|Add1~1\)))) # (!\b_register|regval\(1) & ((\a_register|regval\(1) & (!\logic_unit|Add1~1\)) # 
-- (!\a_register|regval\(1) & ((\logic_unit|Add1~1\) # (GND)))))
-- \logic_unit|Add1~3\ = CARRY((\b_register|regval\(1) & (!\a_register|regval\(1) & !\logic_unit|Add1~1\)) # (!\b_register|regval\(1) & ((!\logic_unit|Add1~1\) # (!\a_register|regval\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_register|regval\(1),
	datab => \a_register|regval\(1),
	datad => VCC,
	cin => \logic_unit|Add1~1\,
	combout => \logic_unit|Add1~2_combout\,
	cout => \logic_unit|Add1~3\);

-- Location: LCCOMB_X48_Y16_N24
\Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~0_combout\ = (\instruction_register|regval\(4) & (!\instruction_register|regval\(7) & \Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(4),
	datab => \instruction_register|regval\(7),
	datad => \Mux11~0_combout\,
	combout => \Mux69~0_combout\);

-- Location: LCCOMB_X48_Y16_N28
\data_bus[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[4]~2_combout\ = (\instruction_register|regval\(6)) # ((!\Mux69~0_combout\) # (!\instruction_register|regval\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(6),
	datac => \instruction_register|regval\(5),
	datad => \Mux69~0_combout\,
	combout => \data_bus[4]~2_combout\);

-- Location: LCCOMB_X51_Y16_N8
\program_counter|pc_val[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[1]~12_combout\ = (\program_counter|pc_val\(1) & (!\program_counter|pc_val[0]~10\)) # (!\program_counter|pc_val\(1) & ((\program_counter|pc_val[0]~10\) # (GND)))
-- \program_counter|pc_val[1]~13\ = CARRY((!\program_counter|pc_val[0]~10\) # (!\program_counter|pc_val\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \program_counter|pc_val\(1),
	datad => VCC,
	cin => \program_counter|pc_val[0]~10\,
	combout => \program_counter|pc_val[1]~12_combout\,
	cout => \program_counter|pc_val[1]~13\);

-- Location: LCCOMB_X49_Y16_N24
\program_counter|pc_val[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[0]~8_combout\ = (\instruction_register|regval\(5) & (!\instruction_register|regval\(4) & \instruction_register|regval\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|regval\(5),
	datac => \instruction_register|regval\(4),
	datad => \instruction_register|regval\(6),
	combout => \program_counter|pc_val[0]~8_combout\);

-- Location: LCCOMB_X47_Y16_N0
\Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (!\mc|counter_val\(3) & (!\mc|counter_val\(2) & !\mc|counter_val\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(3),
	datac => \mc|counter_val\(2),
	datad => \mc|counter_val\(0),
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X51_Y16_N28
\program_counter|pc_val[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[0]~11_combout\ = (!\program_counter|pc_val[0]~8_combout\ & (\mc|counter_val\(1) & (\Mux56~0_combout\ & !\instruction_register|regval\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|pc_val[0]~8_combout\,
	datab => \mc|counter_val\(1),
	datac => \Mux56~0_combout\,
	datad => \instruction_register|regval\(7),
	combout => \program_counter|pc_val[0]~11_combout\);

-- Location: FF_X51_Y16_N9
\program_counter|pc_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \program_counter|pc_val[1]~12_combout\,
	asdata => \data_bus[1]~8_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux67~1_combout\,
	ena => \program_counter|pc_val[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(1));

-- Location: LCCOMB_X49_Y16_N14
\Mux56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~2_combout\ = (\instruction_register|regval\(7)) # ((\instruction_register|regval\(6) & (\instruction_register|regval\(5) & !\instruction_register|regval\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(6),
	datab => \instruction_register|regval\(7),
	datac => \instruction_register|regval\(5),
	datad => \instruction_register|regval\(4),
	combout => \Mux56~2_combout\);

-- Location: LCCOMB_X46_Y16_N2
\Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~3_combout\ = (!\Mux56~2_combout\ & \Mux56~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux56~2_combout\,
	datad => \Mux56~1_combout\,
	combout => \Mux56~3_combout\);

-- Location: LCCOMB_X46_Y16_N0
\data_bus[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[1]~7_combout\ = (\logic_unit|Add1~2_combout\ & (((\program_counter|pc_val\(1) & \Mux56~3_combout\)) # (!\data_bus[4]~2_combout\))) # (!\logic_unit|Add1~2_combout\ & (((\program_counter|pc_val\(1) & \Mux56~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add1~2_combout\,
	datab => \data_bus[4]~2_combout\,
	datac => \program_counter|pc_val\(1),
	datad => \Mux56~3_combout\,
	combout => \data_bus[1]~7_combout\);

-- Location: LCCOMB_X45_Y16_N6
\logic_unit|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add0~0_combout\ = (\b_register|regval\(0) & (\a_register|regval\(0) $ (VCC))) # (!\b_register|regval\(0) & ((\a_register|regval\(0)) # (GND)))
-- \logic_unit|Add0~1\ = CARRY((\a_register|regval\(0)) # (!\b_register|regval\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b_register|regval\(0),
	datab => \a_register|regval\(0),
	datad => VCC,
	combout => \logic_unit|Add0~0_combout\,
	cout => \logic_unit|Add0~1\);

-- Location: LCCOMB_X45_Y16_N8
\logic_unit|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add0~2_combout\ = (\b_register|regval\(1) & ((\a_register|regval\(1) & (!\logic_unit|Add0~1\)) # (!\a_register|regval\(1) & ((\logic_unit|Add0~1\) # (GND))))) # (!\b_register|regval\(1) & ((\a_register|regval\(1) & (\logic_unit|Add0~1\ & VCC)) 
-- # (!\a_register|regval\(1) & (!\logic_unit|Add0~1\))))
-- \logic_unit|Add0~3\ = CARRY((\b_register|regval\(1) & ((!\logic_unit|Add0~1\) # (!\a_register|regval\(1)))) # (!\b_register|regval\(1) & (!\a_register|regval\(1) & !\logic_unit|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_register|regval\(1),
	datab => \a_register|regval\(1),
	datad => VCC,
	cin => \logic_unit|Add0~1\,
	combout => \logic_unit|Add0~2_combout\,
	cout => \logic_unit|Add0~3\);

-- Location: LCCOMB_X47_Y17_N6
\Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (!\instruction_register|regval\(7) & (!\instruction_register|regval\(6) & (\instruction_register|regval\(5) $ (\instruction_register|regval\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(7),
	datab => \instruction_register|regval\(5),
	datac => \instruction_register|regval\(4),
	datad => \instruction_register|regval\(6),
	combout => \Mux62~0_combout\);

-- Location: LCCOMB_X47_Y16_N16
\Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~1_combout\ = (\Mux67~1_combout\) # ((\Mux62~0_combout\ & \Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux62~0_combout\,
	datab => \Mux11~0_combout\,
	datad => \Mux67~1_combout\,
	combout => \Mux62~1_combout\);

-- Location: FF_X46_Y16_N17
\instruction_register|regval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	asdata => \data_bus[1]~8_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux59~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(1));

-- Location: LCCOMB_X49_Y16_N0
\Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~0_combout\ = (\instruction_register|regval\(7)) # (!\instruction_register|regval\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction_register|regval\(7),
	datad => \instruction_register|regval\(4),
	combout => \Mux68~0_combout\);

-- Location: LCCOMB_X48_Y16_N18
\Mux68~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux68~1_combout\ = ((\instruction_register|regval\(5)) # ((\Mux68~0_combout\) # (!\Mux11~0_combout\))) # (!\instruction_register|regval\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(6),
	datab => \instruction_register|regval\(5),
	datac => \Mux68~0_combout\,
	datad => \Mux11~0_combout\,
	combout => \Mux68~1_combout\);

-- Location: LCCOMB_X46_Y16_N16
\data_bus[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[1]~6_combout\ = (\logic_unit|Add0~2_combout\ & (((\Mux62~1_combout\ & \instruction_register|regval\(1))) # (!\Mux68~1_combout\))) # (!\logic_unit|Add0~2_combout\ & (\Mux62~1_combout\ & (\instruction_register|regval\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add0~2_combout\,
	datab => \Mux62~1_combout\,
	datac => \instruction_register|regval\(1),
	datad => \Mux68~1_combout\,
	combout => \data_bus[1]~6_combout\);

-- Location: LCCOMB_X45_Y16_N28
\a_register|regval[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_register|regval[2]~feeder_combout\ = \data_bus[2]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_bus[2]~12_combout\,
	combout => \a_register|regval[2]~feeder_combout\);

-- Location: FF_X45_Y16_N29
\a_register|regval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \a_register|regval[2]~feeder_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux63~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(2));

-- Location: FF_X46_Y16_N15
\b_register|regval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \data_bus[2]~12_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(2));

-- Location: LCCOMB_X50_Y16_N20
\logic_unit|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1~4_combout\ = ((\a_register|regval\(2) $ (\b_register|regval\(2) $ (!\logic_unit|Add1~3\)))) # (GND)
-- \logic_unit|Add1~5\ = CARRY((\a_register|regval\(2) & ((\b_register|regval\(2)) # (!\logic_unit|Add1~3\))) # (!\a_register|regval\(2) & (\b_register|regval\(2) & !\logic_unit|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_register|regval\(2),
	datab => \b_register|regval\(2),
	datad => VCC,
	cin => \logic_unit|Add1~3\,
	combout => \logic_unit|Add1~4_combout\,
	cout => \logic_unit|Add1~5\);

-- Location: LCCOMB_X51_Y16_N10
\program_counter|pc_val[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[2]~14_combout\ = (\program_counter|pc_val\(2) & (\program_counter|pc_val[1]~13\ $ (GND))) # (!\program_counter|pc_val\(2) & (!\program_counter|pc_val[1]~13\ & VCC))
-- \program_counter|pc_val[2]~15\ = CARRY((\program_counter|pc_val\(2) & !\program_counter|pc_val[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|pc_val\(2),
	datad => VCC,
	cin => \program_counter|pc_val[1]~13\,
	combout => \program_counter|pc_val[2]~14_combout\,
	cout => \program_counter|pc_val[2]~15\);

-- Location: FF_X51_Y16_N11
\program_counter|pc_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \program_counter|pc_val[2]~14_combout\,
	asdata => \data_bus[2]~12_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux67~1_combout\,
	ena => \program_counter|pc_val[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(2));

-- Location: LCCOMB_X46_Y16_N20
\data_bus[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[2]~11_combout\ = (\logic_unit|Add1~4_combout\ & (((\program_counter|pc_val\(2) & \Mux56~3_combout\)) # (!\data_bus[4]~2_combout\))) # (!\logic_unit|Add1~4_combout\ & (((\program_counter|pc_val\(2) & \Mux56~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add1~4_combout\,
	datab => \data_bus[4]~2_combout\,
	datac => \program_counter|pc_val\(2),
	datad => \Mux56~3_combout\,
	combout => \data_bus[2]~11_combout\);

-- Location: LCCOMB_X45_Y16_N10
\logic_unit|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add0~4_combout\ = ((\b_register|regval\(2) $ (\a_register|regval\(2) $ (\logic_unit|Add0~3\)))) # (GND)
-- \logic_unit|Add0~5\ = CARRY((\b_register|regval\(2) & (\a_register|regval\(2) & !\logic_unit|Add0~3\)) # (!\b_register|regval\(2) & ((\a_register|regval\(2)) # (!\logic_unit|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_register|regval\(2),
	datab => \a_register|regval\(2),
	datad => VCC,
	cin => \logic_unit|Add0~3\,
	combout => \logic_unit|Add0~4_combout\,
	cout => \logic_unit|Add0~5\);

-- Location: FF_X46_Y16_N5
\instruction_register|regval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	asdata => \data_bus[2]~12_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux59~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(2));

-- Location: LCCOMB_X46_Y16_N4
\data_bus[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[2]~10_combout\ = (\logic_unit|Add0~4_combout\ & (((\Mux62~1_combout\ & \instruction_register|regval\(2))) # (!\Mux68~1_combout\))) # (!\logic_unit|Add0~4_combout\ & (\Mux62~1_combout\ & (\instruction_register|regval\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add0~4_combout\,
	datab => \Mux62~1_combout\,
	datac => \instruction_register|regval\(2),
	datad => \Mux68~1_combout\,
	combout => \data_bus[2]~10_combout\);

-- Location: FF_X50_Y16_N7
\b_register|regval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \data_bus[3]~16_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(3));

-- Location: LCCOMB_X45_Y16_N30
\a_register|regval[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_register|regval[3]~feeder_combout\ = \data_bus[3]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_bus[3]~16_combout\,
	combout => \a_register|regval[3]~feeder_combout\);

-- Location: FF_X45_Y16_N31
\a_register|regval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \a_register|regval[3]~feeder_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux63~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(3));

-- Location: LCCOMB_X50_Y16_N22
\logic_unit|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1~6_combout\ = (\b_register|regval\(3) & ((\a_register|regval\(3) & (\logic_unit|Add1~5\ & VCC)) # (!\a_register|regval\(3) & (!\logic_unit|Add1~5\)))) # (!\b_register|regval\(3) & ((\a_register|regval\(3) & (!\logic_unit|Add1~5\)) # 
-- (!\a_register|regval\(3) & ((\logic_unit|Add1~5\) # (GND)))))
-- \logic_unit|Add1~7\ = CARRY((\b_register|regval\(3) & (!\a_register|regval\(3) & !\logic_unit|Add1~5\)) # (!\b_register|regval\(3) & ((!\logic_unit|Add1~5\) # (!\a_register|regval\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_register|regval\(3),
	datab => \a_register|regval\(3),
	datad => VCC,
	cin => \logic_unit|Add1~5\,
	combout => \logic_unit|Add1~6_combout\,
	cout => \logic_unit|Add1~7\);

-- Location: LCCOMB_X51_Y16_N12
\program_counter|pc_val[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[3]~16_combout\ = (\program_counter|pc_val\(3) & (!\program_counter|pc_val[2]~15\)) # (!\program_counter|pc_val\(3) & ((\program_counter|pc_val[2]~15\) # (GND)))
-- \program_counter|pc_val[3]~17\ = CARRY((!\program_counter|pc_val[2]~15\) # (!\program_counter|pc_val\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|pc_val\(3),
	datad => VCC,
	cin => \program_counter|pc_val[2]~15\,
	combout => \program_counter|pc_val[3]~16_combout\,
	cout => \program_counter|pc_val[3]~17\);

-- Location: FF_X51_Y16_N13
\program_counter|pc_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \program_counter|pc_val[3]~16_combout\,
	asdata => \data_bus[3]~16_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux67~1_combout\,
	ena => \program_counter|pc_val[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(3));

-- Location: LCCOMB_X50_Y16_N12
\data_bus[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[3]~15_combout\ = (\logic_unit|Add1~6_combout\ & (((\program_counter|pc_val\(3) & \Mux56~3_combout\)) # (!\data_bus[4]~2_combout\))) # (!\logic_unit|Add1~6_combout\ & (\program_counter|pc_val\(3) & (\Mux56~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add1~6_combout\,
	datab => \program_counter|pc_val\(3),
	datac => \Mux56~3_combout\,
	datad => \data_bus[4]~2_combout\,
	combout => \data_bus[3]~15_combout\);

-- Location: LCCOMB_X45_Y16_N12
\logic_unit|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add0~6_combout\ = (\a_register|regval\(3) & ((\b_register|regval\(3) & (!\logic_unit|Add0~5\)) # (!\b_register|regval\(3) & (\logic_unit|Add0~5\ & VCC)))) # (!\a_register|regval\(3) & ((\b_register|regval\(3) & ((\logic_unit|Add0~5\) # (GND))) 
-- # (!\b_register|regval\(3) & (!\logic_unit|Add0~5\))))
-- \logic_unit|Add0~7\ = CARRY((\a_register|regval\(3) & (\b_register|regval\(3) & !\logic_unit|Add0~5\)) # (!\a_register|regval\(3) & ((\b_register|regval\(3)) # (!\logic_unit|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_register|regval\(3),
	datab => \b_register|regval\(3),
	datad => VCC,
	cin => \logic_unit|Add0~5\,
	combout => \logic_unit|Add0~6_combout\,
	cout => \logic_unit|Add0~7\);

-- Location: FF_X49_Y16_N17
\instruction_register|regval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	asdata => \data_bus[3]~16_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux59~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(3));

-- Location: LCCOMB_X49_Y16_N16
\data_bus[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[3]~14_combout\ = (\Mux62~1_combout\ & ((\instruction_register|regval\(3)) # ((\logic_unit|Add0~6_combout\ & !\Mux68~1_combout\)))) # (!\Mux62~1_combout\ & (\logic_unit|Add0~6_combout\ & ((!\Mux68~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux62~1_combout\,
	datab => \logic_unit|Add0~6_combout\,
	datac => \instruction_register|regval\(3),
	datad => \Mux68~1_combout\,
	combout => \data_bus[3]~14_combout\);

-- Location: LCCOMB_X51_Y16_N14
\program_counter|pc_val[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[4]~18_combout\ = (\program_counter|pc_val\(4) & (\program_counter|pc_val[3]~17\ $ (GND))) # (!\program_counter|pc_val\(4) & (!\program_counter|pc_val[3]~17\ & VCC))
-- \program_counter|pc_val[4]~19\ = CARRY((\program_counter|pc_val\(4) & !\program_counter|pc_val[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \program_counter|pc_val\(4),
	datad => VCC,
	cin => \program_counter|pc_val[3]~17\,
	combout => \program_counter|pc_val[4]~18_combout\,
	cout => \program_counter|pc_val[4]~19\);

-- Location: FF_X51_Y16_N15
\program_counter|pc_val[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \program_counter|pc_val[4]~18_combout\,
	asdata => \data_bus[4]~21_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux67~1_combout\,
	ena => \program_counter|pc_val[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(4));

-- Location: LCCOMB_X51_Y16_N16
\program_counter|pc_val[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[5]~20_combout\ = (\program_counter|pc_val\(5) & (!\program_counter|pc_val[4]~19\)) # (!\program_counter|pc_val\(5) & ((\program_counter|pc_val[4]~19\) # (GND)))
-- \program_counter|pc_val[5]~21\ = CARRY((!\program_counter|pc_val[4]~19\) # (!\program_counter|pc_val\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \program_counter|pc_val\(5),
	datad => VCC,
	cin => \program_counter|pc_val[4]~19\,
	combout => \program_counter|pc_val[5]~20_combout\,
	cout => \program_counter|pc_val[5]~21\);

-- Location: FF_X51_Y16_N17
\program_counter|pc_val[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \program_counter|pc_val[5]~20_combout\,
	asdata => \data_bus[5]~26_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux67~1_combout\,
	ena => \program_counter|pc_val[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(5));

-- Location: LCCOMB_X51_Y16_N18
\program_counter|pc_val[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[6]~22_combout\ = (\program_counter|pc_val\(6) & (\program_counter|pc_val[5]~21\ $ (GND))) # (!\program_counter|pc_val\(6) & (!\program_counter|pc_val[5]~21\ & VCC))
-- \program_counter|pc_val[6]~23\ = CARRY((\program_counter|pc_val\(6) & !\program_counter|pc_val[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \program_counter|pc_val\(6),
	datad => VCC,
	cin => \program_counter|pc_val[5]~21\,
	combout => \program_counter|pc_val[6]~22_combout\,
	cout => \program_counter|pc_val[6]~23\);

-- Location: FF_X51_Y16_N19
\program_counter|pc_val[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \program_counter|pc_val[6]~22_combout\,
	asdata => \data_bus[6]~31_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux67~1_combout\,
	ena => \program_counter|pc_val[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(6));

-- Location: LCCOMB_X49_Y16_N2
\data_bus[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[6]~29_combout\ = (!\Mux56~2_combout\ & (\Mux56~1_combout\ & \program_counter|pc_val\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux56~2_combout\,
	datac => \Mux56~1_combout\,
	datad => \program_counter|pc_val\(6),
	combout => \data_bus[6]~29_combout\);

-- Location: FF_X50_Y16_N3
\a_register|regval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	asdata => \data_bus[6]~31_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux63~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(6));

-- Location: FF_X50_Y16_N9
\b_register|regval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \data_bus[6]~31_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(6));

-- Location: LCCOMB_X45_Y16_N4
\a_register|regval[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_register|regval[4]~feeder_combout\ = \data_bus[4]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_bus[4]~21_combout\,
	combout => \a_register|regval[4]~feeder_combout\);

-- Location: FF_X45_Y16_N5
\a_register|regval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \a_register|regval[4]~feeder_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux63~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(4));

-- Location: LCCOMB_X50_Y16_N24
\logic_unit|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1~8_combout\ = ((\b_register|regval\(4) $ (\a_register|regval\(4) $ (!\logic_unit|Add1~7\)))) # (GND)
-- \logic_unit|Add1~9\ = CARRY((\b_register|regval\(4) & ((\a_register|regval\(4)) # (!\logic_unit|Add1~7\))) # (!\b_register|regval\(4) & (\a_register|regval\(4) & !\logic_unit|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_register|regval\(4),
	datab => \a_register|regval\(4),
	datad => VCC,
	cin => \logic_unit|Add1~7\,
	combout => \logic_unit|Add1~8_combout\,
	cout => \logic_unit|Add1~9\);

-- Location: LCCOMB_X50_Y16_N26
\logic_unit|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1~10_combout\ = (\b_register|regval\(5) & ((\a_register|regval\(5) & (\logic_unit|Add1~9\ & VCC)) # (!\a_register|regval\(5) & (!\logic_unit|Add1~9\)))) # (!\b_register|regval\(5) & ((\a_register|regval\(5) & (!\logic_unit|Add1~9\)) # 
-- (!\a_register|regval\(5) & ((\logic_unit|Add1~9\) # (GND)))))
-- \logic_unit|Add1~11\ = CARRY((\b_register|regval\(5) & (!\a_register|regval\(5) & !\logic_unit|Add1~9\)) # (!\b_register|regval\(5) & ((!\logic_unit|Add1~9\) # (!\a_register|regval\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_register|regval\(5),
	datab => \a_register|regval\(5),
	datad => VCC,
	cin => \logic_unit|Add1~9\,
	combout => \logic_unit|Add1~10_combout\,
	cout => \logic_unit|Add1~11\);

-- Location: LCCOMB_X50_Y16_N28
\logic_unit|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1~12_combout\ = ((\a_register|regval\(6) $ (\b_register|regval\(6) $ (!\logic_unit|Add1~11\)))) # (GND)
-- \logic_unit|Add1~13\ = CARRY((\a_register|regval\(6) & ((\b_register|regval\(6)) # (!\logic_unit|Add1~11\))) # (!\a_register|regval\(6) & (\b_register|regval\(6) & !\logic_unit|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_register|regval\(6),
	datab => \b_register|regval\(6),
	datad => VCC,
	cin => \logic_unit|Add1~11\,
	combout => \logic_unit|Add1~12_combout\,
	cout => \logic_unit|Add1~13\);

-- Location: LCCOMB_X45_Y16_N14
\logic_unit|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add0~8_combout\ = ((\b_register|regval\(4) $ (\a_register|regval\(4) $ (\logic_unit|Add0~7\)))) # (GND)
-- \logic_unit|Add0~9\ = CARRY((\b_register|regval\(4) & (\a_register|regval\(4) & !\logic_unit|Add0~7\)) # (!\b_register|regval\(4) & ((\a_register|regval\(4)) # (!\logic_unit|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_register|regval\(4),
	datab => \a_register|regval\(4),
	datad => VCC,
	cin => \logic_unit|Add0~7\,
	combout => \logic_unit|Add0~8_combout\,
	cout => \logic_unit|Add0~9\);

-- Location: LCCOMB_X45_Y16_N16
\logic_unit|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add0~10_combout\ = (\a_register|regval\(5) & ((\b_register|regval\(5) & (!\logic_unit|Add0~9\)) # (!\b_register|regval\(5) & (\logic_unit|Add0~9\ & VCC)))) # (!\a_register|regval\(5) & ((\b_register|regval\(5) & ((\logic_unit|Add0~9\) # 
-- (GND))) # (!\b_register|regval\(5) & (!\logic_unit|Add0~9\))))
-- \logic_unit|Add0~11\ = CARRY((\a_register|regval\(5) & (\b_register|regval\(5) & !\logic_unit|Add0~9\)) # (!\a_register|regval\(5) & ((\b_register|regval\(5)) # (!\logic_unit|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_register|regval\(5),
	datab => \b_register|regval\(5),
	datad => VCC,
	cin => \logic_unit|Add0~9\,
	combout => \logic_unit|Add0~10_combout\,
	cout => \logic_unit|Add0~11\);

-- Location: LCCOMB_X45_Y16_N18
\logic_unit|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add0~12_combout\ = ((\b_register|regval\(6) $ (\a_register|regval\(6) $ (\logic_unit|Add0~11\)))) # (GND)
-- \logic_unit|Add0~13\ = CARRY((\b_register|regval\(6) & (\a_register|regval\(6) & !\logic_unit|Add0~11\)) # (!\b_register|regval\(6) & ((\a_register|regval\(6)) # (!\logic_unit|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b_register|regval\(6),
	datab => \a_register|regval\(6),
	datad => VCC,
	cin => \logic_unit|Add0~11\,
	combout => \logic_unit|Add0~12_combout\,
	cout => \logic_unit|Add0~13\);

-- Location: LCCOMB_X47_Y16_N6
\data_bus[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[6]~28_combout\ = (\logic_unit|Add0~12_combout\ & (((\instruction_register|regval\(6) & \Mux62~1_combout\)) # (!\Mux68~1_combout\))) # (!\logic_unit|Add0~12_combout\ & (\instruction_register|regval\(6) & (\Mux62~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add0~12_combout\,
	datab => \instruction_register|regval\(6),
	datac => \Mux62~1_combout\,
	datad => \Mux68~1_combout\,
	combout => \data_bus[6]~28_combout\);

-- Location: LCCOMB_X50_Y16_N10
\data_bus[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[6]~30_combout\ = (\data_bus[6]~29_combout\) # ((\data_bus[6]~28_combout\) # ((\logic_unit|Add1~12_combout\ & !\data_bus[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_bus[6]~29_combout\,
	datab => \logic_unit|Add1~12_combout\,
	datac => \data_bus[6]~28_combout\,
	datad => \data_bus[4]~2_combout\,
	combout => \data_bus[6]~30_combout\);

-- Location: LCCOMB_X50_Y16_N8
\data_bus[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[6]~31_combout\ = (\data_bus[6]~30_combout\) # (\data_bus[6]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_bus[6]~30_combout\,
	datab => \data_bus[6]~27_combout\,
	combout => \data_bus[6]~31_combout\);

-- Location: FF_X50_Y16_N1
\b_register|regval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \data_bus[7]~34_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(7));

-- Location: FF_X50_Y16_N31
\a_register|regval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	asdata => \data_bus[7]~34_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux63~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_register|regval\(7));

-- Location: LCCOMB_X45_Y16_N20
\logic_unit|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add0~14_combout\ = \b_register|regval\(7) $ (\logic_unit|Add0~13\ $ (!\a_register|regval\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b_register|regval\(7),
	datad => \a_register|regval\(7),
	cin => \logic_unit|Add0~13\,
	combout => \logic_unit|Add0~14_combout\);

-- Location: LCCOMB_X50_Y16_N30
\logic_unit|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \logic_unit|Add1~14_combout\ = \b_register|regval\(7) $ (\logic_unit|Add1~13\ $ (\a_register|regval\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b_register|regval\(7),
	datad => \a_register|regval\(7),
	cin => \logic_unit|Add1~13\,
	combout => \logic_unit|Add1~14_combout\);

-- Location: LCCOMB_X51_Y16_N20
\program_counter|pc_val[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \program_counter|pc_val[7]~24_combout\ = \program_counter|pc_val\(7) $ (\program_counter|pc_val[6]~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \program_counter|pc_val\(7),
	cin => \program_counter|pc_val[6]~23\,
	combout => \program_counter|pc_val[7]~24_combout\);

-- Location: FF_X51_Y16_N21
\program_counter|pc_val[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \program_counter|pc_val[7]~24_combout\,
	asdata => \data_bus[7]~34_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux67~1_combout\,
	ena => \program_counter|pc_val[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(7));

-- Location: LCCOMB_X50_Y16_N14
\data_bus[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[7]~33_combout\ = (\logic_unit|Add1~14_combout\ & (((\program_counter|pc_val\(7) & \Mux56~3_combout\)) # (!\data_bus[4]~2_combout\))) # (!\logic_unit|Add1~14_combout\ & (\program_counter|pc_val\(7) & (\Mux56~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add1~14_combout\,
	datab => \program_counter|pc_val\(7),
	datac => \Mux56~3_combout\,
	datad => \data_bus[4]~2_combout\,
	combout => \data_bus[7]~33_combout\);

-- Location: M9K_X33_Y16_N0
\memory|memory|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000040000000000000000000000000000000000000000000000000001040070000C0002F",
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

-- Location: LCCOMB_X49_Y16_N12
\data_bus[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[7]~32_combout\ = (\Mux58~3_combout\ & ((\memory|memory|altsyncram_component|auto_generated|q_a\(7)) # ((\a_register|regval\(7) & \Mux69~1_combout\)))) # (!\Mux58~3_combout\ & (\a_register|regval\(7) & (\Mux69~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~3_combout\,
	datab => \a_register|regval\(7),
	datac => \Mux69~1_combout\,
	datad => \memory|memory|altsyncram_component|auto_generated|q_a\(7),
	combout => \data_bus[7]~32_combout\);

-- Location: LCCOMB_X50_Y16_N0
\data_bus[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[7]~34_combout\ = (\data_bus[7]~33_combout\) # ((\data_bus[7]~32_combout\) # ((!\Mux68~1_combout\ & \logic_unit|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux68~1_combout\,
	datab => \logic_unit|Add0~14_combout\,
	datac => \data_bus[7]~33_combout\,
	datad => \data_bus[7]~32_combout\,
	combout => \data_bus[7]~34_combout\);

-- Location: LCCOMB_X50_Y16_N4
\data_bus[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[3]~13_combout\ = (\Mux69~1_combout\ & ((\a_register|regval\(3)) # ((\Mux58~3_combout\ & \memory|memory|altsyncram_component|auto_generated|q_a\(3))))) # (!\Mux69~1_combout\ & (((\Mux58~3_combout\ & 
-- \memory|memory|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~1_combout\,
	datab => \a_register|regval\(3),
	datac => \Mux58~3_combout\,
	datad => \memory|memory|altsyncram_component|auto_generated|q_a\(3),
	combout => \data_bus[3]~13_combout\);

-- Location: LCCOMB_X50_Y16_N6
\data_bus[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[3]~16_combout\ = (\data_bus[3]~15_combout\) # ((\data_bus[3]~14_combout\) # (\data_bus[3]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_bus[3]~15_combout\,
	datac => \data_bus[3]~14_combout\,
	datad => \data_bus[3]~13_combout\,
	combout => \data_bus[3]~16_combout\);

-- Location: LCCOMB_X46_Y16_N8
\data_bus[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[2]~9_combout\ = (\a_register|regval\(2) & ((\Mux69~1_combout\) # ((\Mux58~3_combout\ & \memory|memory|altsyncram_component|auto_generated|q_a\(2))))) # (!\a_register|regval\(2) & (\Mux58~3_combout\ & 
-- ((\memory|memory|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_register|regval\(2),
	datab => \Mux58~3_combout\,
	datac => \Mux69~1_combout\,
	datad => \memory|memory|altsyncram_component|auto_generated|q_a\(2),
	combout => \data_bus[2]~9_combout\);

-- Location: LCCOMB_X46_Y16_N14
\data_bus[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[2]~12_combout\ = (\data_bus[2]~11_combout\) # ((\data_bus[2]~10_combout\) # (\data_bus[2]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_bus[2]~11_combout\,
	datac => \data_bus[2]~10_combout\,
	datad => \data_bus[2]~9_combout\,
	combout => \data_bus[2]~12_combout\);

-- Location: LCCOMB_X46_Y16_N30
\data_bus[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[1]~5_combout\ = (\a_register|regval\(1) & ((\Mux69~1_combout\) # ((\Mux58~3_combout\ & \memory|memory|altsyncram_component|auto_generated|q_a\(1))))) # (!\a_register|regval\(1) & (\Mux58~3_combout\ & 
-- ((\memory|memory|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_register|regval\(1),
	datab => \Mux58~3_combout\,
	datac => \Mux69~1_combout\,
	datad => \memory|memory|altsyncram_component|auto_generated|q_a\(1),
	combout => \data_bus[1]~5_combout\);

-- Location: LCCOMB_X46_Y16_N28
\data_bus[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[1]~8_combout\ = (\data_bus[1]~7_combout\) # ((\data_bus[1]~6_combout\) # (\data_bus[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_bus[1]~7_combout\,
	datac => \data_bus[1]~6_combout\,
	datad => \data_bus[1]~5_combout\,
	combout => \data_bus[1]~8_combout\);

-- Location: LCCOMB_X48_Y16_N12
\data_bus[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[5]~22_combout\ = (\Mux69~1_combout\ & ((\a_register|regval\(5)) # ((\Mux58~3_combout\ & \memory|memory|altsyncram_component|auto_generated|q_a\(5))))) # (!\Mux69~1_combout\ & (\Mux58~3_combout\ & 
-- ((\memory|memory|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~1_combout\,
	datab => \Mux58~3_combout\,
	datac => \a_register|regval\(5),
	datad => \memory|memory|altsyncram_component|auto_generated|q_a\(5),
	combout => \data_bus[5]~22_combout\);

-- Location: LCCOMB_X48_Y16_N22
\data_bus[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[5]~26_combout\ = (\data_bus[5]~22_combout\) # (\data_bus[5]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_bus[5]~22_combout\,
	datad => \data_bus[5]~25_combout\,
	combout => \data_bus[5]~26_combout\);

-- Location: FF_X48_Y16_N23
\b_register|regval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \data_bus[5]~26_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(5));

-- Location: LCCOMB_X48_Y16_N8
\data_bus[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[5]~23_combout\ = (\logic_unit|Add0~10_combout\ & (((\instruction_register|regval\(5) & \Mux62~1_combout\)) # (!\Mux68~1_combout\))) # (!\logic_unit|Add0~10_combout\ & (((\instruction_register|regval\(5) & \Mux62~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add0~10_combout\,
	datab => \Mux68~1_combout\,
	datac => \instruction_register|regval\(5),
	datad => \Mux62~1_combout\,
	combout => \data_bus[5]~23_combout\);

-- Location: LCCOMB_X47_Y16_N20
\data_bus[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[5]~24_combout\ = (!\Mux56~2_combout\ & (\program_counter|pc_val\(5) & \Mux56~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~2_combout\,
	datab => \program_counter|pc_val\(5),
	datad => \Mux56~1_combout\,
	combout => \data_bus[5]~24_combout\);

-- Location: LCCOMB_X48_Y16_N30
\data_bus[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[5]~25_combout\ = (\data_bus[5]~23_combout\) # ((\data_bus[5]~24_combout\) # ((\logic_unit|Add1~10_combout\ & !\data_bus[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add1~10_combout\,
	datab => \data_bus[4]~2_combout\,
	datac => \data_bus[5]~23_combout\,
	datad => \data_bus[5]~24_combout\,
	combout => \data_bus[5]~25_combout\);

-- Location: LCCOMB_X47_Y16_N10
\instruction_register|regval[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_register|regval[5]~1_combout\ = (\Mux59~1_combout\ & ((\data_bus[5]~25_combout\) # ((\data_bus[5]~22_combout\)))) # (!\Mux59~1_combout\ & (((\instruction_register|regval\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_bus[5]~25_combout\,
	datab => \data_bus[5]~22_combout\,
	datac => \instruction_register|regval\(5),
	datad => \Mux59~1_combout\,
	combout => \instruction_register|regval[5]~1_combout\);

-- Location: FF_X47_Y16_N11
\instruction_register|regval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \instruction_register|regval[5]~1_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(5));

-- Location: LCCOMB_X49_Y16_N22
\Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\instruction_register|regval\(5) & (!\instruction_register|regval\(4))) # (!\instruction_register|regval\(5) & (\instruction_register|regval\(4) & !\instruction_register|regval\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|regval\(5),
	datac => \instruction_register|regval\(4),
	datad => \instruction_register|regval\(6),
	combout => \Mux58~0_combout\);

-- Location: LCCOMB_X48_Y16_N4
\Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = (\mc|counter_val\(0) & (!\instruction_register|regval\(7) & (!\mc|counter_val\(3) & !\mc|counter_val\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(0),
	datab => \instruction_register|regval\(7),
	datac => \mc|counter_val\(3),
	datad => \mc|counter_val\(2),
	combout => \Mux59~0_combout\);

-- Location: LCCOMB_X47_Y16_N2
\Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~1_combout\ = (!\instruction_register|regval\(7) & (\mc|counter_val\(2) $ (\mc|counter_val\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(7),
	datac => \mc|counter_val\(2),
	datad => \mc|counter_val\(0),
	combout => \Mux58~1_combout\);

-- Location: LCCOMB_X48_Y16_N10
\Mux58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~2_combout\ = (!\instruction_register|regval\(6) & (!\mc|counter_val\(3) & \Mux58~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(6),
	datac => \mc|counter_val\(3),
	datad => \Mux58~1_combout\,
	combout => \Mux58~2_combout\);

-- Location: LCCOMB_X48_Y16_N16
\Mux58~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~3_combout\ = (!\mc|counter_val\(1) & ((\Mux58~0_combout\ & ((\Mux58~2_combout\))) # (!\Mux58~0_combout\ & (\Mux59~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(1),
	datab => \Mux58~0_combout\,
	datac => \Mux59~0_combout\,
	datad => \Mux58~2_combout\,
	combout => \Mux58~3_combout\);

-- Location: LCCOMB_X50_Y16_N2
\data_bus[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[6]~27_combout\ = (\Mux58~3_combout\ & ((\memory|memory|altsyncram_component|auto_generated|q_a\(6)) # ((\Mux69~1_combout\ & \a_register|regval\(6))))) # (!\Mux58~3_combout\ & (\Mux69~1_combout\ & (\a_register|regval\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~3_combout\,
	datab => \Mux69~1_combout\,
	datac => \a_register|regval\(6),
	datad => \memory|memory|altsyncram_component|auto_generated|q_a\(6),
	combout => \data_bus[6]~27_combout\);

-- Location: LCCOMB_X47_Y16_N4
\instruction_register|regval[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_register|regval[6]~0_combout\ = (\Mux59~1_combout\ & ((\data_bus[6]~27_combout\) # ((\data_bus[6]~30_combout\)))) # (!\Mux59~1_combout\ & (((\instruction_register|regval\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux59~1_combout\,
	datab => \data_bus[6]~27_combout\,
	datac => \instruction_register|regval\(6),
	datad => \data_bus[6]~30_combout\,
	combout => \instruction_register|regval[6]~0_combout\);

-- Location: FF_X47_Y16_N5
\instruction_register|regval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \instruction_register|regval[6]~0_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(6));

-- Location: LCCOMB_X48_Y16_N6
\Mux69~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux69~1_combout\ = (\instruction_register|regval\(6) & (\instruction_register|regval\(5) & \Mux69~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(6),
	datab => \instruction_register|regval\(5),
	datad => \Mux69~0_combout\,
	combout => \Mux69~1_combout\);

-- Location: LCCOMB_X48_Y16_N2
\data_bus[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[4]~17_combout\ = (\Mux69~1_combout\ & ((\a_register|regval\(4)) # ((\Mux58~3_combout\ & \memory|memory|altsyncram_component|auto_generated|q_a\(4))))) # (!\Mux69~1_combout\ & (\Mux58~3_combout\ & 
-- ((\memory|memory|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~1_combout\,
	datab => \Mux58~3_combout\,
	datac => \a_register|regval\(4),
	datad => \memory|memory|altsyncram_component|auto_generated|q_a\(4),
	combout => \data_bus[4]~17_combout\);

-- Location: LCCOMB_X48_Y16_N20
\data_bus[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[4]~21_combout\ = (\data_bus[4]~17_combout\) # (\data_bus[4]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_bus[4]~17_combout\,
	datad => \data_bus[4]~20_combout\,
	combout => \data_bus[4]~21_combout\);

-- Location: FF_X48_Y16_N21
\b_register|regval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \data_bus[4]~21_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux64~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_register|regval\(4));

-- Location: LCCOMB_X48_Y16_N14
\data_bus[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[4]~18_combout\ = (\instruction_register|regval\(4) & ((\Mux62~1_combout\) # ((!\Mux68~1_combout\ & \logic_unit|Add0~8_combout\)))) # (!\instruction_register|regval\(4) & (!\Mux68~1_combout\ & (\logic_unit|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(4),
	datab => \Mux68~1_combout\,
	datac => \logic_unit|Add0~8_combout\,
	datad => \Mux62~1_combout\,
	combout => \data_bus[4]~18_combout\);

-- Location: LCCOMB_X48_Y16_N0
\data_bus[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[4]~19_combout\ = (!\Mux56~2_combout\ & (\program_counter|pc_val\(4) & \Mux56~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux56~2_combout\,
	datac => \program_counter|pc_val\(4),
	datad => \Mux56~1_combout\,
	combout => \data_bus[4]~19_combout\);

-- Location: LCCOMB_X48_Y16_N26
\data_bus[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[4]~20_combout\ = (\data_bus[4]~18_combout\) # ((\data_bus[4]~19_combout\) # ((\logic_unit|Add1~8_combout\ & !\data_bus[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add1~8_combout\,
	datab => \data_bus[4]~2_combout\,
	datac => \data_bus[4]~18_combout\,
	datad => \data_bus[4]~19_combout\,
	combout => \data_bus[4]~20_combout\);

-- Location: LCCOMB_X47_Y16_N14
\instruction_register|regval[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_register|regval[4]~2_combout\ = (\Mux59~1_combout\ & ((\data_bus[4]~20_combout\) # ((\data_bus[4]~17_combout\)))) # (!\Mux59~1_combout\ & (((\instruction_register|regval\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux59~1_combout\,
	datab => \data_bus[4]~20_combout\,
	datac => \instruction_register|regval\(4),
	datad => \data_bus[4]~17_combout\,
	combout => \instruction_register|regval[4]~2_combout\);

-- Location: FF_X47_Y16_N15
\instruction_register|regval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \instruction_register|regval[4]~2_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(4));

-- Location: LCCOMB_X47_Y16_N30
\mc|counter_val[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc|counter_val[3]~2_combout\ = (\mc|counter_val\(0) & (!\instruction_register|regval\(6) & (\instruction_register|regval\(4) $ (\instruction_register|regval\(5))))) # (!\mc|counter_val\(0) & (\instruction_register|regval\(4) & 
-- ((\instruction_register|regval\(6)) # (\instruction_register|regval\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(0),
	datab => \instruction_register|regval\(4),
	datac => \instruction_register|regval\(6),
	datad => \instruction_register|regval\(5),
	combout => \mc|counter_val[3]~2_combout\);

-- Location: LCCOMB_X47_Y16_N24
\mc|counter_val[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc|counter_val[3]~1_combout\ = (\mc|counter_val\(0) & (\mc|counter_val\(1) & (!\instruction_register|regval\(4) & !\instruction_register|regval\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(0),
	datab => \mc|counter_val\(1),
	datac => \instruction_register|regval\(4),
	datad => \instruction_register|regval\(5),
	combout => \mc|counter_val[3]~1_combout\);

-- Location: LCCOMB_X47_Y16_N12
\mc|counter_val[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc|counter_val[3]~3_combout\ = (\mc|counter_val\(2) & (!\mc|counter_val\(1) & (\mc|counter_val[3]~2_combout\))) # (!\mc|counter_val\(2) & (((\mc|counter_val[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(1),
	datab => \mc|counter_val\(2),
	datac => \mc|counter_val[3]~2_combout\,
	datad => \mc|counter_val[3]~1_combout\,
	combout => \mc|counter_val[3]~3_combout\);

-- Location: LCCOMB_X47_Y16_N18
\mc|counter_val[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc|counter_val[3]~4_combout\ = ((!\mc|counter_val\(3) & (!\instruction_register|regval\(7) & \mc|counter_val[3]~3_combout\))) # (!\clear_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear_in~input_o\,
	datab => \mc|counter_val\(3),
	datac => \instruction_register|regval\(7),
	datad => \mc|counter_val[3]~3_combout\,
	combout => \mc|counter_val[3]~4_combout\);

-- Location: FF_X47_Y16_N17
\mc|counter_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~input_o\,
	asdata => \mc|counter_val[0]~7_combout\,
	clrn => \mc|ALT_INV_counter_val[3]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc|counter_val\(0));

-- Location: LCCOMB_X49_Y16_N20
\mc|counter_val[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mc|counter_val[1]~0_combout\ = \mc|counter_val\(1) $ (\mc|counter_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(1),
	datad => \mc|counter_val\(0),
	combout => \mc|counter_val[1]~0_combout\);

-- Location: FF_X47_Y16_N23
\mc|counter_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~input_o\,
	asdata => \mc|counter_val[1]~0_combout\,
	clrn => \mc|ALT_INV_counter_val[3]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mc|counter_val\(1));

-- Location: LCCOMB_X49_Y16_N10
\Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~1_combout\ = (!\mc|counter_val\(1) & (\Mux59~0_combout\ & !\program_counter|pc_val[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mc|counter_val\(1),
	datac => \Mux59~0_combout\,
	datad => \program_counter|pc_val[0]~8_combout\,
	combout => \Mux59~1_combout\);

-- Location: LCCOMB_X47_Y17_N14
\instruction_register|regval[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_register|regval[7]~3_combout\ = (\instruction_register|regval\(7)) # ((\Mux59~1_combout\ & \data_bus[7]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux59~1_combout\,
	datac => \instruction_register|regval\(7),
	datad => \data_bus[7]~34_combout\,
	combout => \instruction_register|regval[7]~3_combout\);

-- Location: FF_X47_Y17_N15
\instruction_register|regval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \instruction_register|regval[7]~3_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(7));

-- Location: LCCOMB_X48_Y17_N20
\Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux67~0_combout\ = (!\instruction_register|regval\(4) & (!\instruction_register|regval\(5) & \instruction_register|regval\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(4),
	datab => \instruction_register|regval\(5),
	datac => \instruction_register|regval\(6),
	combout => \Mux67~0_combout\);

-- Location: LCCOMB_X47_Y16_N26
\Mux67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux67~1_combout\ = (!\instruction_register|regval\(7) & (\Mux67~0_combout\ & (\Mux56~0_combout\ & \mc|counter_val\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|regval\(7),
	datab => \Mux67~0_combout\,
	datac => \Mux56~0_combout\,
	datad => \mc|counter_val\(1),
	combout => \Mux67~1_combout\);

-- Location: FF_X51_Y16_N7
\program_counter|pc_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \program_counter|pc_val[0]~9_combout\,
	asdata => \data_bus[0]~4_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => \Mux67~1_combout\,
	ena => \program_counter|pc_val[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \program_counter|pc_val\(0));

-- Location: LCCOMB_X46_Y16_N10
\data_bus[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[0]~3_combout\ = (\program_counter|pc_val\(0) & ((\Mux56~3_combout\) # ((\logic_unit|Add1~0_combout\ & !\data_bus[4]~2_combout\)))) # (!\program_counter|pc_val\(0) & (\logic_unit|Add1~0_combout\ & ((!\data_bus[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \program_counter|pc_val\(0),
	datab => \logic_unit|Add1~0_combout\,
	datac => \Mux56~3_combout\,
	datad => \data_bus[4]~2_combout\,
	combout => \data_bus[0]~3_combout\);

-- Location: FF_X46_Y16_N19
\instruction_register|regval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	asdata => \data_bus[0]~4_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux59~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instruction_register|regval\(0));

-- Location: LCCOMB_X46_Y16_N18
\data_bus[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[0]~1_combout\ = (\logic_unit|Add0~0_combout\ & (((\Mux62~1_combout\ & \instruction_register|regval\(0))) # (!\Mux68~1_combout\))) # (!\logic_unit|Add0~0_combout\ & (\Mux62~1_combout\ & (\instruction_register|regval\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \logic_unit|Add0~0_combout\,
	datab => \Mux62~1_combout\,
	datac => \instruction_register|regval\(0),
	datad => \Mux68~1_combout\,
	combout => \data_bus[0]~1_combout\);

-- Location: LCCOMB_X46_Y16_N26
\data_bus[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[0]~0_combout\ = (\Mux69~1_combout\ & ((\a_register|regval\(0)) # ((\Mux58~3_combout\ & \memory|memory|altsyncram_component|auto_generated|q_a\(0))))) # (!\Mux69~1_combout\ & (((\Mux58~3_combout\ & 
-- \memory|memory|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux69~1_combout\,
	datab => \a_register|regval\(0),
	datac => \Mux58~3_combout\,
	datad => \memory|memory|altsyncram_component|auto_generated|q_a\(0),
	combout => \data_bus[0]~0_combout\);

-- Location: LCCOMB_X46_Y16_N22
\data_bus[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_bus[0]~4_combout\ = (\data_bus[0]~3_combout\) # ((\data_bus[0]~1_combout\) # (\data_bus[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_bus[0]~3_combout\,
	datab => \data_bus[0]~1_combout\,
	datac => \data_bus[0]~0_combout\,
	combout => \data_bus[0]~4_combout\);

-- Location: FF_X45_Y16_N9
\output_register|regval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	asdata => \data_bus[0]~4_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux69~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(0));

-- Location: FF_X45_Y16_N13
\output_register|regval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	asdata => \data_bus[1]~8_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux69~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(1));

-- Location: FF_X45_Y16_N7
\output_register|regval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	asdata => \data_bus[2]~12_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux69~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(2));

-- Location: FF_X49_Y16_N21
\output_register|regval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	asdata => \data_bus[3]~16_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux69~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(3));

-- Location: FF_X48_Y16_N25
\output_register|regval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	asdata => \data_bus[4]~21_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux69~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(4));

-- Location: FF_X48_Y16_N7
\output_register|regval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	asdata => \data_bus[5]~26_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux69~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(5));

-- Location: FF_X49_Y16_N31
\output_register|regval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	asdata => \data_bus[6]~31_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux69~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_register|regval\(6));

-- Location: LCCOMB_X49_Y16_N8
\output_register|regval[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_register|regval[7]~feeder_combout\ = \data_bus[7]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_bus[7]~34_combout\,
	combout => \output_register|regval[7]~feeder_combout\);

-- Location: FF_X49_Y16_N9
\output_register|regval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_in~input_o\,
	d => \output_register|regval[7]~feeder_combout\,
	clrn => \clear_in~inputclkctrl_outclk\,
	ena => \Mux69~1_combout\,
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


