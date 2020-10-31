library ieee;
use ieee.std_logic_1164.all;

entity shift_left_operator is
	generic (
		data_width : natural := 32
	);
	
	port (
		data_in : in std_logic_vector(data_width - 1 downto 0);
		data_out : out std_logic_vector(data_width - 1  downto 0)
	);
	
end entity;

architecture rtl of shift_left_operator is 

	signal shift : std_logic_vector(data_width - 1 downto 0);
	
begin 
shift (data_width - 1 downto 0) <= data_in (29 downto 0) & "00";
data_out <= shift;

end architecture;