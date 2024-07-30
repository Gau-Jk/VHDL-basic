library ieee;
use ieee.std_logic_1164.all;

entity xorS_tb is
end entity;

architecture tb of xorS_tb is
component xorS is
port(a,b:in std_logic;c:out std_logic);
end component;

signal a,b,c:std_logic;

begin
x1: xorS port map(a,b,c);

process
begin
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

