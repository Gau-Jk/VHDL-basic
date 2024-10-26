library ieee;
use ieee.std_logic_1164.all;

entity B4_X is
port (a,b:std_logic_vector(3 downto 0);p:out std_logic_vector(7 downto 0));
end entity;

architecture arc of B4_X is
component LA is
port(a,b:std_logic_vector(3 downto 0);cin:in std_logic;
sum:out std_logic_vector(3 downto 0);carry:out std_logic);
 end component;

component and_B is
port(a,b:in std_logic; c:out std_logic);
end component;

signal va1,va2,va3,vb1,vb2,vb3,vs1,vs2,vs3:std_logic_vector(3 downto 0);
signal c:std_logic_vector(2 downto 0);

begin 
vb1(3)<='0';


and1  : and_B port map(a(0),b(0),p(0));
and2  : and_B port map(a(1),b(0),vb1(0));
and3  : and_B port map(a(2),b(0),vb1(1));
and4  : and_B port map(a(3),b(0),vb1(2));
and5  : and_B port map(a(0),b(1),va1(0));
and6  : and_B port map(a(1),b(1),va1(1));
and7  : and_B port map(a(2),b(1),va1(2));
and8  : and_B port map(a(3),b(1),va1(3));
and9  : and_B port map(a(0),b(2),va2(0));
and10 : and_B port map(a(1),b(2),va2(1));
and11 : and_B port map(a(2),b(2),va2(2));
and12 : and_B port map(a(3),b(2),va2(3));
and13 : and_B port map(a(0),b(3),va3(0));
and14 : and_B port map(a(1),b(3),va3(1));
and15 : and_B port map(a(2),b(3),va3(2));
and16 : and_B port map(a(3),b(3),va3(3));


FA1: LA port map(va1,vb1,'0',vs1,c(0));
FA2: LA port map(va2,vb2,'0',vs2,c(1));
FA3: LA port map(va3,vb3,'0',vs3,c(2));


p(1)<= vs1(0);

vb2(0)<=vs1(1);
vb2(1)<=vs1(2);
vb2(2)<=vs1(3);
vb2(3)<=c(0);

p(2)<=vs2(0);

vb3(0)<=vs2(1);
vb3(1)<=vs2(2);
vb3(2)<=vs2(3);
vb3(3)<=c(1);

p(3)<=vs3(0);
p(4)<=vs3(1);
p(5)<=vs3(2);
p(6)<=vs3(3);
p(7)<=  c(2);


end arc;



 
