library ieee;
use ieee.std_logic_1164.all;


entity p_enc_D is

Port ( 
i : in STD_LOGIC_vector(3 downto 0);
y:out std_logic_vector(0 to 1));
end p_enc_D ;

architecture Dataflow of p_enc_D  is
begin

y(0)<=i(2) or i(3);
y(1)<= (i(1)and(not i(2)))or i(3);
end Dataflow;

