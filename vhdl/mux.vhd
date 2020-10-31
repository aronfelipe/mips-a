library ieee;
use ieee.std_logic_1164.all;

entity mux is
  -- Total de bits das entradas e saidas
  -- Data length is about next instruction address.
  generic ( data_length : natural := 10);
  port (
    data_in_a, data_in_b : in std_logic_vector((data_length-1) downto 0);
    selector_mux : in std_logic;
    out_mux : out std_logic_vector((data_length-1) downto 0)
  );
end entity;

architecture rtl of mux is
  begin
  -- Habilita a saida A ou a saida B de acordo com o seletor.
    out_mux <= data_in_b when (selector_mux = '1') else data_in_a;
end architecture;