library ieee;
use ieee.std_logic_1164.all;

entity xor3 is
port(a,b:in std_logic;n:out std_logic);
end xor3;

architecture behav of xor3 is
begin
 process (a,b)

begin 
if (a ='0' and b = '0' )  then n <= '0';
elsif (a ='1' and b = '1' ) then n <= '0';

else  n<= '1';
end if;
end process;

end behav;

