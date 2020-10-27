
library ieee;
use ieee.std_logic_1164.all;

entity data_flow is
  generic ( data_length : natural := 32);
  port (
		clock: in STD_LOGIC;
		control_points : in STD_LOGIC_VECTOR(3 downto 0);
		funct : out STD_LOGIC_VECTOR(5 downto 0);
		ula_out : out STD_LOGIC_VECTOR(data_length - 1 downto 0)
  );
end entity;

architecture rtl of data_flow is
  
signal pc_to_rom_and_adder: STD_LOGIC_VECTOR(data_length-1 downto 0);
signal instruction: STD_LOGIC_VECTOR(data_length-1 downto 0);

signal adder_to_pc: STD_LOGIC_VECTOR(data_length-1 downto 0);
signal zero_flag : STD_LOGIC;
signal ula_to_registers: STD_LOGIC_VECTOR(data_length-1 downto 0);
signal registers_out_a_to_ula : STD_LOGIC_VECTOR(data_length -1 downto 0);
signal registers_out_b_to_ula : STD_LOGIC_VECTOR(data_length -1 downto 0);


alias enable_write_in_c: STD_LOGIC is control_points(3);
alias ula_operation: STD_LOGIC_VECTOR (2 downto 0) is control_points(2 downto 0);

alias signal_rs: STD_LOGIC_VECTOR (4 downto 0) is instruction(25 downto 21);
alias signal_rt: STD_LOGIC_VECTOR (4 downto 0) is instruction(20 downto 16);
alias signal_rd: STD_LOGIC_VECTOR (4 downto 0) is instruction(15 downto 11);

begin
  
ula_out <= ula_to_registers;

funct <= instruction(5 downto 0);

pc : entity work.generic_register   generic map (data_length => data_length)
          port map (register_in => adder_to_pc, register_out => pc_to_rom_and_adder, enable => '1', clock => clock, reset => '0');

adder :  entity work.adder  generic map (data_length => data_length)
        port map( adder_in_a => "00000000000000000000000000000100", adder_in_b =>  pc_to_rom_and_adder, adder_out => adder_to_pc);
		  
rom : entity work.rom   generic map (data_width => 32, address_width => 32)
          port map (address => pc_to_rom_and_adder, rom_data_out => instruction, clock => clock);

ula : entity work.ula  generic map(data_length => 32)
          port map (ula_in_a => registers_out_a_to_ula, ula_in_b => registers_out_b_to_ula, ula_out => ula_to_registers,
			 operation => ula_operation, zero_flag => zero_flag);
		
register_bank : entity work.register_bank generic map(data_length => 32)
         port map ( clock => clock, address_a_rt => signal_rt, address_b_rs => signal_rs, address_c_rd => signal_rd,
			data_to_write_c_rd => ula_to_registers, write_c_rd => enable_write_in_c, out_a => registers_out_a_to_ula,
			out_b => registers_out_b_to_ula);
			 
end architecture;