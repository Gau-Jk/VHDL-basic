library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX8_1B is
    Port (
        i : in STD_LOGIC_VECTOR (0 to 7);
        s : in STD_LOGIC_VECTOR (0 to 2);
        y : out STD_LOGIC
    );
end MUX8_1B;


architecture bhv of MUX8_1B is
begin
    process (i,s) is
    begin
        if (s = "000") then
            y <=  i(0);
        elsif (s = "001") then
            y <=  i(1);
        elsif (s = "010") then

            y <=  i(2);
        elsif (s = "011") then

            y <=  i(3);
        elsif (s = "100") then

            y <=  i(4);
        elsif (s = "101") then

            y <=  i(5);
        elsif (s = "110") then

            y <=  i(6);
        else
            y <=  i(7);
        end if;
    end process;
end bhv;
