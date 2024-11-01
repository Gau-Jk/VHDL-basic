-- T Flip-Flop using Behavioral Method
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity T_FF is
    Port (
        T, CLK, RST : in STD_LOGIC;
        Q, Qb      : inout STD_LOGIC
    );
end T_FF;

architecture Behavioral of T_FF is

begin
    process (CLK, RST)
    begin
        if RST = '1' then
            Q <= '0';
        elsif rising_edge(CLK) then
            if T = '1' then
                Q <= not Q;
            end if;
        end if;
    end process;
end Behavioral;

