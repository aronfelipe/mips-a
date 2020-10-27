library ieee;
use ieee.std_logic_1164.all;

entity generic_register is
    generic (
	    data_length : natural := 32
    );
    port (
		 register_in : in std_logic_vector(data_length-1 downto 0);
		 register_out : out std_logic_vector(data_length-1 downto 0);
		 enable : in std_logic;
		 clock,reset : in std_logic
    );
end entity;

architecture rtl of generic_register is
begin
    -- In Altera devices, register signals have a set priority.
    -- The HDL design should reflect this priority.
    process(reset, clock)
    begin
        -- The asynchronous reset signal has the highest priority
        if (reset = '1') then
            register_out <= (others => '0');    -- Código reconfigurável.
        else
            -- At a clock edge, if asynchronous signals have not taken priority,
            -- respond to the appropriate synchronous signal.
            -- Check for synchronous reset, then synchronous load.
            -- If none of these takes precedence, update the register output
            -- to be the register input.
            if (rising_edge(clock)) then
                if (enable = '1') then
                        register_out <= register_in;
                end if;
            end if;
        end if;
    end process;
end architecture;