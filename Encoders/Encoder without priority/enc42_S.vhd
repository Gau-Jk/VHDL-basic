library ieee;
use ieee.std_logic_1164.all;

entity enc42_S is
 port(
 a : in STD_LOGIC_VECTOR(0 to 3);
 b : out STD_LOGIC_VECTOR(0 to 1)
 );
end enc42_S;

architecture strct of enc42_S is
component or3 is 
port(x,y:in std_LOgic;z:out std_logic);
end component;
signal o1,o2 :std_logic;

begin
  x1: or3 port map(a(2),a(3),o1);
  x2: or3 port map(a(1),a(3),o2);

b(0)<=o1;
b(1)<=o2;
end strct;

