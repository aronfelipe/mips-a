library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram IS
   generic (
          data_width: natural := 32;
          address_width: natural := 32;
			 memory_address_width:  natural := 9 -- 512 posicoes de 32 bits cada
   port ( clock      : IN  STD_LOGIC;
          address : IN  STD_LOGIC_VECTOR (addrWidth-1 DOWNTO 0);
          ram_in  : in std_logic_vector(dataWidth-1 downto 0);
          ram_out : out std_logic_vector(dataWidth-1 downto 0);
          we : in std_logic := '0'
        );
end entity;

architecture rtl OF ram IS
  type memory_block IS ARRAY(0 TO 2**memory_address_width - 1) OF std_logic_vector(dataWidth-1 DOWNTO 0);

  signal memRAM: memory_block;
--  Caso queira inicializar a RAM (para testes):
--  attribute ram_init_file : string;
--  attribute ram_init_file of memRAM:
--  signal is "RAMcontent.mif";

-- Utiliza uma quantidade menor de endereços locais:
   signal local_address : std_logic_vector(memory_address_width-1 downto 0);

begin

  -- Ajusta o enderecamento para o acesso de 32 bits.
  local_address <= address(memory_address_width+1 downto 2);

  process(clock)
  begin
      if(rising_edge(clock)) then
          if(we = '1') then
              memRAM(to_integer(unsigned(local_address))) <= ram_in;
          end if;
      end if;
  end process;

  -- A leitura deve ser sempre assincrona:
  ram_out <= memRAM(to_integer(unsigned(local_address)));

end architecture;