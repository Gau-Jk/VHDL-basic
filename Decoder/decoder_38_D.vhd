library ieee;
use ieee.std_logic_1164.all;

entity dec_38_D is
port(i:in std_logic_vector(2 downto 0);
     d:out std_logic_vector(7 downto 0));
end entity;

architecture dataflow of dec_38_D is
begin
d(0)<= (not i(0))and (not i(1))and (not i(2));
d(1)<= i(0)and (not i(1))and (not i(2));
d(2)<= (not i(0))and i(1)and (not i(2));
d(3)<= i(0)and i(1)and (not i(2));
d(4)<= (not i(0))and (not i(1))and i(2);
d(5)<= i(0)and (not i(1))and i(2);
d(6)<= (not i(0))and i(1)and i(2);
d(7)<= i(0)and i(2)and i(1);
end dataflow;

