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

-- DATE "04/16/2024 23:13:17"

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

ENTITY 	reg IS
    PORT (
	ld : IN std_logic;
	clk : IN std_logic;
	clr : IN std_logic;
	oute : IN std_logic;
	d_out : BUFFER std_logic_vector(7 DOWNTO 0);
	bus_out : BUFFER std_logic_vector(7 DOWNTO 0);
	d_in : IN std_logic_vector(7 DOWNTO 0)
	);
END reg;

-- Design Ports Information
-- d_out[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[2]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[3]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_out[7]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_out[0]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_out[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_out[2]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_out[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_out[4]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_out[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_out[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus_out[7]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[3]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[4]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oute	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF reg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ld : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_oute : std_logic;
SIGNAL ww_d_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_bus_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_d_in : std_logic_vector(7 DOWNTO 0);
SIGNAL \clr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bus_out[0]~output_o\ : std_logic;
SIGNAL \bus_out[1]~output_o\ : std_logic;
SIGNAL \bus_out[2]~output_o\ : std_logic;
SIGNAL \bus_out[3]~output_o\ : std_logic;
SIGNAL \bus_out[4]~output_o\ : std_logic;
SIGNAL \bus_out[5]~output_o\ : std_logic;
SIGNAL \bus_out[6]~output_o\ : std_logic;
SIGNAL \bus_out[7]~output_o\ : std_logic;
SIGNAL \d_out[0]~output_o\ : std_logic;
SIGNAL \d_out[1]~output_o\ : std_logic;
SIGNAL \d_out[2]~output_o\ : std_logic;
SIGNAL \d_out[3]~output_o\ : std_logic;
SIGNAL \d_out[4]~output_o\ : std_logic;
SIGNAL \d_out[5]~output_o\ : std_logic;
SIGNAL \d_out[6]~output_o\ : std_logic;
SIGNAL \d_out[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \d_in[0]~input_o\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \ld~input_o\ : std_logic;
SIGNAL \oute~input_o\ : std_logic;
SIGNAL \d_in[1]~input_o\ : std_logic;
SIGNAL \d_in[2]~input_o\ : std_logic;
SIGNAL \d_in[3]~input_o\ : std_logic;
SIGNAL \regval[3]~feeder_combout\ : std_logic;
SIGNAL \d_in[4]~input_o\ : std_logic;
SIGNAL \d_in[5]~input_o\ : std_logic;
SIGNAL \regval[5]~feeder_combout\ : std_logic;
SIGNAL \d_in[6]~input_o\ : std_logic;
SIGNAL \d_in[7]~input_o\ : std_logic;
SIGNAL \regval[7]~feeder_combout\ : std_logic;
SIGNAL regval : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_oute~input_o\ : std_logic;
SIGNAL \ALT_INV_ld~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ld <= ld;
ww_clk <= clk;
ww_clr <= clr;
ww_oute <= oute;
d_out <= ww_d_out;
bus_out <= ww_bus_out;
ww_d_in <= d_in;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clr~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clr~inputclkctrl_outclk\ <= NOT \clr~inputclkctrl_outclk\;
\ALT_INV_oute~input_o\ <= NOT \oute~input_o\;
\ALT_INV_ld~input_o\ <= NOT \ld~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y23_N2
\bus_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regval(0),
	oe => \ALT_INV_oute~input_o\,
	devoe => ww_devoe,
	o => \bus_out[0]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\bus_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regval(1),
	oe => \ALT_INV_oute~input_o\,
	devoe => ww_devoe,
	o => \bus_out[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\bus_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regval(2),
	oe => \ALT_INV_oute~input_o\,
	devoe => ww_devoe,
	o => \bus_out[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\bus_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regval(3),
	oe => \ALT_INV_oute~input_o\,
	devoe => ww_devoe,
	o => \bus_out[3]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\bus_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regval(4),
	oe => \ALT_INV_oute~input_o\,
	devoe => ww_devoe,
	o => \bus_out[4]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\bus_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regval(5),
	oe => \ALT_INV_oute~input_o\,
	devoe => ww_devoe,
	o => \bus_out[5]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\bus_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regval(6),
	oe => \ALT_INV_oute~input_o\,
	devoe => ww_devoe,
	o => \bus_out[6]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\bus_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regval(7),
	oe => \ALT_INV_oute~input_o\,
	devoe => ww_devoe,
	o => \bus_out[7]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\d_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regval(0),
	devoe => ww_devoe,
	o => \d_out[0]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\d_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regval(1),
	devoe => ww_devoe,
	o => \d_out[1]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\d_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regval(2),
	devoe => ww_devoe,
	o => \d_out[2]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\d_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regval(3),
	devoe => ww_devoe,
	o => \d_out[3]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\d_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regval(4),
	devoe => ww_devoe,
	o => \d_out[4]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\d_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regval(5),
	devoe => ww_devoe,
	o => \d_out[5]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\d_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regval(6),
	devoe => ww_devoe,
	o => \d_out[6]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\d_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => regval(7),
	devoe => ww_devoe,
	o => \d_out[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G18
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y16_N22
\d_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(0),
	o => \d_in[0]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: CLKCTRL_G4
\clr~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clr~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clr~inputclkctrl_outclk\);

-- Location: IOIBUF_X53_Y14_N1
\ld~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld,
	o => \ld~input_o\);

-- Location: FF_X1_Y22_N25
\regval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d_in[0]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regval(0));

-- Location: IOIBUF_X0_Y16_N8
\oute~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oute,
	o => \oute~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\d_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(1),
	o => \d_in[1]~input_o\);

-- Location: FF_X26_Y31_N17
\regval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d_in[1]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regval(1));

-- Location: IOIBUF_X25_Y34_N8
\d_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(2),
	o => \d_in[2]~input_o\);

-- Location: FF_X26_Y31_N27
\regval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d_in[2]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regval(2));

-- Location: IOIBUF_X53_Y17_N15
\d_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(3),
	o => \d_in[3]~input_o\);

-- Location: LCCOMB_X26_Y31_N4
\regval[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regval[3]~feeder_combout\ = \d_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in[3]~input_o\,
	combout => \regval[3]~feeder_combout\);

-- Location: FF_X26_Y31_N5
\regval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regval[3]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regval(3));

-- Location: IOIBUF_X16_Y34_N15
\d_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(4),
	o => \d_in[4]~input_o\);

-- Location: FF_X16_Y31_N25
\regval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d_in[4]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regval(4));

-- Location: IOIBUF_X16_Y34_N8
\d_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(5),
	o => \d_in[5]~input_o\);

-- Location: LCCOMB_X16_Y31_N2
\regval[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regval[5]~feeder_combout\ = \d_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in[5]~input_o\,
	combout => \regval[5]~feeder_combout\);

-- Location: FF_X16_Y31_N3
\regval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regval[5]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regval(5));

-- Location: IOIBUF_X16_Y34_N1
\d_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(6),
	o => \d_in[6]~input_o\);

-- Location: FF_X16_Y31_N29
\regval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d_in[6]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regval(6));

-- Location: IOIBUF_X53_Y26_N22
\d_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(7),
	o => \d_in[7]~input_o\);

-- Location: LCCOMB_X26_Y31_N30
\regval[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regval[7]~feeder_combout\ = \d_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in[7]~input_o\,
	combout => \regval[7]~feeder_combout\);

-- Location: FF_X26_Y31_N31
\regval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \regval[7]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \ALT_INV_ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regval(7));

ww_d_out(0) <= \d_out[0]~output_o\;

ww_d_out(1) <= \d_out[1]~output_o\;

ww_d_out(2) <= \d_out[2]~output_o\;

ww_d_out(3) <= \d_out[3]~output_o\;

ww_d_out(4) <= \d_out[4]~output_o\;

ww_d_out(5) <= \d_out[5]~output_o\;

ww_d_out(6) <= \d_out[6]~output_o\;

ww_d_out(7) <= \d_out[7]~output_o\;

ww_bus_out(0) <= \bus_out[0]~output_o\;

ww_bus_out(1) <= \bus_out[1]~output_o\;

ww_bus_out(2) <= \bus_out[2]~output_o\;

ww_bus_out(3) <= \bus_out[3]~output_o\;

ww_bus_out(4) <= \bus_out[4]~output_o\;

ww_bus_out(5) <= \bus_out[5]~output_o\;

ww_bus_out(6) <= \bus_out[6]~output_o\;

ww_bus_out(7) <= \bus_out[7]~output_o\;
END structure;


