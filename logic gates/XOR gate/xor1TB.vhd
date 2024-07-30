library ieee;
use ieee.std_logic_1164.all;
entity xor2_tb is 
end xor2_tb;
architecture dataflow of xor2_tb is 

component xor1 is
port(a,b:in std_logic;n:out std_logic);

end  component;


signal s1:std_logic;
signal s2:std_logic;
signal s3:std_logic;
begin
 x2: xor1 port map(s1,s2,s3);




process is
begin 
s1 <= '0';
s2 <= '0';

wait for 10 ns;
s1 <= '0';
s2 <= '1';

wait for 10 ns;
s1 <= '1';
s2 <= '0';

wait for 10 ns;
s1 <= '1';
s2 <= '1';

wait for 10 ns;
s1 <= '0';
s2 <= '0';

wait for 10 ns;
end process;
end dataflow;

