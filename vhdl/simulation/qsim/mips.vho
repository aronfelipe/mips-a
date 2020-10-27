-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/27/2020 17:40:42"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cpu IS
    PORT (
	clock : IN std_logic;
	ula_out : BUFFER std_logic_vector(31 DOWNTO 0);
	control_points_pin : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END cpu;

ARCHITECTURE structure OF cpu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_ula_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_control_points_pin : std_logic_vector(3 DOWNTO 0);
SIGNAL \ula_out[0]~output_o\ : std_logic;
SIGNAL \ula_out[1]~output_o\ : std_logic;
SIGNAL \ula_out[2]~output_o\ : std_logic;
SIGNAL \ula_out[3]~output_o\ : std_logic;
SIGNAL \ula_out[4]~output_o\ : std_logic;
SIGNAL \ula_out[5]~output_o\ : std_logic;
SIGNAL \ula_out[6]~output_o\ : std_logic;
SIGNAL \ula_out[7]~output_o\ : std_logic;
SIGNAL \ula_out[8]~output_o\ : std_logic;
SIGNAL \ula_out[9]~output_o\ : std_logic;
SIGNAL \ula_out[10]~output_o\ : std_logic;
SIGNAL \ula_out[11]~output_o\ : std_logic;
SIGNAL \ula_out[12]~output_o\ : std_logic;
SIGNAL \ula_out[13]~output_o\ : std_logic;
SIGNAL \ula_out[14]~output_o\ : std_logic;
SIGNAL \ula_out[15]~output_o\ : std_logic;
SIGNAL \ula_out[16]~output_o\ : std_logic;
SIGNAL \ula_out[17]~output_o\ : std_logic;
SIGNAL \ula_out[18]~output_o\ : std_logic;
SIGNAL \ula_out[19]~output_o\ : std_logic;
SIGNAL \ula_out[20]~output_o\ : std_logic;
SIGNAL \ula_out[21]~output_o\ : std_logic;
SIGNAL \ula_out[22]~output_o\ : std_logic;
SIGNAL \ula_out[23]~output_o\ : std_logic;
SIGNAL \ula_out[24]~output_o\ : std_logic;
SIGNAL \ula_out[25]~output_o\ : std_logic;
SIGNAL \ula_out[26]~output_o\ : std_logic;
SIGNAL \ula_out[27]~output_o\ : std_logic;
SIGNAL \ula_out[28]~output_o\ : std_logic;
SIGNAL \ula_out[29]~output_o\ : std_logic;
SIGNAL \ula_out[30]~output_o\ : std_logic;
SIGNAL \ula_out[31]~output_o\ : std_logic;
SIGNAL \control_points_pin[0]~output_o\ : std_logic;
SIGNAL \control_points_pin[1]~output_o\ : std_logic;
SIGNAL \control_points_pin[2]~output_o\ : std_logic;
SIGNAL \control_points_pin[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \data_flow|pc|register_out[2]~0_combout\ : std_logic;
SIGNAL \data_flow|adder|Add0~9_sumout\ : std_logic;
SIGNAL \data_flow|adder|Add0~10\ : std_logic;
SIGNAL \data_flow|adder|Add0~5_sumout\ : std_logic;
SIGNAL \data_flow|adder|Add0~6\ : std_logic;
SIGNAL \data_flow|adder|Add0~1_sumout\ : std_logic;
SIGNAL \data_flow|adder|Add0~2\ : std_logic;
SIGNAL \data_flow|adder|Add0~29_sumout\ : std_logic;
SIGNAL \data_flow|adder|Add0~30\ : std_logic;
SIGNAL \data_flow|adder|Add0~25_sumout\ : std_logic;
SIGNAL \data_flow|adder|Add0~26\ : std_logic;
SIGNAL \data_flow|adder|Add0~21_sumout\ : std_logic;
SIGNAL \data_flow|adder|Add0~22\ : std_logic;
SIGNAL \data_flow|adder|Add0~17_sumout\ : std_logic;
SIGNAL \data_flow|adder|Add0~18\ : std_logic;
SIGNAL \data_flow|adder|Add0~13_sumout\ : std_logic;
SIGNAL \data_flow|rom|data_rom~0_combout\ : std_logic;
SIGNAL \data_flow|rom|data_rom~1_combout\ : std_logic;
SIGNAL \data_flow|pc|register_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \data_flow|rom|ALT_INV_data_rom~0_combout\ : std_logic;
SIGNAL \data_flow|pc|ALT_INV_register_out\ : std_logic_vector(10 DOWNTO 2);

BEGIN

ww_clock <= clock;
ula_out <= ww_ula_out;
control_points_pin <= ww_control_points_pin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\data_flow|rom|ALT_INV_data_rom~0_combout\ <= NOT \data_flow|rom|data_rom~0_combout\;
\data_flow|pc|ALT_INV_register_out\(6) <= NOT \data_flow|pc|register_out\(6);
\data_flow|pc|ALT_INV_register_out\(7) <= NOT \data_flow|pc|register_out\(7);
\data_flow|pc|ALT_INV_register_out\(8) <= NOT \data_flow|pc|register_out\(8);
\data_flow|pc|ALT_INV_register_out\(9) <= NOT \data_flow|pc|register_out\(9);
\data_flow|pc|ALT_INV_register_out\(10) <= NOT \data_flow|pc|register_out\(10);
\data_flow|pc|ALT_INV_register_out\(2) <= NOT \data_flow|pc|register_out\(2);
\data_flow|pc|ALT_INV_register_out\(3) <= NOT \data_flow|pc|register_out\(3);
\data_flow|pc|ALT_INV_register_out\(4) <= NOT \data_flow|pc|register_out\(4);
\data_flow|pc|ALT_INV_register_out\(5) <= NOT \data_flow|pc|register_out\(5);

\ula_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[0]~output_o\);

\ula_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[1]~output_o\);

\ula_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ula_out[2]~output_o\);

\ula_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[3]~output_o\);

\ula_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[4]~output_o\);

\ula_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[5]~output_o\);

\ula_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[6]~output_o\);

\ula_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[7]~output_o\);

\ula_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[8]~output_o\);

\ula_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[9]~output_o\);

\ula_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[10]~output_o\);

\ula_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[11]~output_o\);

\ula_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[12]~output_o\);

\ula_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[13]~output_o\);

\ula_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[14]~output_o\);

\ula_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[15]~output_o\);

\ula_out[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[16]~output_o\);

\ula_out[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[17]~output_o\);

\ula_out[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[18]~output_o\);

\ula_out[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[19]~output_o\);

\ula_out[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[20]~output_o\);

\ula_out[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[21]~output_o\);

\ula_out[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[22]~output_o\);

\ula_out[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[23]~output_o\);

\ula_out[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[24]~output_o\);

\ula_out[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[25]~output_o\);

\ula_out[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[26]~output_o\);

\ula_out[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[27]~output_o\);

\ula_out[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[28]~output_o\);

\ula_out[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[29]~output_o\);

\ula_out[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[30]~output_o\);

\ula_out[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[31]~output_o\);

\control_points_pin[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_points_pin[0]~output_o\);

\control_points_pin[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_points_pin[1]~output_o\);

\control_points_pin[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \control_points_pin[2]~output_o\);

\control_points_pin[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_flow|rom|data_rom~1_combout\,
	devoe => ww_devoe,
	o => \control_points_pin[3]~output_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\data_flow|pc|register_out[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|pc|register_out[2]~0_combout\ = !\data_flow|pc|register_out\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|pc|ALT_INV_register_out\(2),
	combout => \data_flow|pc|register_out[2]~0_combout\);

\data_flow|pc|register_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|pc|register_out[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|pc|register_out\(2));

\data_flow|adder|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|adder|Add0~9_sumout\ = SUM(( \data_flow|pc|register_out\(2) ) + ( \data_flow|pc|register_out\(3) ) + ( !VCC ))
-- \data_flow|adder|Add0~10\ = CARRY(( \data_flow|pc|register_out\(2) ) + ( \data_flow|pc|register_out\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \data_flow|pc|ALT_INV_register_out\(2),
	dataf => \data_flow|pc|ALT_INV_register_out\(3),
	cin => GND,
	sumout => \data_flow|adder|Add0~9_sumout\,
	cout => \data_flow|adder|Add0~10\);

\data_flow|pc|register_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|adder|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|pc|register_out\(3));

\data_flow|adder|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|adder|Add0~5_sumout\ = SUM(( \data_flow|pc|register_out\(4) ) + ( GND ) + ( \data_flow|adder|Add0~10\ ))
-- \data_flow|adder|Add0~6\ = CARRY(( \data_flow|pc|register_out\(4) ) + ( GND ) + ( \data_flow|adder|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \data_flow|pc|ALT_INV_register_out\(4),
	cin => \data_flow|adder|Add0~10\,
	sumout => \data_flow|adder|Add0~5_sumout\,
	cout => \data_flow|adder|Add0~6\);

\data_flow|pc|register_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|adder|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|pc|register_out\(4));

\data_flow|adder|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|adder|Add0~1_sumout\ = SUM(( \data_flow|pc|register_out\(5) ) + ( GND ) + ( \data_flow|adder|Add0~6\ ))
-- \data_flow|adder|Add0~2\ = CARRY(( \data_flow|pc|register_out\(5) ) + ( GND ) + ( \data_flow|adder|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \data_flow|pc|ALT_INV_register_out\(5),
	cin => \data_flow|adder|Add0~6\,
	sumout => \data_flow|adder|Add0~1_sumout\,
	cout => \data_flow|adder|Add0~2\);

\data_flow|pc|register_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|adder|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|pc|register_out\(5));

\data_flow|adder|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|adder|Add0~29_sumout\ = SUM(( \data_flow|pc|register_out\(6) ) + ( GND ) + ( \data_flow|adder|Add0~2\ ))
-- \data_flow|adder|Add0~30\ = CARRY(( \data_flow|pc|register_out\(6) ) + ( GND ) + ( \data_flow|adder|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \data_flow|pc|ALT_INV_register_out\(6),
	cin => \data_flow|adder|Add0~2\,
	sumout => \data_flow|adder|Add0~29_sumout\,
	cout => \data_flow|adder|Add0~30\);

\data_flow|pc|register_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|adder|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|pc|register_out\(6));

\data_flow|adder|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|adder|Add0~25_sumout\ = SUM(( \data_flow|pc|register_out\(7) ) + ( GND ) + ( \data_flow|adder|Add0~30\ ))
-- \data_flow|adder|Add0~26\ = CARRY(( \data_flow|pc|register_out\(7) ) + ( GND ) + ( \data_flow|adder|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \data_flow|pc|ALT_INV_register_out\(7),
	cin => \data_flow|adder|Add0~30\,
	sumout => \data_flow|adder|Add0~25_sumout\,
	cout => \data_flow|adder|Add0~26\);

\data_flow|pc|register_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|adder|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|pc|register_out\(7));

\data_flow|adder|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|adder|Add0~21_sumout\ = SUM(( \data_flow|pc|register_out\(8) ) + ( GND ) + ( \data_flow|adder|Add0~26\ ))
-- \data_flow|adder|Add0~22\ = CARRY(( \data_flow|pc|register_out\(8) ) + ( GND ) + ( \data_flow|adder|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \data_flow|pc|ALT_INV_register_out\(8),
	cin => \data_flow|adder|Add0~26\,
	sumout => \data_flow|adder|Add0~21_sumout\,
	cout => \data_flow|adder|Add0~22\);

\data_flow|pc|register_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|adder|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|pc|register_out\(8));

\data_flow|adder|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|adder|Add0~17_sumout\ = SUM(( \data_flow|pc|register_out\(9) ) + ( GND ) + ( \data_flow|adder|Add0~22\ ))
-- \data_flow|adder|Add0~18\ = CARRY(( \data_flow|pc|register_out\(9) ) + ( GND ) + ( \data_flow|adder|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \data_flow|pc|ALT_INV_register_out\(9),
	cin => \data_flow|adder|Add0~22\,
	sumout => \data_flow|adder|Add0~17_sumout\,
	cout => \data_flow|adder|Add0~18\);

\data_flow|pc|register_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|adder|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|pc|register_out\(9));

\data_flow|adder|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|adder|Add0~13_sumout\ = SUM(( \data_flow|pc|register_out\(10) ) + ( GND ) + ( \data_flow|adder|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \data_flow|pc|ALT_INV_register_out\(10),
	cin => \data_flow|adder|Add0~18\,
	sumout => \data_flow|adder|Add0~13_sumout\);

\data_flow|pc|register_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|adder|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|pc|register_out\(10));

\data_flow|rom|data_rom~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|rom|data_rom~0_combout\ = ( !\data_flow|pc|register_out\(6) & ( (!\data_flow|pc|register_out\(10) & (!\data_flow|pc|register_out\(9) & (!\data_flow|pc|register_out\(8) & !\data_flow|pc|register_out\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|pc|ALT_INV_register_out\(10),
	datab => \data_flow|pc|ALT_INV_register_out\(9),
	datac => \data_flow|pc|ALT_INV_register_out\(8),
	datad => \data_flow|pc|ALT_INV_register_out\(7),
	datae => \data_flow|pc|ALT_INV_register_out\(6),
	combout => \data_flow|rom|data_rom~0_combout\);

\data_flow|rom|data_rom~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|rom|data_rom~1_combout\ = ( \data_flow|rom|data_rom~0_combout\ & ( (!\data_flow|pc|register_out\(5) & (!\data_flow|pc|register_out\(4) & (!\data_flow|pc|register_out\(3) & !\data_flow|pc|register_out\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|pc|ALT_INV_register_out\(5),
	datab => \data_flow|pc|ALT_INV_register_out\(4),
	datac => \data_flow|pc|ALT_INV_register_out\(3),
	datad => \data_flow|pc|ALT_INV_register_out\(2),
	datae => \data_flow|rom|ALT_INV_data_rom~0_combout\,
	combout => \data_flow|rom|data_rom~1_combout\);

ww_ula_out(0) <= \ula_out[0]~output_o\;

ww_ula_out(1) <= \ula_out[1]~output_o\;

ww_ula_out(2) <= \ula_out[2]~output_o\;

ww_ula_out(3) <= \ula_out[3]~output_o\;

ww_ula_out(4) <= \ula_out[4]~output_o\;

ww_ula_out(5) <= \ula_out[5]~output_o\;

ww_ula_out(6) <= \ula_out[6]~output_o\;

ww_ula_out(7) <= \ula_out[7]~output_o\;

ww_ula_out(8) <= \ula_out[8]~output_o\;

ww_ula_out(9) <= \ula_out[9]~output_o\;

ww_ula_out(10) <= \ula_out[10]~output_o\;

ww_ula_out(11) <= \ula_out[11]~output_o\;

ww_ula_out(12) <= \ula_out[12]~output_o\;

ww_ula_out(13) <= \ula_out[13]~output_o\;

ww_ula_out(14) <= \ula_out[14]~output_o\;

ww_ula_out(15) <= \ula_out[15]~output_o\;

ww_ula_out(16) <= \ula_out[16]~output_o\;

ww_ula_out(17) <= \ula_out[17]~output_o\;

ww_ula_out(18) <= \ula_out[18]~output_o\;

ww_ula_out(19) <= \ula_out[19]~output_o\;

ww_ula_out(20) <= \ula_out[20]~output_o\;

ww_ula_out(21) <= \ula_out[21]~output_o\;

ww_ula_out(22) <= \ula_out[22]~output_o\;

ww_ula_out(23) <= \ula_out[23]~output_o\;

ww_ula_out(24) <= \ula_out[24]~output_o\;

ww_ula_out(25) <= \ula_out[25]~output_o\;

ww_ula_out(26) <= \ula_out[26]~output_o\;

ww_ula_out(27) <= \ula_out[27]~output_o\;

ww_ula_out(28) <= \ula_out[28]~output_o\;

ww_ula_out(29) <= \ula_out[29]~output_o\;

ww_ula_out(30) <= \ula_out[30]~output_o\;

ww_ula_out(31) <= \ula_out[31]~output_o\;

ww_control_points_pin(0) <= \control_points_pin[0]~output_o\;

ww_control_points_pin(1) <= \control_points_pin[1]~output_o\;

ww_control_points_pin(2) <= \control_points_pin[2]~output_o\;

ww_control_points_pin(3) <= \control_points_pin[3]~output_o\;
END structure;


