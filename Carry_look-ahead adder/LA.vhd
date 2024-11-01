library ieee;
use ieee.std_Logic_1164.all;

entity LA is
port(a,b:std_logic_vector(3 downto 0);cin:in std_logic;sum:out std_logic_vector(3 downto 0);carry:out std_logic);
end LA;

architecture arc of LA is
component F_A_cp is
port(a,b,cin:in std_logic;sum,cp,cg:out std_logic);
end component;

signal c1,c2,c3:std_logic;
signal cp,cg:std_logic_vector(3 downto 0);

begin
f1:F_A_cp port map(a(0),b(0),cin,sum(0),cp(0),cg(0));
f2:F_A_cp port map(a(1),b(1),c1,sum(1),cp(1),cg(1));
f3:F_A_cp port map(a(2),b(2),c2,sum(2),cp(2),cg(2));
f4:F_A_cp port map(a(3),b(3),c3,sum(3),cp(3),cg(3));

c1<=cg(0)   or  (cin and cp(0));
c2<=cg(1)   or  (cp(1)and cg(0))  or  (cin and cp(0));
c3<=cg(2)   or  (cp(2)and cg(1))  or  (cp(2)and cp(1)and cg(0))  or  (cp(2)and cp(1)and cp(0)and cin);
carry<=cg(3)or  (cp(3)and cg(2))  or  (cp(3)and cp(2)and cg(1))  or  (cp(3)and cp(2)and cp(1)and cg(0))  or  (cp(3)and cp(2)and cp(1)and cp(0)and cin);  

end arc;
