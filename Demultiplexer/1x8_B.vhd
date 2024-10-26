library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX1_8 is
    Port (
        i : in STD_LOGIC;
        s : in STD_LOGIC_VECTOR (2 downto 0);
        y: out STD_LOGIC_VECTOR (7 downto 0)

    );
end MUX1_8;

architecture bhv of MUX1_8 is
begin
process(i,s)
begin

        if (s = "000") then
               y<="00000000";
               y(0)<=i;
        elsif (s = "001") then
               y<="00000000";
               y(1)<=i;
        elsif (s = "010") then
               y<="00000000";
               y(2)<=i;
        elsif (s = "011") then
               y<="00000000";
               y(3)<=i;
        elsif (s = "100") then
               y<="00000000";
               y(4)<=i;
        elsif (s = "101") then
               y<="00000000";
               y(5)<=i;
        elsif (s = "110") then
               y<="00000000";
               y(6)<=i;
        else
               y<="00000000";
               y(7)<=i;
        end if;
    end process;
end bhv;



