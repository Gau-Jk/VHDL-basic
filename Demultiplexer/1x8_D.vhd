library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX1_8 is
    Port (
        i : in STD_LOGIC;
        s : in STD_LOGIC_VECTOR (2 downto 0);
        y: out STD_LOGIC_VECTOR (7 downto 0)

    );
end MUX1_8;

architecture dataflow of MUX1_8 is
begin
y(0)<= (not s(2))and (not s(1)) and (not s(0))and i;
y(1)<=  (not s(2))and (not s(1))and s(0)and i;
y(2)<= (not s(2))and s(1) and (not s(0))and i;
y(3)<= (not s(2))and s(1)and s(0)and i;
y(4)<= s(2)and (not s(1))and (not s(0))and i;
y(5)<= s(2)and (not s(1))and s(0)and i;
y(6)<= s(2)and s(1) and (not s(0))and i;
y(7)<= s(2) and s(1) and s(0)and i;

end dataflow;


