library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX4_1 is
    Port (
        i : in STD_LOGIC_VECTOR (0 to 3);
        s : in STD_LOGIC_VECTOR (0 to 1);
        y : out STD_LOGIC
    );
end MUX4_1;

architecture dataflow of MUX4_1 is
begin
    with s select
        y <= i(0) when "00",
             i(1) when "01",
             i(2) when "10",
             i(3) when others;
end dataflow;

