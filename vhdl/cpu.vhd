
library ieee;
use ieee.std_logic_1164.all;

entity cpu is
  generic ( data_length : natural := 32);
  port (
		clock: in STD_LOGIC;
		ula_out : out STD_LOGIC_VECTOR(data_length - 1 downto 0);
		control_points_pin: out STD_LOGIC_VECTOR(3 downto 0)
 );
end entity;

architecture rtl of cpu is
signal instruction : STD_LOGIC_VECTOR(data_length-1 downto 0);
signal control_points: STD_LOGIC_VECTOR(3 downto 0);
signal funct: STD_LOGIC_VECTOR (5 downto 0);

begin
control_points_pin <= control_points;

control_unit_rom : entity work.control_unit_rom   generic map (data_width => 4, address_width => 6)
          port map (address => funct, data_out => control_points);

data_flow : entity work.data_flow generic map(data_length => 32)
          port map (clock => clock, control_points => control_points, funct => funct, ula_out => ula_out);

		
end architecture;