library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Decidimos fazer nossa unidade de controle baseada em uma ROM.
-- ROM Control Unit.

entity control_unit_rom is
   generic (
          data_width: natural := 4;
          address_width: natural := 6
    );
   port (
          address : in std_logic_vector (address_width-1 DOWNTO 0);
          data_out : out std_logic_vector (data_width-1 DOWNTO 0)
    );
end entity;

architecture rtl of control_unit_rom is

  type memory_block is array(0 TO 2**address_width - 1) of std_logic_vector(data_width-1 DOWNTO 0);

  function init_memory
        return memory_block is variable tmp : memory_block := (others => (others => '0'));
  begin
        -- Inicializa os endereços:
		  
--        tmp(0) := ""; -- Shift left logical
--        tmp(2) := ""; -- Shift right logical

--        tmp(8) := ""; -- Jump Register

		  tmp(32) := "1000"; -- Add
		  tmp(33) := "1000"; -- Add Unsigned
		  tmp(34) := "1001"; -- Subtract
		  tmp(34) := "1001"; -- Subtract unsigned

		  tmp(36) := "1110"; -- And
		  tmp(37) := "1100"; -- Or
			
--		  tmp(39) := ""; -- Nor
--		  tmp(42) := ""; -- Set Less than
--		  tmp(43) := ""; -- Set Less than unsigned

        return tmp;
    end init_memory;

    signal data_out_memory_rom : memory_block := init_memory;

begin
    data_out <= data_out_memory_rom (to_integer(unsigned(address)));
end architecture;