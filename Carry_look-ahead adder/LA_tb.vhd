library ieee;
use ieee.std_Logic_1164.all;

entity LA_tb is
end entity;

architecture tb of LA_tb is
component LA is
port(a,b:std_logic_vector(3 downto 0);cin:in std_logic;sum:out std_logic_vector(3 downto 0);carry:out std_logic);
end component;

signal a,b,sum:std_logic_vectoR(3 downto 0);
signal cin,carry:std_logic;

begin
l1:LA port map(a,b,cin,sum,carry);

process begin
a<="0001";
b<="0001";
cin<='0';
wait for 10 ns;
a<="0010";
b<="0001";
cin<='0';
wait for 10 ns;
a<="0011";
b<="0001";
cin<='0';
wait for 10 ns;
a<="0100";
b<="0001";
cin<='0';
wait for 10 ns;
a<="1111";
b<="1111";
cin<='1';
wait for 10 ns;
end process;
end tb;

