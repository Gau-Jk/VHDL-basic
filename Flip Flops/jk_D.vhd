library ieee;
use ieee.std_logic_1164.all;

entity jk_D is
port( J,K,CLOCK,reset: in std_logic;
Q, QB: inout std_logic);
end jk_D;

architecture dataflow of jk_D is

signal s1,s2,s3,s4,s5:std_logic;


begin

s1<= not((not reset) and j and clock);
s2<= not(reset and k and clock) ;
s5<= (not reset) nand s1;
q<=s5;
qb<= s5 nand s2;


end dataflow;



