library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).

entity register_bank is
    generic
    (
        data_length        : natural := 32;
        register_address_length : natural := 5   --Resulta em 2^5=32 posicoes
    );
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
        clock        : in std_logic;
--
        address_a_rt    : in std_logic_vector((register_address_length-1) downto 0);
        address_b_rs    : in std_logic_vector((register_address_length-1) downto 0);
        address_c_rd    : in std_logic_vector((register_address_length-1) downto 0);
--
        data_to_write_c_rd    : in std_logic_vector((data_length-1) downto 0);
--
        write_c_rd        : in std_logic := '0';
        out_a          : out std_logic_vector((data_length -1) downto 0);
        out_b          : out std_logic_vector((data_length -1) downto 0)
    );
end entity;

architecture rtl of register_bank is

    subtype palavra_t is std_logic_vector((data_length-1) downto 0);
    type memoria_t is array(2**register_address_length-1 downto 0) of palavra_t;

    -- Declaracao dos registradores:
    shared variable registrador : memoria_t;

begin
    process(clock) is
    begin
        if (rising_edge(clock)) then
            if (write_c_rd = '1') then
                registrador(to_integer(unsigned(address_c_rd))) := data_to_write_c_rd;
            end if;
        end if;
    end process;

--    -- IF endereco = 0 : retorna ZERO
     process(all) is
     begin
         if (unsigned(address_a_rt) = 0) then
            out_a <= (others => '0');
         else
            out_a <= registrador(to_integer(unsigned(address_a_rt)));
         end if;
--         if (unsigned(address_b_rs) = 0) then
--            out_b <= (others => '0');
--         else
--            out_b <= registrador(to_integer(unsigned(address_b_rs)));
--        end if;
     end process;

--out_a <= "00000000000000000000000000000010";
out_b <= "00000000000000000000000000000100";

end architecture;