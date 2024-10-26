library ieee;
use ieee.std_logic_1164.all;

entity FA_B is
port(a,b,cin:in std_logic;sum,carry:out std_logic);
end FA_B;

architecture bhv of FA_B is
begin process (a,b,cin)

begin
if a='0'and b='0' and cin='0' then sum<='0';carry<='0';
elsif a='0'and b='0' and cin='1' then sum<='1';carry<='0';
elsif a='0'and b='1' and cin='0' then sum<='1';carry<='0';
elsif a='0'and b='1' and cin='1' then sum<='0';carry<='1';
elsif a='1'and b='0' and cin='0' then sum<='1';carry<='0';
elsif a='1'and b='0' and cin='1' then sum<='0';carry<='1';
elsif a='1'and b='1' and cin='0' then sum<='0';carry<='1';
elsif a='1'and b='1' and cin='1' then sum<='1';carry<='1';
end if;
end process;
end bhv;
