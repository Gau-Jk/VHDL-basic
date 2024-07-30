library ieee;
use ieee.std_logic_1164.all;

entity norBTB is
end entity;

architecture tb of norBTB is
component norB is
port(a,b:in std_logic;c:out std_logiC);
end component;

signal a,b,c:std_logic;

begin
n1:norB port map(a,b,c);

process begin
a<='0';
b<='0';
wait for 10 ns;
a<='0';
b<='1';
wait for 10 ns;
a<='1';
b<='0';
wait for 10 ns;
a<='1';
b<='1';
wait for 10 ns;
end process; end tb;
