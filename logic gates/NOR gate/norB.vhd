library ieee;
use ieee.std_logic_1164.all;

entity norB is
port(a,b:in std_LOgiC;c:out std_logic);
end entity;

architecture bhv of norB is
begin
process(a,b) 
begin
if a='0' and b='0' then c<='1';
else c<='0';
end if;
end process;
end bhv;
