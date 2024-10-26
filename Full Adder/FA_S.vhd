library ieee;
use ieee.std_logic_1164.all;

entity FA_S is
port(a,b,cin:in Std_logiC;sum,carry:out std_Logic);
end FA_S;

architecture struct of FA_S is

component xor3 is
port(a,b:in std_logic;n:out std_logic);
end component;


component OrB is
port(a,b:in std_logic ;c:out std_logic);
end component;

component and_B is
port(a,b:in std_logic; c:out std_logic);
end component;

signal s1,s2,s3  : std_logic;

begin 
x1: xor3 port map(a,b,s1);

x2: xor3 port map(cin,s1,sum); 

a1: and_B port map(s1,cin,s2);

a2: and_B port map(a,b,s3);

o1: OrB port map(s2,s3,carry);

end struct;
