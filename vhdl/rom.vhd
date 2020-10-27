library ieee;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom is
   generic (
          data_width: natural := 32;
          address_width: natural := 32;
			 memory_address_width:  natural := 9 -- 512 posicoes de 32 bits cada
		 );   
   port ( 
		clock : in  std_logic;
      address : in  std_logic_vector (address_width-1 DOWNTO 0);
      rom_data_out : out std_logic_vector (data_width-1 DOWNTO 0) );
end entity;

architecture rtl OF rom IS
  type memory_block IS ARRAY(0 TO 2**memory_address_width - 1) OF std_logic_vector(data_width-1 DOWNTO 0);

  signal data_rom: memory_block;
  attribute ram_init_file : string;
  attribute ram_init_file of data_rom:
  signal is "ROMcontent.mif";

	-- Utiliza uma quantidade menor de endereços locais:
   signal local_address : std_logic_vector(memory_address_width-1 downto 0);

begin
  local_address <= address(memory_address_width+1 downto 2);
  rom_data_out <= data_rom (to_integer(unsigned(local_address)));
end architecture;

--architecture rtl of rom is
--
--  type memory_block is array(0 TO 2**address_width - 1) of std_logic_vector(data_width-1 DOWNTO 0);
--
--  function init_memory
--        return memory_block is variable tmp : memory_block := (others => (others => '0'));
--  begin
--        -- Inicializa os endereços:
--
--		  tmp(0) := "00000000000000000000000000000000"; -- NOP
--		  tmp(1) := "00000000000000000000000000000000"; -- NOP
--		  tmp(2) := "00000000000000000000000000000000"; -- NOP
--		  tmp(3) := "00000010001100100100000000100000"; -- add $t0, $s1, $s2
--
--        return tmp;
--    end init_memory;
--
--    signal data_out_memory_rom : memory_block := init_memory;
--
--begin
--    rom_data_out <= data_out_memory_rom (to_integer(unsigned(address)));
--end architecture;