library ieee;
use ieee.std_logic_1164.all;

entity nandB is
port(a,b:in std_logic;c:out std_logiC);
end nandB;

architecture bhv of nandB is
begin 
process(a,b) begin
if a='1'  and b='1' then c<='0';
else c<='1';
end if ;
end process;
end bhv;
