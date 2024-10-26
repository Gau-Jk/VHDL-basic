library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX4_1S is
    Port (
        i : in STD_LOGIC_VECTOR (0 to 3);
        s : in STD_LOGIC_VECTOR (0 to 1);
        y : out STD_LOGIC
    );
end MUX4_1S;

architecture structure of MUX4_1S is
    component MUX41_IMPL
          Port (
        i : in STD_LOGIC_VECTOR (0 to 3);
        s : in STD_LOGIC_VECTOR (0 to 1);
        y : out STD_LOGIC
    );
    end component;

begin
    u1: MUX41_IMPL
        port map (i,s,y);
end structure;

