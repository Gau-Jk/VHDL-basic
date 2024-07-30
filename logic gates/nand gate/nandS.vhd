library ieee;
use ieee.std_logic_1164.all;

entity nandS is
port(a,b:in std_logic;c:out std_logiC);
end entity;

architecture struct of nandS is
component and_B is
port(a,b:in std_logic; c:out std_logic);
end component;

component inverter is  
    Port ( a : in STD_LOGIC;  
        f : out STD_LOGIC);  
end component;
signal t:std_logic;
begin

a1:and_B port map(a,b,t);
n1:inverter port map(t,c);

end struct;
