
library ieee;
use ieee.std_logic_1164.all;

entity H_A1 is
port(a,b:in std_logic;sum,carry:out std_logic);
end H_A1;

architecture behave of H_A1 is 
begin
process (a,b)
begin
if a = '0' and b = '0' then sum <= '0'; carry <= '0';
elsif a = '0' and b = '1' then sum <= '1'; carry <= '0';
elsif a = '1' and b= '0' then sum <= '1'; carry <= '0';
elsif a = '1' and b= '1' then sum <= '0'; carry <= '1';
end if;
end process;
end behave;

