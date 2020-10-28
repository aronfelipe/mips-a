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

-- DATE "10/27/2020 18:47:52"

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
SIGNAL \data_flow|adder|Add0~1_sumout\ : std_logic;
SIGNAL \data_flow|adder|Add0~2\ : std_logic;
SIGNAL \data_flow|adder|Add0~9_sumout\ : std_logic;
SIGNAL \data_flow|adder|Add0~10\ : std_logic;
SIGNAL \data_flow|adder|Add0~5_sumout\ : std_logic;
SIGNAL \data_flow|adder|Add0~6\ : std_logic;
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
SIGNAL \data_flow|rom|data_rom~2_combout\ : std_logic;
SIGNAL \data_flow|rom|data_rom~3_combout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~230_q\ : std_logic;
SIGNAL \data_flow|register_bank|out_a[0]~2_combout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~231_q\ : std_logic;
SIGNAL \data_flow|register_bank|out_a[1]~1_combout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~232_q\ : std_logic;
SIGNAL \data_flow|register_bank|out_a[2]~0_combout\ : std_logic;
SIGNAL \data_flow|register_bank|Equal0~0_combout\ : std_logic;
SIGNAL \data_flow|rom|data_rom~1_combout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~233_q\ : std_logic;
SIGNAL \data_flow|rom|data_rom~4_combout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1062_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~1_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~234_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1063_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~2\ : std_logic;
SIGNAL \data_flow|ula|Add0~5_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~235_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1064_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~6\ : std_logic;
SIGNAL \data_flow|ula|Add0~9_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~236_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1065_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~10\ : std_logic;
SIGNAL \data_flow|ula|Add0~13_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~237_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1066_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~14\ : std_logic;
SIGNAL \data_flow|ula|Add0~17_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~238_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1067_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~18\ : std_logic;
SIGNAL \data_flow|ula|Add0~21_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~239_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1068_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~22\ : std_logic;
SIGNAL \data_flow|ula|Add0~25_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~240_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1069_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~26\ : std_logic;
SIGNAL \data_flow|ula|Add0~29_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~241_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1070_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~30\ : std_logic;
SIGNAL \data_flow|ula|Add0~33_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~242_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1071_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~34\ : std_logic;
SIGNAL \data_flow|ula|Add0~37_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~243_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1072_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~38\ : std_logic;
SIGNAL \data_flow|ula|Add0~41_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~244_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1073_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~42\ : std_logic;
SIGNAL \data_flow|ula|Add0~45_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~245_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1074_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~46\ : std_logic;
SIGNAL \data_flow|ula|Add0~49_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~246_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1075_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~50\ : std_logic;
SIGNAL \data_flow|ula|Add0~53_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~247_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1076_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~54\ : std_logic;
SIGNAL \data_flow|ula|Add0~57_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~248_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1077_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~58\ : std_logic;
SIGNAL \data_flow|ula|Add0~61_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~249_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1078_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~62\ : std_logic;
SIGNAL \data_flow|ula|Add0~65_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~250_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1079_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~66\ : std_logic;
SIGNAL \data_flow|ula|Add0~69_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~251_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1080_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~70\ : std_logic;
SIGNAL \data_flow|ula|Add0~73_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~252_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1081_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~74\ : std_logic;
SIGNAL \data_flow|ula|Add0~77_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~253_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1082_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~78\ : std_logic;
SIGNAL \data_flow|ula|Add0~81_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~254_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1083_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~82\ : std_logic;
SIGNAL \data_flow|ula|Add0~85_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~255_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1084_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~86\ : std_logic;
SIGNAL \data_flow|ula|Add0~89_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~256_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1085_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~90\ : std_logic;
SIGNAL \data_flow|ula|Add0~93_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~257_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1086_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~94\ : std_logic;
SIGNAL \data_flow|ula|Add0~97_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~258_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1087_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~98\ : std_logic;
SIGNAL \data_flow|ula|Add0~101_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~259_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1088_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~102\ : std_logic;
SIGNAL \data_flow|ula|Add0~105_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~260_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1089_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~106\ : std_logic;
SIGNAL \data_flow|ula|Add0~109_sumout\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~261_q\ : std_logic;
SIGNAL \data_flow|register_bank|registrador~1090_combout\ : std_logic;
SIGNAL \data_flow|ula|Add0~110\ : std_logic;
SIGNAL \data_flow|ula|Add0~113_sumout\ : std_logic;
SIGNAL \data_flow|pc|register_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \data_flow|register_bank|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1090_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1089_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~261_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1088_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~260_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1087_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~259_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~258_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1085_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~257_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1084_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~256_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1083_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~255_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~254_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1081_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~253_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1080_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~252_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1079_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~251_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~250_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1077_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~249_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1076_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~248_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1075_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~247_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~246_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1073_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~245_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1072_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~244_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1071_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~243_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~242_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1069_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~241_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~240_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~239_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~238_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1065_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~237_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1064_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~236_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~235_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~234_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~233_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~232_q\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~231_q\ : std_logic;
SIGNAL \data_flow|rom|ALT_INV_data_rom~4_combout\ : std_logic;
SIGNAL \data_flow|register_bank|ALT_INV_registrador~230_q\ : std_logic;
SIGNAL \data_flow|rom|ALT_INV_data_rom~3_combout\ : std_logic;
SIGNAL \data_flow|rom|ALT_INV_data_rom~2_combout\ : std_logic;
SIGNAL \data_flow|rom|ALT_INV_data_rom~1_combout\ : std_logic;
SIGNAL \data_flow|rom|ALT_INV_data_rom~0_combout\ : std_logic;
SIGNAL \data_flow|pc|ALT_INV_register_out\ : std_logic_vector(10 DOWNTO 2);

BEGIN

ww_clock <= clock;
ula_out <= ww_ula_out;
control_points_pin <= ww_control_points_pin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\data_flow|register_bank|ALT_INV_Equal0~0_combout\ <= NOT \data_flow|register_bank|Equal0~0_combout\;
\data_flow|register_bank|ALT_INV_registrador~1090_combout\ <= NOT \data_flow|register_bank|registrador~1090_combout\;
\data_flow|register_bank|ALT_INV_registrador~1089_combout\ <= NOT \data_flow|register_bank|registrador~1089_combout\;
\data_flow|register_bank|ALT_INV_registrador~261_q\ <= NOT \data_flow|register_bank|registrador~261_q\;
\data_flow|register_bank|ALT_INV_registrador~1088_combout\ <= NOT \data_flow|register_bank|registrador~1088_combout\;
\data_flow|register_bank|ALT_INV_registrador~260_q\ <= NOT \data_flow|register_bank|registrador~260_q\;
\data_flow|register_bank|ALT_INV_registrador~1087_combout\ <= NOT \data_flow|register_bank|registrador~1087_combout\;
\data_flow|register_bank|ALT_INV_registrador~259_q\ <= NOT \data_flow|register_bank|registrador~259_q\;
\data_flow|register_bank|ALT_INV_registrador~1086_combout\ <= NOT \data_flow|register_bank|registrador~1086_combout\;
\data_flow|register_bank|ALT_INV_registrador~258_q\ <= NOT \data_flow|register_bank|registrador~258_q\;
\data_flow|register_bank|ALT_INV_registrador~1085_combout\ <= NOT \data_flow|register_bank|registrador~1085_combout\;
\data_flow|register_bank|ALT_INV_registrador~257_q\ <= NOT \data_flow|register_bank|registrador~257_q\;
\data_flow|register_bank|ALT_INV_registrador~1084_combout\ <= NOT \data_flow|register_bank|registrador~1084_combout\;
\data_flow|register_bank|ALT_INV_registrador~256_q\ <= NOT \data_flow|register_bank|registrador~256_q\;
\data_flow|register_bank|ALT_INV_registrador~1083_combout\ <= NOT \data_flow|register_bank|registrador~1083_combout\;
\data_flow|register_bank|ALT_INV_registrador~255_q\ <= NOT \data_flow|register_bank|registrador~255_q\;
\data_flow|register_bank|ALT_INV_registrador~1082_combout\ <= NOT \data_flow|register_bank|registrador~1082_combout\;
\data_flow|register_bank|ALT_INV_registrador~254_q\ <= NOT \data_flow|register_bank|registrador~254_q\;
\data_flow|register_bank|ALT_INV_registrador~1081_combout\ <= NOT \data_flow|register_bank|registrador~1081_combout\;
\data_flow|register_bank|ALT_INV_registrador~253_q\ <= NOT \data_flow|register_bank|registrador~253_q\;
\data_flow|register_bank|ALT_INV_registrador~1080_combout\ <= NOT \data_flow|register_bank|registrador~1080_combout\;
\data_flow|register_bank|ALT_INV_registrador~252_q\ <= NOT \data_flow|register_bank|registrador~252_q\;
\data_flow|register_bank|ALT_INV_registrador~1079_combout\ <= NOT \data_flow|register_bank|registrador~1079_combout\;
\data_flow|register_bank|ALT_INV_registrador~251_q\ <= NOT \data_flow|register_bank|registrador~251_q\;
\data_flow|register_bank|ALT_INV_registrador~1078_combout\ <= NOT \data_flow|register_bank|registrador~1078_combout\;
\data_flow|register_bank|ALT_INV_registrador~250_q\ <= NOT \data_flow|register_bank|registrador~250_q\;
\data_flow|register_bank|ALT_INV_registrador~1077_combout\ <= NOT \data_flow|register_bank|registrador~1077_combout\;
\data_flow|register_bank|ALT_INV_registrador~249_q\ <= NOT \data_flow|register_bank|registrador~249_q\;
\data_flow|register_bank|ALT_INV_registrador~1076_combout\ <= NOT \data_flow|register_bank|registrador~1076_combout\;
\data_flow|register_bank|ALT_INV_registrador~248_q\ <= NOT \data_flow|register_bank|registrador~248_q\;
\data_flow|register_bank|ALT_INV_registrador~1075_combout\ <= NOT \data_flow|register_bank|registrador~1075_combout\;
\data_flow|register_bank|ALT_INV_registrador~247_q\ <= NOT \data_flow|register_bank|registrador~247_q\;
\data_flow|register_bank|ALT_INV_registrador~1074_combout\ <= NOT \data_flow|register_bank|registrador~1074_combout\;
\data_flow|register_bank|ALT_INV_registrador~246_q\ <= NOT \data_flow|register_bank|registrador~246_q\;
\data_flow|register_bank|ALT_INV_registrador~1073_combout\ <= NOT \data_flow|register_bank|registrador~1073_combout\;
\data_flow|register_bank|ALT_INV_registrador~245_q\ <= NOT \data_flow|register_bank|registrador~245_q\;
\data_flow|register_bank|ALT_INV_registrador~1072_combout\ <= NOT \data_flow|register_bank|registrador~1072_combout\;
\data_flow|register_bank|ALT_INV_registrador~244_q\ <= NOT \data_flow|register_bank|registrador~244_q\;
\data_flow|register_bank|ALT_INV_registrador~1071_combout\ <= NOT \data_flow|register_bank|registrador~1071_combout\;
\data_flow|register_bank|ALT_INV_registrador~243_q\ <= NOT \data_flow|register_bank|registrador~243_q\;
\data_flow|register_bank|ALT_INV_registrador~1070_combout\ <= NOT \data_flow|register_bank|registrador~1070_combout\;
\data_flow|register_bank|ALT_INV_registrador~242_q\ <= NOT \data_flow|register_bank|registrador~242_q\;
\data_flow|register_bank|ALT_INV_registrador~1069_combout\ <= NOT \data_flow|register_bank|registrador~1069_combout\;
\data_flow|register_bank|ALT_INV_registrador~241_q\ <= NOT \data_flow|register_bank|registrador~241_q\;
\data_flow|register_bank|ALT_INV_registrador~1068_combout\ <= NOT \data_flow|register_bank|registrador~1068_combout\;
\data_flow|register_bank|ALT_INV_registrador~240_q\ <= NOT \data_flow|register_bank|registrador~240_q\;
\data_flow|register_bank|ALT_INV_registrador~1067_combout\ <= NOT \data_flow|register_bank|registrador~1067_combout\;
\data_flow|register_bank|ALT_INV_registrador~239_q\ <= NOT \data_flow|register_bank|registrador~239_q\;
\data_flow|register_bank|ALT_INV_registrador~1066_combout\ <= NOT \data_flow|register_bank|registrador~1066_combout\;
\data_flow|register_bank|ALT_INV_registrador~238_q\ <= NOT \data_flow|register_bank|registrador~238_q\;
\data_flow|register_bank|ALT_INV_registrador~1065_combout\ <= NOT \data_flow|register_bank|registrador~1065_combout\;
\data_flow|register_bank|ALT_INV_registrador~237_q\ <= NOT \data_flow|register_bank|registrador~237_q\;
\data_flow|register_bank|ALT_INV_registrador~1064_combout\ <= NOT \data_flow|register_bank|registrador~1064_combout\;
\data_flow|register_bank|ALT_INV_registrador~236_q\ <= NOT \data_flow|register_bank|registrador~236_q\;
\data_flow|register_bank|ALT_INV_registrador~1063_combout\ <= NOT \data_flow|register_bank|registrador~1063_combout\;
\data_flow|register_bank|ALT_INV_registrador~235_q\ <= NOT \data_flow|register_bank|registrador~235_q\;
\data_flow|register_bank|ALT_INV_registrador~1062_combout\ <= NOT \data_flow|register_bank|registrador~1062_combout\;
\data_flow|register_bank|ALT_INV_registrador~234_q\ <= NOT \data_flow|register_bank|registrador~234_q\;
\data_flow|register_bank|ALT_INV_registrador~233_q\ <= NOT \data_flow|register_bank|registrador~233_q\;
\data_flow|register_bank|ALT_INV_registrador~232_q\ <= NOT \data_flow|register_bank|registrador~232_q\;
\data_flow|register_bank|ALT_INV_registrador~231_q\ <= NOT \data_flow|register_bank|registrador~231_q\;
\data_flow|rom|ALT_INV_data_rom~4_combout\ <= NOT \data_flow|rom|data_rom~4_combout\;
\data_flow|register_bank|ALT_INV_registrador~230_q\ <= NOT \data_flow|register_bank|registrador~230_q\;
\data_flow|rom|ALT_INV_data_rom~3_combout\ <= NOT \data_flow|rom|data_rom~3_combout\;
\data_flow|rom|ALT_INV_data_rom~2_combout\ <= NOT \data_flow|rom|data_rom~2_combout\;
\data_flow|rom|ALT_INV_data_rom~1_combout\ <= NOT \data_flow|rom|data_rom~1_combout\;
\data_flow|rom|ALT_INV_data_rom~0_combout\ <= NOT \data_flow|rom|data_rom~0_combout\;
\data_flow|pc|ALT_INV_register_out\(6) <= NOT \data_flow|pc|register_out\(6);
\data_flow|pc|ALT_INV_register_out\(7) <= NOT \data_flow|pc|register_out\(7);
\data_flow|pc|ALT_INV_register_out\(8) <= NOT \data_flow|pc|register_out\(8);
\data_flow|pc|ALT_INV_register_out\(9) <= NOT \data_flow|pc|register_out\(9);
\data_flow|pc|ALT_INV_register_out\(10) <= NOT \data_flow|pc|register_out\(10);
\data_flow|pc|ALT_INV_register_out\(4) <= NOT \data_flow|pc|register_out\(4);
\data_flow|pc|ALT_INV_register_out\(5) <= NOT \data_flow|pc|register_out\(5);
\data_flow|pc|ALT_INV_register_out\(2) <= NOT \data_flow|pc|register_out\(2);
\data_flow|pc|ALT_INV_register_out\(3) <= NOT \data_flow|pc|register_out\(3);

\ula_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_flow|register_bank|out_a[0]~2_combout\,
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
	i => \data_flow|register_bank|out_a[1]~1_combout\,
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
	i => \data_flow|register_bank|out_a[2]~0_combout\,
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
	i => \data_flow|ula|Add0~1_sumout\,
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
	i => \data_flow|ula|Add0~5_sumout\,
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
	i => \data_flow|ula|Add0~9_sumout\,
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
	i => \data_flow|ula|Add0~13_sumout\,
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
	i => \data_flow|ula|Add0~17_sumout\,
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
	i => \data_flow|ula|Add0~21_sumout\,
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
	i => \data_flow|ula|Add0~25_sumout\,
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
	i => \data_flow|ula|Add0~29_sumout\,
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
	i => \data_flow|ula|Add0~33_sumout\,
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
	i => \data_flow|ula|Add0~37_sumout\,
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
	i => \data_flow|ula|Add0~41_sumout\,
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
	i => \data_flow|ula|Add0~45_sumout\,
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
	i => \data_flow|ula|Add0~49_sumout\,
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
	i => \data_flow|ula|Add0~53_sumout\,
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
	i => \data_flow|ula|Add0~57_sumout\,
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
	i => \data_flow|ula|Add0~61_sumout\,
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
	i => \data_flow|ula|Add0~65_sumout\,
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
	i => \data_flow|ula|Add0~69_sumout\,
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
	i => \data_flow|ula|Add0~73_sumout\,
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
	i => \data_flow|ula|Add0~77_sumout\,
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
	i => \data_flow|ula|Add0~81_sumout\,
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
	i => \data_flow|ula|Add0~85_sumout\,
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
	i => \data_flow|ula|Add0~89_sumout\,
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
	i => \data_flow|ula|Add0~93_sumout\,
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
	i => \data_flow|ula|Add0~97_sumout\,
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
	i => \data_flow|ula|Add0~101_sumout\,
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
	i => \data_flow|ula|Add0~105_sumout\,
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
	i => \data_flow|ula|Add0~109_sumout\,
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
	i => \data_flow|ula|Add0~113_sumout\,
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
	i => \data_flow|rom|data_rom~3_combout\,
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

\data_flow|adder|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|adder|Add0~1_sumout\ = SUM(( \data_flow|pc|register_out\(2) ) + ( \data_flow|pc|register_out\(3) ) + ( !VCC ))
-- \data_flow|adder|Add0~2\ = CARRY(( \data_flow|pc|register_out\(2) ) + ( \data_flow|pc|register_out\(3) ) + ( !VCC ))

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
	sumout => \data_flow|adder|Add0~1_sumout\,
	cout => \data_flow|adder|Add0~2\);

\data_flow|pc|register_out[3]\ : dffeas
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
	q => \data_flow|pc|register_out\(3));

\data_flow|adder|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|adder|Add0~9_sumout\ = SUM(( \data_flow|pc|register_out\(4) ) + ( GND ) + ( \data_flow|adder|Add0~2\ ))
-- \data_flow|adder|Add0~10\ = CARRY(( \data_flow|pc|register_out\(4) ) + ( GND ) + ( \data_flow|adder|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \data_flow|pc|ALT_INV_register_out\(4),
	cin => \data_flow|adder|Add0~2\,
	sumout => \data_flow|adder|Add0~9_sumout\,
	cout => \data_flow|adder|Add0~10\);

\data_flow|pc|register_out[4]\ : dffeas
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
	q => \data_flow|pc|register_out\(4));

\data_flow|adder|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|adder|Add0~5_sumout\ = SUM(( \data_flow|pc|register_out\(5) ) + ( GND ) + ( \data_flow|adder|Add0~10\ ))
-- \data_flow|adder|Add0~6\ = CARRY(( \data_flow|pc|register_out\(5) ) + ( GND ) + ( \data_flow|adder|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \data_flow|pc|ALT_INV_register_out\(5),
	cin => \data_flow|adder|Add0~10\,
	sumout => \data_flow|adder|Add0~5_sumout\,
	cout => \data_flow|adder|Add0~6\);

\data_flow|pc|register_out[5]\ : dffeas
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
	q => \data_flow|pc|register_out\(5));

\data_flow|adder|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|adder|Add0~29_sumout\ = SUM(( \data_flow|pc|register_out\(6) ) + ( GND ) + ( \data_flow|adder|Add0~6\ ))
-- \data_flow|adder|Add0~30\ = CARRY(( \data_flow|pc|register_out\(6) ) + ( GND ) + ( \data_flow|adder|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \data_flow|pc|ALT_INV_register_out\(6),
	cin => \data_flow|adder|Add0~6\,
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

\data_flow|rom|data_rom~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|rom|data_rom~2_combout\ = (!\data_flow|pc|register_out\(4) & (!\data_flow|pc|register_out\(5) & (!\data_flow|pc|register_out\(2) $ (\data_flow|pc|register_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000100100000000000010010000000000001001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|pc|ALT_INV_register_out\(2),
	datab => \data_flow|pc|ALT_INV_register_out\(3),
	datac => \data_flow|pc|ALT_INV_register_out\(4),
	datad => \data_flow|pc|ALT_INV_register_out\(5),
	combout => \data_flow|rom|data_rom~2_combout\);

\data_flow|rom|data_rom~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|rom|data_rom~3_combout\ = (\data_flow|rom|data_rom~2_combout\ & \data_flow|rom|data_rom~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~2_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~0_combout\,
	combout => \data_flow|rom|data_rom~3_combout\);

\data_flow|register_bank|registrador~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|register_bank|out_a[0]~2_combout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~230_q\);

\data_flow|register_bank|out_a[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|out_a[0]~2_combout\ = ( \data_flow|pc|register_out\(3) & ( \data_flow|register_bank|registrador~230_q\ & ( (\data_flow|rom|data_rom~0_combout\ & (!\data_flow|pc|register_out\(4) & (!\data_flow|pc|register_out\(5) & 
-- \data_flow|pc|register_out\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~0_combout\,
	datab => \data_flow|pc|ALT_INV_register_out\(4),
	datac => \data_flow|pc|ALT_INV_register_out\(5),
	datad => \data_flow|pc|ALT_INV_register_out\(2),
	datae => \data_flow|pc|ALT_INV_register_out\(3),
	dataf => \data_flow|register_bank|ALT_INV_registrador~230_q\,
	combout => \data_flow|register_bank|out_a[0]~2_combout\);

\data_flow|register_bank|registrador~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|register_bank|out_a[1]~1_combout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~231_q\);

\data_flow|register_bank|out_a[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|out_a[1]~1_combout\ = ( \data_flow|pc|register_out\(2) & ( \data_flow|pc|register_out\(3) & ( (\data_flow|register_bank|registrador~231_q\ & (\data_flow|rom|data_rom~0_combout\ & (!\data_flow|pc|register_out\(4) & 
-- !\data_flow|pc|register_out\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_registrador~231_q\,
	datab => \data_flow|rom|ALT_INV_data_rom~0_combout\,
	datac => \data_flow|pc|ALT_INV_register_out\(4),
	datad => \data_flow|pc|ALT_INV_register_out\(5),
	datae => \data_flow|pc|ALT_INV_register_out\(2),
	dataf => \data_flow|pc|ALT_INV_register_out\(3),
	combout => \data_flow|register_bank|out_a[1]~1_combout\);

\data_flow|register_bank|registrador~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|register_bank|out_a[2]~0_combout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~232_q\);

\data_flow|register_bank|out_a[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|out_a[2]~0_combout\ = ( \data_flow|pc|register_out\(2) & ( \data_flow|pc|register_out\(3) & ( (\data_flow|register_bank|registrador~232_q\ & (\data_flow|rom|data_rom~0_combout\ & (!\data_flow|pc|register_out\(4) & 
-- !\data_flow|pc|register_out\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_registrador~232_q\,
	datab => \data_flow|rom|ALT_INV_data_rom~0_combout\,
	datac => \data_flow|pc|ALT_INV_register_out\(4),
	datad => \data_flow|pc|ALT_INV_register_out\(5),
	datae => \data_flow|pc|ALT_INV_register_out\(2),
	dataf => \data_flow|pc|ALT_INV_register_out\(3),
	combout => \data_flow|register_bank|out_a[2]~0_combout\);

\data_flow|register_bank|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|Equal0~0_combout\ = ( \data_flow|pc|register_out\(3) & ( (!\data_flow|rom|data_rom~0_combout\) # (((!\data_flow|pc|register_out\(2)) # (\data_flow|pc|register_out\(5))) # (\data_flow|pc|register_out\(4))) ) ) # ( 
-- !\data_flow|pc|register_out\(3) & ( (!\data_flow|rom|data_rom~0_combout\) # (((\data_flow|pc|register_out\(2)) # (\data_flow|pc|register_out\(5))) # (\data_flow|pc|register_out\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111111111111011111110111111111111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~0_combout\,
	datab => \data_flow|pc|ALT_INV_register_out\(4),
	datac => \data_flow|pc|ALT_INV_register_out\(5),
	datad => \data_flow|pc|ALT_INV_register_out\(2),
	datae => \data_flow|pc|ALT_INV_register_out\(3),
	combout => \data_flow|register_bank|Equal0~0_combout\);

\data_flow|rom|data_rom~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|rom|data_rom~1_combout\ = ( \data_flow|rom|data_rom~0_combout\ & ( (\data_flow|pc|register_out\(3) & (\data_flow|pc|register_out\(2) & (!\data_flow|pc|register_out\(5) & !\data_flow|pc|register_out\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|pc|ALT_INV_register_out\(3),
	datab => \data_flow|pc|ALT_INV_register_out\(2),
	datac => \data_flow|pc|ALT_INV_register_out\(5),
	datad => \data_flow|pc|ALT_INV_register_out\(4),
	datae => \data_flow|rom|ALT_INV_data_rom~0_combout\,
	combout => \data_flow|rom|data_rom~1_combout\);

\data_flow|register_bank|registrador~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~1_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~233_q\);

\data_flow|rom|data_rom~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|rom|data_rom~4_combout\ = ( \data_flow|rom|data_rom~0_combout\ & ( (!\data_flow|pc|register_out\(3) & (!\data_flow|pc|register_out\(2) & (!\data_flow|pc|register_out\(5) & !\data_flow|pc|register_out\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|pc|ALT_INV_register_out\(3),
	datab => \data_flow|pc|ALT_INV_register_out\(2),
	datac => \data_flow|pc|ALT_INV_register_out\(5),
	datad => \data_flow|pc|ALT_INV_register_out\(4),
	datae => \data_flow|rom|ALT_INV_data_rom~0_combout\,
	combout => \data_flow|rom|data_rom~4_combout\);

\data_flow|register_bank|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1062_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~233_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~233_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1062_combout\);

\data_flow|ula|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~1_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1062_combout\) ) + ( VCC ) + ( !VCC ))
-- \data_flow|ula|Add0~2\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1062_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1062_combout\,
	cin => GND,
	sumout => \data_flow|ula|Add0~1_sumout\,
	cout => \data_flow|ula|Add0~2\);

\data_flow|register_bank|registrador~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~5_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~234_q\);

\data_flow|register_bank|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1063_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~234_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~234_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1063_combout\);

\data_flow|ula|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~5_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1063_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~2\ ))
-- \data_flow|ula|Add0~6\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1063_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1063_combout\,
	cin => \data_flow|ula|Add0~2\,
	sumout => \data_flow|ula|Add0~5_sumout\,
	cout => \data_flow|ula|Add0~6\);

\data_flow|register_bank|registrador~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~9_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~235_q\);

\data_flow|register_bank|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1064_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~235_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~235_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1064_combout\);

\data_flow|ula|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~9_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1064_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~6\ ))
-- \data_flow|ula|Add0~10\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1064_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1064_combout\,
	cin => \data_flow|ula|Add0~6\,
	sumout => \data_flow|ula|Add0~9_sumout\,
	cout => \data_flow|ula|Add0~10\);

\data_flow|register_bank|registrador~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~13_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~236_q\);

\data_flow|register_bank|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1065_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~236_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~236_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1065_combout\);

\data_flow|ula|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~13_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1065_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~10\ ))
-- \data_flow|ula|Add0~14\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1065_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1065_combout\,
	cin => \data_flow|ula|Add0~10\,
	sumout => \data_flow|ula|Add0~13_sumout\,
	cout => \data_flow|ula|Add0~14\);

\data_flow|register_bank|registrador~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~17_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~237_q\);

\data_flow|register_bank|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1066_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~237_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~237_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1066_combout\);

\data_flow|ula|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~17_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1066_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~14\ ))
-- \data_flow|ula|Add0~18\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1066_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1066_combout\,
	cin => \data_flow|ula|Add0~14\,
	sumout => \data_flow|ula|Add0~17_sumout\,
	cout => \data_flow|ula|Add0~18\);

\data_flow|register_bank|registrador~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~21_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~238_q\);

\data_flow|register_bank|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1067_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~238_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~238_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1067_combout\);

\data_flow|ula|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~21_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1067_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~18\ ))
-- \data_flow|ula|Add0~22\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1067_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1067_combout\,
	cin => \data_flow|ula|Add0~18\,
	sumout => \data_flow|ula|Add0~21_sumout\,
	cout => \data_flow|ula|Add0~22\);

\data_flow|register_bank|registrador~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~25_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~239_q\);

\data_flow|register_bank|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1068_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~239_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~239_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1068_combout\);

\data_flow|ula|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~25_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1068_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~22\ ))
-- \data_flow|ula|Add0~26\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1068_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1068_combout\,
	cin => \data_flow|ula|Add0~22\,
	sumout => \data_flow|ula|Add0~25_sumout\,
	cout => \data_flow|ula|Add0~26\);

\data_flow|register_bank|registrador~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~29_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~240_q\);

\data_flow|register_bank|registrador~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1069_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~240_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~240_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1069_combout\);

\data_flow|ula|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~29_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1069_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~26\ ))
-- \data_flow|ula|Add0~30\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1069_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1069_combout\,
	cin => \data_flow|ula|Add0~26\,
	sumout => \data_flow|ula|Add0~29_sumout\,
	cout => \data_flow|ula|Add0~30\);

\data_flow|register_bank|registrador~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~33_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~241_q\);

\data_flow|register_bank|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1070_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~241_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~241_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1070_combout\);

\data_flow|ula|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~33_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1070_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~30\ ))
-- \data_flow|ula|Add0~34\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1070_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1070_combout\,
	cin => \data_flow|ula|Add0~30\,
	sumout => \data_flow|ula|Add0~33_sumout\,
	cout => \data_flow|ula|Add0~34\);

\data_flow|register_bank|registrador~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~37_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~242_q\);

\data_flow|register_bank|registrador~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1071_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~242_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~242_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1071_combout\);

\data_flow|ula|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~37_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1071_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~34\ ))
-- \data_flow|ula|Add0~38\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1071_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1071_combout\,
	cin => \data_flow|ula|Add0~34\,
	sumout => \data_flow|ula|Add0~37_sumout\,
	cout => \data_flow|ula|Add0~38\);

\data_flow|register_bank|registrador~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~41_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~243_q\);

\data_flow|register_bank|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1072_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~243_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~243_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1072_combout\);

\data_flow|ula|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~41_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1072_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~38\ ))
-- \data_flow|ula|Add0~42\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1072_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1072_combout\,
	cin => \data_flow|ula|Add0~38\,
	sumout => \data_flow|ula|Add0~41_sumout\,
	cout => \data_flow|ula|Add0~42\);

\data_flow|register_bank|registrador~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~45_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~244_q\);

\data_flow|register_bank|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1073_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~244_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~244_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1073_combout\);

\data_flow|ula|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~45_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1073_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~42\ ))
-- \data_flow|ula|Add0~46\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1073_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1073_combout\,
	cin => \data_flow|ula|Add0~42\,
	sumout => \data_flow|ula|Add0~45_sumout\,
	cout => \data_flow|ula|Add0~46\);

\data_flow|register_bank|registrador~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~49_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~245_q\);

\data_flow|register_bank|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1074_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~245_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~245_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1074_combout\);

\data_flow|ula|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~49_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1074_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~46\ ))
-- \data_flow|ula|Add0~50\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1074_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1074_combout\,
	cin => \data_flow|ula|Add0~46\,
	sumout => \data_flow|ula|Add0~49_sumout\,
	cout => \data_flow|ula|Add0~50\);

\data_flow|register_bank|registrador~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~53_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~246_q\);

\data_flow|register_bank|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1075_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~246_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~246_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1075_combout\);

\data_flow|ula|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~53_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1075_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~50\ ))
-- \data_flow|ula|Add0~54\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1075_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1075_combout\,
	cin => \data_flow|ula|Add0~50\,
	sumout => \data_flow|ula|Add0~53_sumout\,
	cout => \data_flow|ula|Add0~54\);

\data_flow|register_bank|registrador~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~57_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~247_q\);

\data_flow|register_bank|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1076_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~247_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~247_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1076_combout\);

\data_flow|ula|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~57_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1076_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~54\ ))
-- \data_flow|ula|Add0~58\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1076_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1076_combout\,
	cin => \data_flow|ula|Add0~54\,
	sumout => \data_flow|ula|Add0~57_sumout\,
	cout => \data_flow|ula|Add0~58\);

\data_flow|register_bank|registrador~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~61_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~248_q\);

\data_flow|register_bank|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1077_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~248_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~248_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1077_combout\);

\data_flow|ula|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~61_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1077_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~58\ ))
-- \data_flow|ula|Add0~62\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1077_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1077_combout\,
	cin => \data_flow|ula|Add0~58\,
	sumout => \data_flow|ula|Add0~61_sumout\,
	cout => \data_flow|ula|Add0~62\);

\data_flow|register_bank|registrador~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~65_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~249_q\);

\data_flow|register_bank|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1078_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~249_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~249_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1078_combout\);

\data_flow|ula|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~65_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1078_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~62\ ))
-- \data_flow|ula|Add0~66\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1078_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1078_combout\,
	cin => \data_flow|ula|Add0~62\,
	sumout => \data_flow|ula|Add0~65_sumout\,
	cout => \data_flow|ula|Add0~66\);

\data_flow|register_bank|registrador~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~69_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~250_q\);

\data_flow|register_bank|registrador~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1079_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~250_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~250_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1079_combout\);

\data_flow|ula|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~69_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1079_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~66\ ))
-- \data_flow|ula|Add0~70\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1079_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1079_combout\,
	cin => \data_flow|ula|Add0~66\,
	sumout => \data_flow|ula|Add0~69_sumout\,
	cout => \data_flow|ula|Add0~70\);

\data_flow|register_bank|registrador~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~73_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~251_q\);

\data_flow|register_bank|registrador~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1080_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~251_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~251_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1080_combout\);

\data_flow|ula|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~73_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1080_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~70\ ))
-- \data_flow|ula|Add0~74\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1080_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1080_combout\,
	cin => \data_flow|ula|Add0~70\,
	sumout => \data_flow|ula|Add0~73_sumout\,
	cout => \data_flow|ula|Add0~74\);

\data_flow|register_bank|registrador~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~77_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~252_q\);

\data_flow|register_bank|registrador~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1081_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~252_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~252_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1081_combout\);

\data_flow|ula|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~77_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1081_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~74\ ))
-- \data_flow|ula|Add0~78\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1081_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1081_combout\,
	cin => \data_flow|ula|Add0~74\,
	sumout => \data_flow|ula|Add0~77_sumout\,
	cout => \data_flow|ula|Add0~78\);

\data_flow|register_bank|registrador~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~81_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~253_q\);

\data_flow|register_bank|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1082_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~253_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~253_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1082_combout\);

\data_flow|ula|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~81_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1082_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~78\ ))
-- \data_flow|ula|Add0~82\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1082_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1082_combout\,
	cin => \data_flow|ula|Add0~78\,
	sumout => \data_flow|ula|Add0~81_sumout\,
	cout => \data_flow|ula|Add0~82\);

\data_flow|register_bank|registrador~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~85_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~254_q\);

\data_flow|register_bank|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1083_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~254_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~254_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1083_combout\);

\data_flow|ula|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~85_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1083_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~82\ ))
-- \data_flow|ula|Add0~86\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1083_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1083_combout\,
	cin => \data_flow|ula|Add0~82\,
	sumout => \data_flow|ula|Add0~85_sumout\,
	cout => \data_flow|ula|Add0~86\);

\data_flow|register_bank|registrador~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~89_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~255_q\);

\data_flow|register_bank|registrador~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1084_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~255_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~255_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1084_combout\);

\data_flow|ula|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~89_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1084_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~86\ ))
-- \data_flow|ula|Add0~90\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1084_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1084_combout\,
	cin => \data_flow|ula|Add0~86\,
	sumout => \data_flow|ula|Add0~89_sumout\,
	cout => \data_flow|ula|Add0~90\);

\data_flow|register_bank|registrador~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~93_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~256_q\);

\data_flow|register_bank|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1085_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~256_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~256_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1085_combout\);

\data_flow|ula|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~93_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1085_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~90\ ))
-- \data_flow|ula|Add0~94\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1085_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1085_combout\,
	cin => \data_flow|ula|Add0~90\,
	sumout => \data_flow|ula|Add0~93_sumout\,
	cout => \data_flow|ula|Add0~94\);

\data_flow|register_bank|registrador~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~97_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~257_q\);

\data_flow|register_bank|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1086_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~257_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~257_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1086_combout\);

\data_flow|ula|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~97_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1086_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~94\ ))
-- \data_flow|ula|Add0~98\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1086_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1086_combout\,
	cin => \data_flow|ula|Add0~94\,
	sumout => \data_flow|ula|Add0~97_sumout\,
	cout => \data_flow|ula|Add0~98\);

\data_flow|register_bank|registrador~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~101_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~258_q\);

\data_flow|register_bank|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1087_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~258_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~258_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1087_combout\);

\data_flow|ula|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~101_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1087_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~98\ ))
-- \data_flow|ula|Add0~102\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1087_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1087_combout\,
	cin => \data_flow|ula|Add0~98\,
	sumout => \data_flow|ula|Add0~101_sumout\,
	cout => \data_flow|ula|Add0~102\);

\data_flow|register_bank|registrador~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~105_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~259_q\);

\data_flow|register_bank|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1088_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~259_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~259_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1088_combout\);

\data_flow|ula|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~105_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1088_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~102\ ))
-- \data_flow|ula|Add0~106\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1088_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1088_combout\,
	cin => \data_flow|ula|Add0~102\,
	sumout => \data_flow|ula|Add0~105_sumout\,
	cout => \data_flow|ula|Add0~106\);

\data_flow|register_bank|registrador~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~109_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~260_q\);

\data_flow|register_bank|registrador~1089\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1089_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~260_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~260_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1089_combout\);

\data_flow|ula|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~109_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1089_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~106\ ))
-- \data_flow|ula|Add0~110\ = CARRY(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1089_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1089_combout\,
	cin => \data_flow|ula|Add0~106\,
	sumout => \data_flow|ula|Add0~109_sumout\,
	cout => \data_flow|ula|Add0~110\);

\data_flow|register_bank|registrador~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_flow|ula|Add0~113_sumout\,
	ena => \data_flow|rom|data_rom~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_flow|register_bank|registrador~261_q\);

\data_flow|register_bank|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|register_bank|registrador~1090_combout\ = (\data_flow|rom|data_rom~1_combout\ & (\data_flow|rom|data_rom~3_combout\ & (\data_flow|register_bank|registrador~261_q\ & !\data_flow|rom|data_rom~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|rom|ALT_INV_data_rom~1_combout\,
	datab => \data_flow|rom|ALT_INV_data_rom~3_combout\,
	datac => \data_flow|register_bank|ALT_INV_registrador~261_q\,
	datad => \data_flow|rom|ALT_INV_data_rom~4_combout\,
	combout => \data_flow|register_bank|registrador~1090_combout\);

\data_flow|ula|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_flow|ula|Add0~113_sumout\ = SUM(( (!\data_flow|register_bank|Equal0~0_combout\ & \data_flow|register_bank|registrador~1090_combout\) ) + ( GND ) + ( \data_flow|ula|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_flow|register_bank|ALT_INV_Equal0~0_combout\,
	datad => \data_flow|register_bank|ALT_INV_registrador~1090_combout\,
	cin => \data_flow|ula|Add0~110\,
	sumout => \data_flow|ula|Add0~113_sumout\);

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


