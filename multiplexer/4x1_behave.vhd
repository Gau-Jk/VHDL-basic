library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX4_1B is
    Port (
        i : in STD_LOGIC_VECTOR (0 to 3);
        s : in STD_LOGIC_VECTOR (0 to 1);
        y : out STD_LOGIC
    );
end MUX4_1B;


architecture bhv of MUX4_1B is
begin
    process (i,s) is
    begin
        if (s = "00") then
            y <=  i(0);
        elsif (s = "01") then
            y <=  i(1);
        elsif (s = "10") then

            y <=  i(2);
        else
            y <=  i(3);
        end if;
    end process;
end bhv;
