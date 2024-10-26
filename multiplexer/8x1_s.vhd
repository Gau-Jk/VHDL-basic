library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX8_1S is
    Port (
        i : in STD_LOGIC_VECTOR (0 to 7);
        s : in STD_LOGIC_VECTOR (0 to 2);
        y : out STD_LOGIC
    );
end MUX8_1S;

architecture structure of MUX8_1S is
    component MUX81_IMPL
          Port (
        i : in STD_LOGIC_VECTOR (0 to 7);
        s : in STD_LOGIC_VECTOR (0 to 2);
        y : out STD_LOGIC
    );
    end component;

begin
    u1: MUX81_IMPL
        port map (i,s,y);
end structure;

