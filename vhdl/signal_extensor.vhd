library ieee;
use ieee.std_logic_1164.all;

entity signal_extensor is
    generic
    (
        data_length_in : natural  :=    16;
        data_length_out   : natural  :=    32
    );
    port
    (
        -- Input ports
        signal_externsor_in : in  std_logic_vector(data_length_in-1 downto 0);
        -- Output ports
        signal_externsor_out: out std_logic_vector(data_length_out-1 downto 0)
    );
end entity;

architecture rtl of signal_extensor is
begin
    process (signal_externsor_in) is
    begin
            if (signal_externsor_in(data_length_in-1) = '1') then
                signal_externsor_out <= (data_length_out-1 downto data_length_in => '1') & signal_externsor_in;
            else
                signal_externsor_out <= (data_length_out-1 downto data_length_in => '0') & signal_externsor_in;
            end if;
    end process;
end architecture;