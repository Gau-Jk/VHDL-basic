library ieee;
use ieee.std_logic_1164.all;

entity H_A1 is
port(a,b:in std_logic;sum,carry:out std_logic);
end H_A1;

architecture struct of H_A1 is
component  xor1 is
port(c,d:in std_logic;e:out std_logic);
end component;

component and2 is 
port(f,g:in std_logic;h:out std_logic);
end component;

begin 
x1: xor1 port map(a,b,sum);
A2: and2 port map(a,b,carry);

end struct;
