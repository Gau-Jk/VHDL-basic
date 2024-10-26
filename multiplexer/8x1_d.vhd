library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX8_1 is
    Port (
        i : in STD_LOGIC_VECTOR (7 downto 0);
        s : in STD_LOGIC_VECTOR (2 downto 0);
        y : out STD_LOGIC
    );
end MUX8_1;

architecture dataflow of MUX8_1 is
signal a0,a1,a2,a3,a4,a5,a6,a7:std_logic;
begin
a0<= i(0)and (not s(0)) and (not s(1)) and (not s(2));
a1<= i(1)and s(0) and (not s(1)) and (not s(2));
a2<= i(2)and (not s(0)) and s(1) and (not s(2));
a3<= i(3)and  s(0) and s(1) and (not s(2));
a4<= i(4)and (not s(0)) and (not s(1)) and s(2);
a5<= i(5)and s(0) and (not s(1)) and s(2);
a6<= i(6)and (not s(0))and s(1)and s(2);
a7<= i(7)and s(0) and s(1) aNd s(2);

y<= a0 or a1 or a2 or a3 or a4 or a5 or a6 or a7;
end dataflow;

