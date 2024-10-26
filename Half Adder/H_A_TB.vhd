library ieee;
use ieee.std_logic_1164.all;
entity H_A_tb is
end H_A_tb;

architecture TB of H_A_tb is
component HA_G is
 port(a,b: in std_logic;sum,carry:out std_logic);
end component;

signal S1,S2,S3,s4:std_logic;
begin
    n1: HA_G port map(s1,s2,s3);
    
    s3<= s1 xor s2;
    s4<= s2 and s1;
 
process is 
begin 
S1<='0';
S2<='0';
wait for 10 ns;
S1<='0';
S2<='1';
wait for 10 ns;
S1<='1';
S2<='0';
wait for 10 ns;
S1<='1';
S2<='1';
wait for 10 ns;
S1<='0';
S2<='0';
wait for 10 ns;
end process;
end TB;
