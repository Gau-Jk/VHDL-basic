library ieee;
use ieee.std_logic_1164.all;

entity norS is
port(a,b:in std_LOgiC;c:out std_logic);
end entity;

architecture struct of norS is
component or1 is
  port(a,b:in std_logic;o:out std_logic);
end component;

component inverter is  
    Port ( a : in STD_LOGIC;  
        f : out STD_LOGIC);  
 end component;

signal t:std_logic;
begin
o1:or1 port map(a,b,t);
n1:inverter port map(t,c);

end struct;
