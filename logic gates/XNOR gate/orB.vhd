library ieee;
use ieee.std_logic_1164.all;

entity OrB is
port(a,b:in std_logic ;c:out std_logic);
end OrB;

architecture behav of OrB is
begin
process(a,b)
begin
if a = '1' or b = '1' then c <= '1';

else c<= '0';
end if;
end process;
end behav;

