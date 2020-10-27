library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity adder is
    generic
    (
        data_length : natural := 32
    );
    port
    (
	 -- in_a is going to be one.
	 -- in_b is going to be the program counter.
        adder_in_a, adder_in_b: in std_logic_vector((data_length-1) downto 0);
        adder_out:  out std_logic_vector((data_length-1) downto 0)
    );
end entity;

architecture rtl of adder is
    begin
        adder_out <= std_logic_vector(unsigned(adder_in_a) + unsigned(adder_in_b));
end architecture;