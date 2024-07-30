library ieee;
use ieee.std_logic_1164.all;

entity xorS is
port(a,b:in std_logic;c:out std_logic);
end entity;

architecture struct of xorS is
component OrB is
port(a,b:in std_logic ;c:out std_logic);
end component;

component and_B is
port(a,b:in std_logic; c:out std_logic);
end component;

component inverter is  
    Port ( a : in STD_LOGIC;  
        f : out STD_LOGIC);  
 end component; 
signal t,e,d,g:std_logic;

begin

n1:inverter port map(a,t);
n2:inverter port map(b,e);
a1:and_B port map(a,e,d);
a2:and_B port map(b,t,g);
o1:OrB port map(d,g,c);

end struct;




