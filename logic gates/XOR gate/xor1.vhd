library ieee;
use ieee.std_logic_1164.all;
entity xor1 is
 port(a,b: in std_logic;n:out std_logic);
end xor1;

architecture dataflow of xor1 is

begin
    n<= (a xor b);
end dataflow;
    
