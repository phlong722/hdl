library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplier is
    port (
        clk          : in std_logic;
        reset        : in std_logic;
        valid_in     : in std_logic;
        A_in         : in signed (7 downto 0);
        B_in         : in signed (7 downto 0);
        M_out        : out signed (15 downto 0);
        result_out   : out std_logic;
        done_mult    : out std_logic
    );
end multiplier;

architecture RTL of multiplier is

    signal count_reg : unsigned (3 downto 0);

    begin
        -- Multiplier process
        mul_proc :process(clk, reset)
        begin
            if (rising_edge(clk)) then
                if (reset = '0') then
                    M_out <= (others => '0');
                elsif (valid_in = '1') then
                    M_out <= A_in * B_in;
                else 
                     M_out <= (others => '0');
                end if;
            end if;
        end process mul_proc;
        
        -- Counting process
        count_proc : process(clk, reset)
        begin
            if (rising_edge(clk)) then
                if (reset = '0') then
                    count_reg <= (others => '0');
                elsif (valid_in = '1') then
                    count_reg <= count_reg + 1;
                    if (count_reg = "1010") then
                        count_reg <= (others => '0');
                    else
                        count_reg <= count_reg + 1;
                    end if;
                else 
                    count_reg <= (others => '0');
                end if;
            end if;
        end process count_proc;

        -- Result out signal process
        result_proc : process(clk, reset)
        begin
            if (rising_edge(clk)) then
                if (reset = '0') then
                    result_out <= '0';
                elsif (count_reg = "1010") then
                    result_out <= '1';
                else 
                    result_out <= '0';
                end if;
            end if;
        end process result_proc;

        done_mult <= '1' when count_reg = "1010" else '0';

    end RTL;